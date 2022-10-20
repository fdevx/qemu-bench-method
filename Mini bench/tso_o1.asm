tso`writer:
    0x1000039e4 <+0>:   sub    sp, sp, #0x40
    0x1000039e8 <+4>:   stp    x29, x30, [sp, #0x30]
    0x1000039ec <+8>:   add    x29, sp, #0x30
->  0x1000039f0 <+12>:  nop    
    0x1000039f4 <+16>:  ldr    w8, 0x100008004           ; enable_tso
    0x1000039f8 <+20>:  cbz    w8, 0x100003a38           ; <+84> at tso.cpp:49:15
    0x1000039fc <+24>:  mov    w8, #0x1
    0x100003a00 <+28>:  stur   w8, [x29, #-0x10]
    0x100003a04 <+32>:  mov    w8, #0x4
    0x100003a08 <+36>:  stur   x8, [x29, #-0x8]
    0x100003a0c <+40>:  adr    x0, #0x52c                ; "kern.tso_enable"
    0x100003a10 <+44>:  nop    
    0x100003a14 <+48>:  sub    x2, x29, #0x8
    0x100003a18 <+52>:  sub    x3, x29, #0x10
    0x100003a1c <+56>:  mov    x1, #0x0
    0x100003a20 <+60>:  mov    w4, #0x4
    0x100003a24 <+64>:  bl     0x100003f2c               ; symbol stub for: sysctlbyname
    0x100003a28 <+68>:  str    x0, [sp]
    0x100003a2c <+72>:  adr    x0, #0x51c                ; "TSO: %d\n"
    0x100003a30 <+76>:  nop    
    0x100003a34 <+80>:  bl     0x100003ed8               ; symbol stub for: printf
    0x100003a38 <+84>:  bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003a3c <+88>:  stur   x0, [x29, #-0x8]
    0x100003a40 <+92>:  adrp   x8, 14
    0x100003a44 <+96>:  ldrb   w9, [x8, #0xc4c]
    0x100003a48 <+100>: cbnz   w9, 0x100003a8c           ; <+168> at tso.cpp:60:13
    0x100003a4c <+104>: mov    x9, #0x0
    0x100003a50 <+108>: adr    x10, #0x45bc              ; data
    0x100003a54 <+112>: nop    
    0x100003a58 <+116>: mov    w11, #0x1
    0x100003a5c <+120>: mov    w12, #0x2710
    0x100003a60 <+124>: adr    x13, #0x45a8              ; barrier
    0x100003a64 <+128>: nop    
    0x100003a68 <+132>: add    x14, x10, x9, lsl #2
    0x100003a6c <+136>: ldadd  w11, w14, [x14]
    0x100003a70 <+140>: add    x9, x9, #0x1
    0x100003a74 <+144>: cmp    x9, x12
    0x100003a78 <+148>: b.ne   0x100003a68               ; <+132> at tso.cpp:53:35
    0x100003a7c <+152>: mov    x9, #0x0
    0x100003a80 <+156>: ldaddl w11, w14, [x13]
    0x100003a84 <+160>: ldrb   w14, [x8, #0xc4c]
    0x100003a88 <+164>: cbz    w14, 0x100003a68          ; <+132> at tso.cpp:53:35
    0x100003a8c <+168>: bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003a90 <+172>: stur   x0, [x29, #-0x10]
    0x100003a94 <+176>: sub    x0, x29, #0x10
    0x100003a98 <+180>: sub    x1, x29, #0x8
    0x100003a9c <+184>: bl     0x100003ad8               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003aa0 <+188>: str    x0, [sp, #0x10]
    0x100003aa4 <+192>: add    x0, sp, #0x18
    0x100003aa8 <+196>: add    x1, sp, #0x10
    0x100003aac <+200>: bl     0x100003b1c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003ab0 <+204>: add    x0, sp, #0x18
    0x100003ab4 <+208>: bl     0x100003b30               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099:75
    0x100003ab8 <+212>: str    d0, [sp]
    0x100003abc <+216>: adr    x0, #0x495                ; "Set runtime %f\n"
    0x100003ac0 <+220>: nop    
    0x100003ac4 <+224>: bl     0x100003ed8               ; symbol stub for: printf
    0x100003ac8 <+228>: mov    x0, #0x0
    0x100003acc <+232>: ldp    x29, x30, [sp, #0x30]
    0x100003ad0 <+236>: add    sp, sp, #0x40
    0x100003ad4 <+240>: ret
    
    
tso`reader:
    0x100003b38 <+0>:   sub    sp, sp, #0x40
    0x100003b3c <+4>:   stp    x29, x30, [sp, #0x30]
    0x100003b40 <+8>:   add    x29, sp, #0x30
->  0x100003b44 <+12>:  nop    
    0x100003b48 <+16>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003b4c <+20>:  cbz    w8, 0x100003b8c           ; <+84> at tso.cpp:81:15
    0x100003b50 <+24>:  mov    w8, #0x1
    0x100003b54 <+28>:  stur   w8, [x29, #-0x10]
    0x100003b58 <+32>:  mov    w8, #0x4
    0x100003b5c <+36>:  stur   x8, [x29, #-0x8]
    0x100003b60 <+40>:  adr    x0, #0x3d8                ; "kern.tso_enable"
    0x100003b64 <+44>:  nop    
    0x100003b68 <+48>:  sub    x2, x29, #0x8
    0x100003b6c <+52>:  sub    x3, x29, #0x10
    0x100003b70 <+56>:  mov    x1, #0x0
    0x100003b74 <+60>:  mov    w4, #0x4
    0x100003b78 <+64>:  bl     0x100003f2c               ; symbol stub for: sysctlbyname
    0x100003b7c <+68>:  str    x0, [sp]
    0x100003b80 <+72>:  adr    x0, #0x3c8                ; "TSO: %d\n"
    0x100003b84 <+76>:  nop    
    0x100003b88 <+80>:  bl     0x100003ed8               ; symbol stub for: printf
    0x100003b8c <+84>:  bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003b90 <+88>:  mov    w8, #0x0
    0x100003b94 <+92>:  stur   x0, [x29, #-0x8]
    0x100003b98 <+96>:  adrp   x9, 14
    0x100003b9c <+100>: adr    x10, #0x4474              ; data + 4
    0x100003ba0 <+104>: nop    
    0x100003ba4 <+108>: adr    x11, #0x4464              ; barrier
    0x100003ba8 <+112>: nop    
    0x100003bac <+116>: adrp   x12, 5
    0x100003bb0 <+120>: ldrb   w13, [x9, #0xc4c]
    0x100003bb4 <+124>: cbnz   w13, 0x100003bf8          ; <+192> at tso.cpp:112:13
    0x100003bb8 <+128>: mov    x13, x10
    0x100003bbc <+132>: mov    w14, #0x270f
    0x100003bc0 <+136>: ldr    wzr, [x13]
    0x100003bc4 <+140>: ldur   wzr, [x13, #-0x4]
    0x100003bc8 <+144>: add    x13, x13, #0x4
    0x100003bcc <+148>: subs   x14, x14, #0x1
    0x100003bd0 <+152>: b.ne   0x100003bc0               ; <+136> at tso.cpp:84:26
    0x100003bd4 <+156>: ldapr  w13, [x11]
    0x100003bd8 <+160>: cmp    w8, w13
    0x100003bdc <+164>: b.eq   0x100003bd4               ; <+156> at tso.cpp:94:19
    0x100003be0 <+168>: add    w8, w8, #0x1
    0x100003be4 <+172>: ldr    w13, [x12]
    0x100003be8 <+176>: cmp    w8, w13
    0x100003bec <+180>: b.lo   0x100003bb0               ; <+120> at tso.cpp:82:10
    0x100003bf0 <+184>: mov    w8, #0x1
    0x100003bf4 <+188>: strb   w8, [x9, #0xc4c]
    0x100003bf8 <+192>: bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003bfc <+196>: stur   x0, [x29, #-0x10]
    0x100003c00 <+200>: sub    x0, x29, #0x10
    0x100003c04 <+204>: sub    x1, x29, #0x8
    0x100003c08 <+208>: bl     0x100003ad8               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003c0c <+212>: str    x0, [sp, #0x10]
    0x100003c10 <+216>: add    x0, sp, #0x18
    0x100003c14 <+220>: add    x1, sp, #0x10
    0x100003c18 <+224>: bl     0x100003b1c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003c1c <+228>: add    x0, sp, #0x18
    0x100003c20 <+232>: bl     0x100003b30               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099:75
    0x100003c24 <+236>: str    d0, [sp]
    0x100003c28 <+240>: adr    x0, #0x339                ; "Test runtime %f\n"
    0x100003c2c <+244>: nop    
    0x100003c30 <+248>: bl     0x100003ed8               ; symbol stub for: printf
    0x100003c34 <+252>: mov    x0, #0x0
    0x100003c38 <+256>: ldp    x29, x30, [sp, #0x30]
    0x100003c3c <+260>: add    sp, sp, #0x40
    0x100003c40 <+264>: ret 
