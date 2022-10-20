 tso_sw_fences`writer:
    sub    sp, sp, #0x80
    stp    x29, x30, [sp, #0x70]
    add    x29, sp, #0x70
    stur   x0, [x29, #-0x8]
    adrp   x8, 5
    ldr    w8, [x8, #0x4]
    cbz    w8, 0x1000037d4           ; <+112> at tso.cpp:49:15
    b      0x100003784               ; <+32> at tso.cpp
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
    b      0x1000037d4               ; <+112> at tso.cpp:49:15
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    stur   x0, [x29, #-0x28]
    b      0x1000037e0               ; <+124> at tso.cpp
    adrp   x8, 14
    ldrb   w8, [x8, #0xc4c]
    tbnz   w8, #0x0, 0x100003864     ; <+256> at tso.cpp:59:13
    b      0x1000037f0               ; <+140> at tso.cpp:52:15
    stur   xzr, [x29, #-0x30]
    b      0x1000037f8               ; <+148> at tso.cpp:52:22
    ldur   x8, [x29, #-0x30]
    mov    x9, #0x2710
    subs   x8, x8, x9
    b.hs   0x100003844               ; <+224> at tso.cpp
    b      0x10000380c               ; <+168> at tso.cpp:53:37
    ldur   x9, [x29, #-0x30]
    adrp   x8, 5
    add    x8, x8, #0xc              ; data
    add    x9, x8, x9, lsl #2
    mov    w8, #0x1
    stur   w8, [x29, #-0x34]
    ldur   w8, [x29, #-0x34]
    ldadd  w8, w8, [x9]
    str    w8, [sp, #0x38]
    b      0x100003834               ; <+208> at tso.cpp:52:56
    ldur   x8, [x29, #-0x30]
    add    x8, x8, #0x1
    stur   x8, [x29, #-0x30]
    b      0x1000037f8               ; <+148> at tso.cpp:52:22
    mov    w8, #0x1
    str    w8, [sp, #0x34]
    ldr    w8, [sp, #0x34]
    adrp   x9, 5
    add    x9, x9, #0x8              ; barrier
    ldaddl w8, w8, [x9]
    str    w8, [sp, #0x30]
    b      0x1000037e0               ; <+124> at tso.cpp
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    mov    x8, x0
    add    x0, sp, #0x28
    str    x8, [sp, #0x28]
    sub    x1, x29, #0x28
    bl     0x1000038c4               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    add    x1, sp, #0x18
    str    x0, [sp, #0x18]
    add    x0, sp, #0x20
    str    x0, [sp, #0x8]
    mov    x2, #0x0
    str    x2, [sp, #0x10]
    bl     0x10000391c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    ldr    x0, [sp, #0x8]
    bl     0x100003958               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    adrp   x0, 0
    add    x0, x0, #0xf69            ; "Set runtime %f\n"
    mov    x8, sp
    str    d0, [x8]
    bl     0x100003ee8               ; symbol stub for: printf
    ldr    x0, [sp, #0x10]
    ldp    x29, x30, [sp, #0x70]
    add    sp, sp, #0x80
    ret

 tso`reader:
    sub    sp, sp, #0x90
    stp    x29, x30, [sp, #0x80]
    add    x29, sp, #0x80
    stur   x0, [x29, #-0x8]
    adrp   x8, 5
    ldr    w8, [x8, #0x4]
    cbz    w8, 0x1000039e0           ; <+112>
    b      0x100003990               ; <+32>
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
    b      0x1000039e0               ; <+112>
    stur   wzr, [x29, #-0x20]
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    stur   x0, [x29, #-0x28]
    b      0x1000039f0               ; <+128>
    adrp   x8, 14
    ldrb   w8, [x8, #0xc4c]
    tbnz   w8, #0x0, 0x100003ae4     ; <+372>
    b      0x100003a00               ; <+144>
    stur   xzr, [x29, #-0x30]
    b      0x100003a08               ; <+152>
    ldur   x8, [x29, #-0x30]
    mov    x9, #0x270f
    subs   x8, x8, x9
    b.hs   0x100003a80               ; <+272>
    b      0x100003a1c               ; <+172>
    ldur   x10, [x29, #-0x30]
    adrp   x8, 5
    add    x8, x8, #0xc              ; data
    mov    x9, x8
    add    x9, x9, x10, lsl #2
    ldr    w9, [x9, #0x4]
    stur   w9, [x29, #-0x38]
    ldur   w9, [x29, #-0x38]
    stur   w9, [x29, #-0x34]
    ldur   x9, [x29, #-0x30]
    ldr    w8, [x8, x9, lsl #2]
    str    w8, [sp, #0x40]
    ldr    w8, [sp, #0x40]
    stur   w8, [x29, #-0x3c]
    ldur   w8, [x29, #-0x3c]
    ldur   w9, [x29, #-0x34]
    subs   w8, w8, w9
    b.hs   0x100003a6c               ; <+252>
    b      0x100003a68               ; <+248>
    b      0x100003a6c               ; <+252>
    b      0x100003a70               ; <+256>
    ldur   x8, [x29, #-0x30]
    add    x8, x8, #0x1
    stur   x8, [x29, #-0x30]
    b      0x100003a08               ; <+152>
    b      0x100003a84               ; <+276>
    ldur   w8, [x29, #-0x20]
    adrp   x9, 5
    add    x9, x9, #0x8              ; barrier
    ldar   w9, [x9]
    str    w9, [sp, #0x3c]
    ldr    w9, [sp, #0x3c]
    subs   w8, w8, w9
    b.ne   0x100003aac               ; <+316>
    b      0x100003aa8               ; <+312>
    b      0x100003a84               ; <+276>
    ldur   w8, [x29, #-0x20]
    add    w8, w8, #0x1
    stur   w8, [x29, #-0x20]
    ldur   w8, [x29, #-0x20]
    adrp   x9, 5
    ldr    w9, [x9]
    subs   w8, w8, w9
    b.lo   0x100003ae0               ; <+368>
    b      0x100003ad0               ; <+352>
    mov    w8, #0x1
    adrp   x9, 14
    strb   w8, [x9, #0xc4c]
    b      0x100003ae4               ; <+372>
    b      0x1000039f0               ; <+128>
    bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    mov    x8, x0
    add    x0, sp, #0x30
    str    x8, [sp, #0x30]
    sub    x1, x29, #0x28
    bl     0x1000038c4               ; std::__1::common_type<std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >::type std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > >(std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&, std::__1::chrono::time_point<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > const&)
    add    x1, sp, #0x20
    str    x0, [sp, #0x20]
    add    x0, sp, #0x28
    str    x0, [sp, #0x10]
    mov    x2, #0x0
    str    x2, [sp, #0x18]
    bl     0x10000391c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> >(std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > const&, std::__1::enable_if<(__no_overflow<std::__1::ratio<1l, 1000000000l>, std::__1::ratio<1l, 1l> >::value) && ((std::__1::integral_constant<bool, true>::value) || (((__no_overflow<std::__1::ratio<1l, 1000000000l>, std::__1::ratio<1l, 1l> >::type::den) == (1)) && (!(treat_as_floating_point<long long>::value)))), void>::type*)
    ldr    x0, [sp, #0x10]
    bl     0x100003958               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count() const
    adrp   x0, 0
    add    x0, x0, #0xf79            ; "Test runtime %f\n"
    mov    x8, sp
    str    d0, [x8]
    bl     0x100003ee8               ; symbol stub for: printf
    ldr    x0, [sp, #0x18]
    ldp    x29, x30, [sp, #0x80]
    add    sp, sp, #0x90
    ret
