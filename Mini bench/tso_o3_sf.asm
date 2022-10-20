tso_sf`writer:
    0x100003ba8 <+0>:   sub    sp, sp, #0x40
    0x100003bac <+4>:   stp    x20, x19, [sp, #0x20]
    0x100003bb0 <+8>:   stp    x29, x30, [sp, #0x30]
    0x100003bb4 <+12>:  add    x29, sp, #0x30
->  0x100003bb8 <+16>:  nop    
    0x100003bbc <+20>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003bc0 <+24>:  cbz    w8, 0x100003c00           ; <+88> at tso.cpp:49:15
    0x100003bc4 <+28>:  mov    w8, #0x1
    0x100003bc8 <+32>:  stur   w8, [x29, #-0x14]
    0x100003bcc <+36>:  mov    w8, #0x4
    0x100003bd0 <+40>:  str    x8, [sp, #0x10]
    0x100003bd4 <+44>:  adr    x0, #0x390                ; "kern.tso_enable"
    0x100003bd8 <+48>:  nop    
    0x100003bdc <+52>:  add    x2, sp, #0x10
    0x100003be0 <+56>:  sub    x3, x29, #0x14
    0x100003be4 <+60>:  mov    x1, #0x0
    0x100003be8 <+64>:  mov    w4, #0x4
    0x100003bec <+68>:  bl     0x100003f58               ; symbol stub for: sysctlbyname
    0x100003bf0 <+72>:  str    x0, [sp]
    0x100003bf4 <+76>:  adr    x0, #0x380                ; "TSO: %d\n"
    0x100003bf8 <+80>:  nop    
    0x100003bfc <+84>:  bl     0x100003f04               ; symbol stub for: printf
    0x100003c00 <+88>:  bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003c04 <+92>:  mov    x19, x0
    0x100003c08 <+96>:  adrp   x8, 14
    0x100003c0c <+100>: ldrb   w9, [x8, #0xc4c]
    0x100003c10 <+104>: cbnz   w9, 0x100003c58           ; <+176> at tso.cpp:60:13
    0x100003c14 <+108>: mov    x9, #0x0
    0x100003c18 <+112>: adr    x10, #0x43f4              ; data
    0x100003c1c <+116>: nop    
    0x100003c20 <+120>: mov    w11, #0x1
    0x100003c24 <+124>: mov    w12, #0x2710
    0x100003c28 <+128>: adr    x13, #0x43e0              ; barrier
    0x100003c2c <+132>: nop    
    0x100003c30 <+136>: add    x14, x10, x9, lsl #2
    0x100003c34 <+140>: ldadd  w11, w14, [x14]
    0x100003c38 <+144>: dmb    ishld
    0x100003c3c <+148>: add    x9, x9, #0x1
    0x100003c40 <+152>: cmp    x9, x12
    0x100003c44 <+156>: b.ne   0x100003c30               ; <+136> at tso.cpp:53:35
    0x100003c48 <+160>: mov    x9, #0x0
    0x100003c4c <+164>: ldaddl w11, w14, [x13]
    0x100003c50 <+168>: ldrb   w14, [x8, #0xc4c]
    0x100003c54 <+172>: cbz    w14, 0x100003c30          ; <+136> at tso.cpp:53:35
    0x100003c58 <+176>: bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003c5c <+180>: sub    x8, x0, x19
    0x100003c60 <+184>: scvtf  d0, x8
    0x100003c64 <+188>: mov    x8, #0xcd6500000000
    0x100003c68 <+192>: movk   x8, #0x41cd, lsl #48
    0x100003c6c <+196>: fmov   d1, x8
    0x100003c70 <+200>: fdiv   d0, d0, d1
    0x100003c74 <+204>: str    d0, [sp]
    0x100003c78 <+208>: adr    x0, #0x305                ; "Set runtime %f\n"
    0x100003c7c <+212>: nop    
    0x100003c80 <+216>: bl     0x100003f04               ; symbol stub for: printf
    0x100003c84 <+220>: mov    x0, #0x0
    0x100003c88 <+224>: ldp    x29, x30, [sp, #0x30]
    0x100003c8c <+228>: ldp    x20, x19, [sp, #0x20]
    0x100003c90 <+232>: add    sp, sp, #0x40
    0x100003c94 <+236>: ret
    
    
tso_sf`reader:
    0x100003c98 <+0>:   sub    sp, sp, #0x40
    0x100003c9c <+4>:   stp    x20, x19, [sp, #0x20]
    0x100003ca0 <+8>:   stp    x29, x30, [sp, #0x30]
    0x100003ca4 <+12>:  add    x29, sp, #0x30
->  0x100003ca8 <+16>:  nop    
    0x100003cac <+20>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003cb0 <+24>:  cbz    w8, 0x100003cf0           ; <+88> at tso.cpp:81:15
    0x100003cb4 <+28>:  mov    w8, #0x1
    0x100003cb8 <+32>:  stur   w8, [x29, #-0x14]
    0x100003cbc <+36>:  mov    w8, #0x4
    0x100003cc0 <+40>:  str    x8, [sp, #0x10]
    0x100003cc4 <+44>:  adr    x0, #0x2a0                ; "kern.tso_enable"
    0x100003cc8 <+48>:  nop    
    0x100003ccc <+52>:  add    x2, sp, #0x10
    0x100003cd0 <+56>:  sub    x3, x29, #0x14
    0x100003cd4 <+60>:  mov    x1, #0x0
    0x100003cd8 <+64>:  mov    w4, #0x4
    0x100003cdc <+68>:  bl     0x100003f58               ; symbol stub for: sysctlbyname
    0x100003ce0 <+72>:  str    x0, [sp]
    0x100003ce4 <+76>:  adr    x0, #0x290                ; "TSO: %d\n"
    0x100003ce8 <+80>:  nop    
    0x100003cec <+84>:  bl     0x100003f04               ; symbol stub for: printf
    0x100003cf0 <+88>:  bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003cf4 <+92>:  mov    x19, x0
    0x100003cf8 <+96>:  mov    w9, #0x0
    0x100003cfc <+100>: adrp   x8, 14
    0x100003d00 <+104>: adr    x10, #0x4310              ; data + 4
    0x100003d04 <+108>: nop    
    0x100003d08 <+112>: adrp   x11, 5
    0x100003d0c <+116>: adr    x12, #0x42fc              ; barrier
    0x100003d10 <+120>: nop    
    0x100003d14 <+124>: ldrb   w13, [x8, #0xc4c]
    0x100003d18 <+128>: cbnz   w13, 0x100003d60          ; <+200> at tso.cpp:112:13
    0x100003d1c <+132>: mov    x13, x10
    0x100003d20 <+136>: mov    w14, #0x270f
    0x100003d24 <+140>: ldr    wzr, [x13]
    0x100003d28 <+144>: dmb    ishld
    0x100003d2c <+148>: ldur   wzr, [x13, #-0x4]
    0x100003d30 <+152>: add    x13, x13, #0x4
    0x100003d34 <+156>: subs   x14, x14, #0x1
    0x100003d38 <+160>: b.ne   0x100003d24               ; <+140> at tso.cpp:84:26
    0x100003d3c <+164>: ldapr  w13, [x12]
    0x100003d40 <+168>: cmp    w9, w13
    0x100003d44 <+172>: b.eq   0x100003d3c               ; <+164> at tso.cpp:94:19
    0x100003d48 <+176>: add    w9, w9, #0x1
    0x100003d4c <+180>: ldr    w13, [x11]
    0x100003d50 <+184>: cmp    w9, w13
    0x100003d54 <+188>: b.lo   0x100003d14               ; <+124> at tso.cpp:82:10
    0x100003d58 <+192>: mov    w9, #0x1
    0x100003d5c <+196>: strb   w9, [x8, #0xc4c]
    0x100003d60 <+200>: bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003d64 <+204>: sub    x8, x0, x19
    0x100003d68 <+208>: scvtf  d0, x8
    0x100003d6c <+212>: mov    x8, #0xcd6500000000
    0x100003d70 <+216>: movk   x8, #0x41cd, lsl #48
    0x100003d74 <+220>: fmov   d1, x8
    0x100003d78 <+224>: fdiv   d0, d0, d1
    0x100003d7c <+228>: str    d0, [sp]
    0x100003d80 <+232>: adr    x0, #0x20d                ; "Test runtime %f\n"
    0x100003d84 <+236>: nop    
    0x100003d88 <+240>: bl     0x100003f04               ; symbol stub for: printf
    0x100003d8c <+244>: mov    x0, #0x0
    0x100003d90 <+248>: ldp    x29, x30, [sp, #0x30]
    0x100003d94 <+252>: ldp    x20, x19, [sp, #0x20]
    0x100003d98 <+256>: add    sp, sp, #0x40
    0x100003d9c <+260>: ret
