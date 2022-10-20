#!/bin/bash
a2a_path="/test/a2a-benchmarks"
benchmarks_root="/test/benchmarks-root"
parsec_path="$benchmarks_root/parsec-3.0-bins"

pip_url="https://bootstrap.pypa.io/get-pip.py"
pip_sha256="ba3ab8267d91fd41c58dbce08f76db99f747f716d85ce1865813842bb035524d"

a2a_benchmarks_url="https://codeload.github.com/rgouicem/a2a-benchmarks/zip/refs/heads/main"
a2a_benchmarks_sha256="f86e5b4dd60455b8efdc525ba9e2086bbc756f4c156bd502e0b9c44d28e13391"

parsec_url="https://nextcloud.in.tum.de/index.php/s/stXAy47PJjrmbc2/download/parsec-3.0-bins.tar.xz"
parsec_sha256="90e7b64be7b68a18fd15afbf192ea0d291a0d9d220f80783c5ab5a47a113bea0"


function check_for() {
    echo -n "Checking for $1..."

    shift
    if "$@" &> /dev/null; then
        echo -e ' \e[0;1;2;38;5;46m✔\e[0m'
        return 0
    else
        echo -e ' \e[0;1;2;91m✗\e[0m'
        return 1
    fi
}

function test_checksum() {
    local file_to_test=$1
    local sha256_hash=$2
    
    echo "$sha256_hash $file_to_test" | sha256sum --check --status
    return $?
}

function download_and_check() {
    local remote_url=$1
    local sha256_hash=$2
    local local_output_file=$3
    
    echo "Downloading from $remote_url..."
    
    tmpfile=$(mktemp ./test-drive-init.tmp.download.XXXXXX)
    if ! curl --progress-bar "$remote_url" --output "$tmpfile"
    then
        return 1
    fi
    
    if test_checksum "$tmpfile" "$sha256_hash"
    then
        mv "$tmpfile" "$local_output_file"
        return 0
    else
        echo "Checksum does not match!"
        rm "$tmpfile"
        return 1
    fi
}

function pip_install() {
    #just in case add pip install to path
    export PATH=$PATH:~/.local/bin/
    

    if check_for "pip" command -v pip
    then
        # pip already installed nothing to do
        return 0
    fi
    
    # pip not found - install pip
    echo "Installing Pip..."
    if ! download_and_check "$pip_url" "$pip_sha256" "/tmp/get-pip.py"
    then
            echo "Error installing pip!"
            return 1
    fi
    
    python "/tmp/get-pip.py"
    rm "/tmp/get-pip.py"
}


function pandas_install() {
    # install pandas
    if check_for "pandas" python -c "import pandas"
    then
        # pandas already installed nothing to do
        return 0
    fi
    
    
    # No pandas installed try to install it
    if ! pip_install; then
        echo "No pip - skipping pandas install"
        return 1
    fi
    
    echo "Installing pandas..."
    pip install pandas
}

function a2a_benchmarks_setup() {
    if check_for "a2a benchmarks directory" \[ -d "$a2a_path" \]
    then
        echo "a2a benchmarks directory found - skipping"
        return 0
    fi
    
    if ! download_and_check "$a2a_benchmarks_url" "$a2a_benchmarks_sha256" "/tmp/a2a.zip"
    then
            echo "Error downloading a2a benchmarks!"
            return 1
    fi
    
    ./unzip "/tmp/a2a.zip" -d "./"
    rm "/tmp/a2a.zip"
    mv "./a2a-benchmarks-main" "$a2a_path"
    
    echo "Setting up minimal config..."
    sed -i "s=ABSOLUTE_PATH_TO_PARSEC_DIR=$parsec_path=" "$a2a_path/config"
}

function parsec_setup() {
    local parsec_archive="$benchmarks_root/parsec-3.0-bins.tar.xz"

    
    if check_for "PARSEC directory" \[ -d "$parsec_path" \]
    then
        # PARSEC found nothing to do
        echo "Parsec directory found - skipping"
        return 0
    fi
   
    # no parsec directory - download it
    mkdir -p $parsec_path
    
    if ! test_checksum "$parsec_archive" "$parsec_sha256"
    then
        # PARSEC archive not found or checksum doesnt match - just download it
        rm "$parsec_archive"
        echo "Downloading PARSEC"
        if ! download_and_check "$parsec_url" "$parsec_sha256" "$parsec_archive"
        then
            echo "Error downloading PARSEC"
            return 1
        fi
    fi
    
    echo "Extracting PARSEC..."
    if tar xf "$parsec_archive" -C "$benchmarks_root"
    then
        echo "PARSEC extraction successfull!"
        rm "$parsec_archive"
    else
        echo "Failed to extract PARSEC"
    fi
}

echo "NOTICE:"
echo "This script is used to download benchmarks and utilities so they dont need to be bundeled with this qcow2 drive."
echo "This script only works with the expected file structure of the drive."
echo ""

if ! check_for "Test drive" \[ -d "/test" \]
then
    echo "Unexpected directory structure! No \"/test\" directory present!"
    echo "Exiting to prevent unexpected behaviour"
    exit 1
fi

cd /test/


pandas_install
a2a_benchmarks_setup
parsec_setup

