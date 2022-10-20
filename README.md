#

## QEMU Builds / Flavours
In order to create all the different qemu builds it is neccessary to check out the [modified QEMU version](https://github.com/fdevx/qemu/commit/c9583d0cbdd96e884efd8be5cbaf6cc521fbf785) at the commit c9583d0.
After that you have to adapt the file `tcg-target.h` located in the folder `tcg/aarch64/`.

```C
17  //#define FENCES_CONST
18  // fence type: 0 - none; 1 - normal; 2 - tso (without fences)
19  #define FENCE_TYPE 0
```
By changing the preprocessor definitions in lines 17/19 it is possible to create the 6 different build versions/flavours used in my Bachelor thesis.
To enable (QEMU) compile time fences the FENCES_CONST macro needs to be defined,
the different fence types (SW/HW/No Fences) can be selected by chaging the value of the FENCE_TYPE macro.

Naturally you need to compile QEMU again after each change and don't forget to copy the `qemu-system-x86_64` executeable and rename it.
The following table maps the preprocessor definition values to the names used in the thesis.

| Name                               | Fence type (FENCE_TYPE) | Const? (FENCES_CONST) |
| No Fences [incorrect] compile time | 0                       | yes                   |
| No Fences [incorrect] runtime      | 0                       | no                    |
| Software/SW Fences compile time    | 1                       | yes                   |
| Software/SW Fences run time        | 1                       | no                    |
| Hardware/HW Fences compile time    | 2                       | yes                   |
| Hardware/HW Fences runtime         | 2                       | no                    |

## Setting up the virtual machine
The virtual machine requires 3 hard drives to reduce the amount of data that needs to be uploaded or downloaded by me to and from the Mac M1.
1. Arch Linux virtual machine imgage available on their [GitLab instance](https://gitlab.archlinux.org/archlinux/arch-boxes/-/jobs/95551/artifacts/browse/output)
2. A qcow2 drive (`test_drive.qcow2`) with variable size and space for at least 8GB
3. Another qcow2 drive (`test_results.qcow2`) with variable size and space for ~1GB

The first hardrive contains a version of Arch Linux which is already installed on a virtual hardrive.
The version used by me is no longer available for download but a newer version shouldn't impact the benchmark results at all.

The second and thrid hard drives contain a single partition each spanning the entire virtual drive.
While the thrid drive is designed to store the benchmark results the second drive contains the tools necessary to execute the benchmark suite while maintining a small footprint for faster uploading.
All the contents of the second drive are stored in the folder `Test drive` of this repository. Nothe that the `Test drive` contains a binray of `unzip` at the root level which could not be uploaded to github.
The inner workings of this second drive are explained at a later time in the `Running benchmarks` section.

## Starting the virtual machine
In order to run the cirtual machine with different QEMU build versions/flavours I used the following command
and changed the executeable `qemu-system-x86_64` to whichever build I needed at the time.

```bash
./qemu-system-x86_64 \
    -m 4096 --accel tcg,thread=multi -smp 4 \
    -hda ~/test_system/Arch-Linux-x86_64-basic-20220625.63946.qcow2 \
    -hdb ~/test_results.qcow2 \
    -hdc ~/test_drive.qcow2 \
    -vnc :23
```

This will start the virtual machine and make its display output available on port `5923`.

## Running benchmarks
### Mounting virtual hard drives
After the virtual machine is up and running the first thing on the todo list is to mount the `Test drive` at `/test/` and the `Test result drive` at `/result`.
If the previously provided command was used to start the VM this will mount the `Test drive` and simplify the mounting process in the future:

```bash
sudo mkdir /test
sudo mount /dev/sdc1 /test
cp /test/mountTestDrive.sh ./
./mountTestDrive.sh /dev/sdc1
```

Now both drives are mounted at the required locations and in the future it will be enough to call `./mountTestDrive.sh /dev/sdc1` to mount both drives.

### Downloading dependencies
This only needs to be done once and if `Test drive` gets replaced.
For whatever reason I was unable to use the arch linux packagemanager and I had to create a script that installs everything by using different methods.
The script `./init.sh` takes care of the dependencies by downloading them and comparing their sha256 hash to the one hardcoded in the srcipt.
This means it might be neccessary to either update the known sha256 in the `init.sh` file or remove this feature.
After the `init.sh` sript has done its work the PARSEC benchmark suite and the [a2a-becnhmarks](https://github.com/rgouicem/a2a-benchmarks) tool are available.

### Starting a becnhmark run
To start a run simply call `./run_benchmarks.sh`.
This script will ask you for a prefix which should contain information about the current QEMU build/flavour like `No Fences compiletime`,
the number of iterations and threads that should be done as well as the dataset that should be used for the benchmarks.
Posible values for the dataset are `simlarge`,`simmedium`,`simsmall` others may available or not present depending on the benchmark.
Also the srcipt tries to run all known PARSEC becnhmarks but not all of them are available in this build of the PARSEC benchmark suite.

