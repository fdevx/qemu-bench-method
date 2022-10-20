tso_sf`writer:
    0x1000039dc <+0>:   sub    sp, sp, #0x40
    0x1000039e0 <+4>:   stp    x29, x30, [sp, #0x30]
    0x1000039e4 <+8>:   add    x29, sp, #0x30
->  0x1000039e8 <+12>:  nop    
    0x1000039ec <+16>:  ldr    w8, 0x100008004           ; enable_tso
    0x1000039f0 <+20>:  cbz    w8, 0x100003a30           ; <+84> at tso.cpp:49:15
    0x1000039f4 <+24>:  mov    w8, #0x1
    0x1000039f8 <+28>:  stur   w8, [x29, #-0x10]
    0x1000039fc <+32>:  mov    w8, #0x4
    0x100003a00 <+36>:  stur   x8, [x29, #-0x8]
    0x100003a04 <+40>:  adr    x0, #0x534                ; "kern.tso_enable"
    0x100003a08 <+44>:  nop    
    0x100003a0c <+48>:  sub    x2, x29, #0x8
    0x100003a10 <+52>:  sub    x3, x29, #0x10
    0x100003a14 <+56>:  mov    x1, #0x0
    0x100003a18 <+60>:  mov    w4, #0x4
    0x100003a1c <+64>:  bl     0x100003f2c               ; symbol stub for: sysctlbyname
    0x100003a20 <+68>:  str    x0, [sp]
    0x100003a24 <+72>:  adr    x0, #0x524                ; "TSO: %d\n"
    0x100003a28 <+76>:  nop    
    0x100003a2c <+80>:  bl     0x100003ed8               ; symbol stub for: printf
    0x100003a30 <+84>:  bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003a34 <+88>:  stur   x0, [x29, #-0x8]
    0x100003a38 <+92>:  adrp   x8, 14
    0x100003a3c <+96>:  ldrb   w9, [x8, #0xc4c]
    0x100003a40 <+100>: cbnz   w9, 0x100003a88           ; <+172> at tso.cpp:60:13
    0x100003a44 <+104>: mov    x9, #0x0
    0x100003a48 <+108>: adr    x10, #0x45c4              ; data
    0x100003a4c <+112>: nop    
    0x100003a50 <+116>: mov    w11, #0x1
    0x100003a54 <+120>: mov    w12, #0x2710
    0x100003a58 <+124>: adr    x13, #0x45b0              ; barrier
    0x100003a5c <+128>: nop    
    0x100003a60 <+132>: add    x14, x10, x9, lsl #2
    0x100003a64 <+136>: ldadd  w11, w14, [x14]
    0x100003a68 <+140>: dmb    ishld
    0x100003a6c <+144>: add    x9, x9, #0x1
    0x100003a70 <+148>: cmp    x9, x12
    0x100003a74 <+152>: b.ne   0x100003a60               ; <+132> at tso.cpp:53:35
    0x100003a78 <+156>: mov    x9, #0x0
    0x100003a7c <+160>: ldaddl w11, w14, [x13]
    0x100003a80 <+164>: ldrb   w14, [x8, #0xc4c]
    0x100003a84 <+168>: cbz    w14, 0x100003a60          ; <+132> at tso.cpp:53:35
    0x100003a88 <+172>: bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003a8c <+176>: stur   x0, [x29, #-0x10]
    0x100003a90 <+180>: sub    x0, x29, #0x10
    0x100003a94 <+184>: sub    x1, x29, #0x8
    0x100003a98 <+188>: bl     0x100003ad4               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003a9c <+192>: str    x0, [sp, #0x10]
    0x100003aa0 <+196>: add    x0, sp, #0x18
    0x100003aa4 <+200>: add    x1, sp, #0x10
    0x100003aa8 <+204>: bl     0x100003b18               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003aac <+208>: add    x0, sp, #0x18
    0x100003ab0 <+212>: bl     0x100003b2c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099:75
    0x100003ab4 <+216>: str    d0, [sp]
    0x100003ab8 <+220>: adr    x0, #0x499                ; "Set runtime %f\n"
    0x100003abc <+224>: nop    
    0x100003ac0 <+228>: bl     0x100003ed8               ; symbol stub for: printf
    0x100003ac4 <+232>: mov    x0, #0x0
    0x100003ac8 <+236>: ldp    x29, x30, [sp, #0x30]
    0x100003acc <+240>: add    sp, sp, #0x40
    0x100003ad0 <+244>: ret
    
tso_sf`reader:
    0x100003b34 <+0>:   sub    sp, sp, #0x40
    0x100003b38 <+4>:   stp    x29, x30, [sp, #0x30]
    0x100003b3c <+8>:   add    x29, sp, #0x30
->  0x100003b40 <+12>:  nop    
    0x100003b44 <+16>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003b48 <+20>:  cbz    w8, 0x100003b88           ; <+84> at tso.cpp:81:15
    0x100003b4c <+24>:  mov    w8, #0x1
    0x100003b50 <+28>:  stur   w8, [x29, #-0x10]
    0x100003b54 <+32>:  mov    w8, #0x4
    0x100003b58 <+36>:  stur   x8, [x29, #-0x8]
    0x100003b5c <+40>:  adr    x0, #0x3dc                ; "kern.tso_enable"
    0x100003b60 <+44>:  nop    
    0x100003b64 <+48>:  sub    x2, x29, #0x8
    0x100003b68 <+52>:  sub    x3, x29, #0x10
    0x100003b6c <+56>:  mov    x1, #0x0
    0x100003b70 <+60>:  mov    w4, #0x4
    0x100003b74 <+64>:  bl     0x100003f2c               ; symbol stub for: sysctlbyname
    0x100003b78 <+68>:  str    x0, [sp]
    0x100003b7c <+72>:  adr    x0, #0x3cc                ; "TSO: %d\n"
    0x100003b80 <+76>:  nop    
    0x100003b84 <+80>:  bl     0x100003ed8               ; symbol stub for: printf
    0x100003b88 <+84>:  bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003b8c <+88>:  mov    w8, #0x0
    0x100003b90 <+92>:  stur   x0, [x29, #-0x8]
    0x100003b94 <+96>:  adrp   x9, 14
    0x100003b98 <+100>: adr    x10, #0x4478              ; data + 4
    0x100003b9c <+104>: nop    
    0x100003ba0 <+108>: adr    x11, #0x4468              ; barrier
    0x100003ba4 <+112>: nop    
    0x100003ba8 <+116>: adrp   x12, 5
    0x100003bac <+120>: ldrb   w13, [x9, #0xc4c]
    0x100003bb0 <+124>: cbnz   w13, 0x100003bf8          ; <+196> at tso.cpp:112:13
    0x100003bb4 <+128>: mov    x13, x10
    0x100003bb8 <+132>: mov    w14, #0x270f
    0x100003bbc <+136>: ldr    wzr, [x13]
    0x100003bc0 <+140>: dmb    ishld
    0x100003bc4 <+144>: ldur   wzr, [x13, #-0x4]
    0x100003bc8 <+148>: add    x13, x13, #0x4
    0x100003bcc <+152>: subs   x14, x14, #0x1
    0x100003bd0 <+156>: b.ne   0x100003bbc               ; <+136> at tso.cpp:84:26
    0x100003bd4 <+160>: ldapr  w13, [x11]
    0x100003bd8 <+164>: cmp    w8, w13
    0x100003bdc <+168>: b.eq   0x100003bd4               ; <+160> at tso.cpp:94:19
    0x100003be0 <+172>: add    w8, w8, #0x1
    0x100003be4 <+176>: ldr    w13, [x12]
    0x100003be8 <+180>: cmp    w8, w13
    0x100003bec <+184>: b.lo   0x100003bac               ; <+120> at tso.cpp:82:10
    0x100003bf0 <+188>: mov    w8, #0x1
    0x100003bf4 <+192>: strb   w8, [x9, #0xc4c]
    0x100003bf8 <+196>: bl     0x100003ec0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003bfc <+200>: stur   x0, [x29, #-0x10]
    0x100003c00 <+204>: sub    x0, x29, #0x10
    0x100003c04 <+208>: sub    x1, x29, #0x8
    0x100003c08 <+212>: bl     0x100003ad4               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003c0c <+216>: str    x0, [sp, #0x10]
    0x100003c10 <+220>: add    x0, sp, #0x18
    0x100003c14 <+224>: add    x1, sp, #0x10
    0x100003c18 <+228>: bl     0x100003b18               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003c1c <+232>: add    x0, sp, #0x18
    0x100003c20 <+236>: bl     0x100003b2c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099:75
    0x100003c24 <+240>: str    d0, [sp]
    0x100003c28 <+244>: adr    x0, #0x339                ; "Test runtime %f\n"
    0x100003c2c <+248>: nop    
    0x100003c30 <+252>: bl     0x100003ed8               ; symbol stub for: printf
    0x100003c34 <+256>: mov    x0, #0x0
    0x100003c38 <+260>: ldp    x29, x30, [sp, #0x30]
    0x100003c3c <+264>: add    sp, sp, #0x40
    0x100003c40 <+268>: ret
