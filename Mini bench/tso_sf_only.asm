 tso_sw_fences`writer:
    sub    sp, sp, #0x80
    stp    x29, x30, [sp, #0x70]
    add    x29, sp, #0x70
    stur   x0, [x29, #-0x8]
    adrp   x8, 5
    ldr    w8, [x8, #0x4]
    cbz    w8, 0x1000037cc           ; <+112> at tso.cpp:49:15
    b      0x10000377c               ; <+32> at tso.cpp
    sub    x3, x29, #0xc
    mov    w8, #0x1
    stur   w8, [x29, #-0xc]
    sub    x2, x29, #0x18
    mov    x8, #0x4
    stur   x8, [x29, #-0x18]
    ldur   x4, [x29, #-0x18]
    adrp   x0, 0
    add    x0, x0, #0xf50            ; "kern.tso_enable"
    mov    x1, #0x0
    bl     0x100003f3c               ; symbol stub for: sysctlbyname
    stur   w0, [x29, #-0x1c]
    ldur   w9, [x29, #-0x1c]
    mov    x8, x9
    adrp   x0, 0
    add    x0, x0, #0xf60            ; "TSO: %d\n"
    mov    x9, sp
    str    x8, [x9]
    bl     0x100003ee8               ; symbol stub for: printf
    b      0x1000037cc               ; <+112> at tso.cpp:49:15
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    stur   x0, [x29, #-0x28]
    b      0x1000037d8               ; <+124> at tso.cpp
    adrp   x8, 14
    ldrb   w8, [x8, #0xc4c]
    tbnz   w8, #0x0, 0x100003860     ; <+260> at tso.cpp:60:13
    b      0x1000037e8               ; <+140> at tso.cpp:52:15
    stur   xzr, [x29, #-0x30]
    b      0x1000037f0               ; <+148> at tso.cpp:52:22
    ldur   x8, [x29, #-0x30]
    mov    x9, #0x2710
    subs   x8, x8, x9
    b.hs   0x100003840               ; <+228> at tso.cpp
    b      0x100003804               ; <+168> at tso.cpp:53:37
    ldur   x9, [x29, #-0x30]
    adrp   x8, 5
    add    x8, x8, #0xc              ; data
    add    x9, x8, x9, lsl #2
    mov    w8, #0x1
    stur   w8, [x29, #-0x34]
    ldur   w8, [x29, #-0x34]
    ldadd  w8, w8, [x9]
    str    w8, [sp, #0x38]
    dmb    ishld
    b      0x100003830               ; <+212> at tso.cpp:52:56
    ldur   x8, [x29, #-0x30]
    add    x8, x8, #0x1
    stur   x8, [x29, #-0x30]
    b      0x1000037f0               ; <+148> at tso.cpp:52:22
    mov    w8, #0x1
    str    w8, [sp, #0x34]
    ldr    w8, [sp, #0x34]
    adrp   x9, 5
    add    x9, x9, #0x8              ; barrier
    ldaddl w8, w8, [x9]
    str    w8, [sp, #0x30]
    b      0x1000037d8               ; <+124> at tso.cpp
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    mov    x8, x0
    add    x0, sp, #0x28
    str    x8, [sp, #0x28]
    sub    x1, x29, #0x28
    bl     0x1000038c0               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    add    x1, sp, #0x18
    str    x0, [sp, #0x18]
    add    x0, sp, #0x20
    str    x0, [sp, #0x8]
    mov    x2, #0x0
    str    x2, [sp, #0x10]
    bl     0x100003918               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    ldr    x0, [sp, #0x8]
    bl     0x100003954               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    adrp   x0, 0
    add    x0, x0, #0xf69            ; "Set runtime %f\n"
    mov    x8, sp
    str    d0, [x8]
    bl     0x100003ee8               ; symbol stub for: printf
    ldr    x0, [sp, #0x10]
    ldp    x29, x30, [sp, #0x70]
    add    sp, sp, #0x80
    ret

 tso_sw_fences`reader:
    sub    sp, sp, #0x90
    stp    x29, x30, [sp, #0x80]
    add    x29, sp, #0x80
    stur   x0, [x29, #-0x8]
    adrp   x8, 5
    ldr    w8, [x8, #0x4]
    cbz    w8, 0x1000039dc           ; <+112> at tso.cpp:79:15
    b      0x10000398c               ; <+32> at tso.cpp
    sub    x3, x29, #0xc
    mov    w8, #0x1
    stur   w8, [x29, #-0xc]
    sub    x2, x29, #0x18
    mov    x8, #0x4
    stur   x8, [x29, #-0x18]
    ldur   x4, [x29, #-0x18]
    adrp   x0, 0
    add    x0, x0, #0xf50            ; "kern.tso_enable"
    mov    x1, #0x0
    bl     0x100003f3c               ; symbol stub for: sysctlbyname
    stur   w0, [x29, #-0x1c]
    ldur   w9, [x29, #-0x1c]
    mov    x8, x9
    adrp   x0, 0
    add    x0, x0, #0xf60            ; "TSO: %d\n"
    mov    x9, sp
    str    x8, [x9]
    bl     0x100003ee8               ; symbol stub for: printf
    b      0x1000039dc               ; <+112> at tso.cpp:79:15
    stur   wzr, [x29, #-0x20]
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    stur   x0, [x29, #-0x28]
    b      0x1000039ec               ; <+128> at tso.cpp
    adrp   x8, 14
    ldrb   w8, [x8, #0xc4c]
    tbnz   w8, #0x0, 0x100003ae4     ; <+376> at tso.cpp:112:13
    b      0x1000039fc               ; <+144> at tso.cpp:83:15
    stur   xzr, [x29, #-0x30]
    b      0x100003a04               ; <+152> at tso.cpp:83:22
    ldur   x8, [x29, #-0x30]
    mov    x9, #0x270f
    subs   x8, x8, x9
    b.hs   0x100003a80               ; <+276> at tso.cpp:94:3
    b      0x100003a18               ; <+172> at tso.cpp:84:54
    ldur   x10, [x29, #-0x30]
    adrp   x8, 5
    add    x8, x8, #0xc              ; data
    mov    x9, x8
    add    x9, x9, x10, lsl #2
    ldr    w9, [x9, #0x4]
    stur   w9, [x29, #-0x38]
    ldur   w9, [x29, #-0x38]
    stur   w9, [x29, #-0x34]
    dmb    ishld
    ldur   x9, [x29, #-0x30]
    ldr    w8, [x8, x9, lsl #2]
    str    w8, [sp, #0x40]
    ldr    w8, [sp, #0x40]
    stur   w8, [x29, #-0x3c]
    ldur   w8, [x29, #-0x3c]
    ldur   w9, [x29, #-0x34]
    subs   w8, w8, w9
    b.hs   0x100003a6c               ; <+256> at tso.cpp:92:3
    b      0x100003a68               ; <+252> at tso.cpp:91:4
    b      0x100003a6c               ; <+256> at tso.cpp:92:3
    b      0x100003a70               ; <+260> at tso.cpp:83:60
    ldur   x8, [x29, #-0x30]
    add    x8, x8, #0x1
    stur   x8, [x29, #-0x30]
    b      0x100003a04               ; <+152> at tso.cpp:83:22
    b      0x100003a84               ; <+280> at tso.cpp:94:10
    ldur   w8, [x29, #-0x20]
    adrp   x9, 5
    add    x9, x9, #0x8              ; barrier
    ldar   w9, [x9]
    str    w9, [sp, #0x3c]
    ldr    w9, [sp, #0x3c]
    subs   w8, w8, w9
    b.ne   0x100003aac               ; <+320> at tso.cpp:96:3
    b      0x100003aa8               ; <+316> at tso.cpp:94:3
    b      0x100003a84               ; <+280> at tso.cpp:94:10
    ldur   w8, [x29, #-0x20]
    add    w8, w8, #0x1
    stur   w8, [x29, #-0x20]
    ldur   w8, [x29, #-0x20]
    adrp   x9, 5
    ldr    w9, [x9]
    subs   w8, w8, w9
    b.lo   0x100003ae0               ; <+372> at tso.cpp:82:2
    b      0x100003ad0               ; <+356> at tso.cpp
    mov    w8, #0x1
    adrp   x9, 14
    strb   w8, [x9, #0xc4c]
    b      0x100003ae4               ; <+376> at tso.cpp:112:13
    b      0x1000039ec               ; <+128> at tso.cpp
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    mov    x8, x0
    add    x0, sp, #0x30
    str    x8, [sp, #0x30]
    sub    x1, x29, #0x28
    bl     0x1000038c0               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    add    x1, sp, #0x20
    str    x0, [sp, #0x20]
    add    x0, sp, #0x28
    str    x0, [sp, #0x10]
    mov    x2, #0x0
    str    x2, [sp, #0x18]
    bl     0x100003918               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    ldr    x0, [sp, #0x10]
    bl     0x100003954               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    adrp   x0, 0
    add    x0, x0, #0xf79            ; "Test runtime %f\n"
    mov    x8, sp
    str    d0, [x8]
    bl     0x100003ee8               ; symbol stub for: printf
    ldr    x0, [sp, #0x18]
    ldp    x29, x30, [sp, #0x80]
    add    sp, sp, #0x90
    ret 
