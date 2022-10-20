tso`writer:
    0x100003bb0 <+0>:   sub    sp, sp, #0x40
    0x100003bb4 <+4>:   stp    x20, x19, [sp, #0x20]
    0x100003bb8 <+8>:   stp    x29, x30, [sp, #0x30]
    0x100003bbc <+12>:  add    x29, sp, #0x30
->  0x100003bc0 <+16>:  nop    
    0x100003bc4 <+20>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003bc8 <+24>:  cbz    w8, 0x100003c08           ; <+88> at tso.cpp:49:15
    0x100003bcc <+28>:  mov    w8, #0x1
    0x100003bd0 <+32>:  stur   w8, [x29, #-0x14]
    0x100003bd4 <+36>:  mov    w8, #0x4
    0x100003bd8 <+40>:  str    x8, [sp, #0x10]
    0x100003bdc <+44>:  adr    x0, #0x388                ; "kern.tso_enable"
    0x100003be0 <+48>:  nop    
    0x100003be4 <+52>:  add    x2, sp, #0x10
    0x100003be8 <+56>:  sub    x3, x29, #0x14
    0x100003bec <+60>:  mov    x1, #0x0
    0x100003bf0 <+64>:  mov    w4, #0x4
    0x100003bf4 <+68>:  bl     0x100003f58               ; symbol stub for: sysctlbyname
    0x100003bf8 <+72>:  str    x0, [sp]
    0x100003bfc <+76>:  adr    x0, #0x378                ; "TSO: %d\n"
    0x100003c00 <+80>:  nop    
    0x100003c04 <+84>:  bl     0x100003f04               ; symbol stub for: printf
    0x100003c08 <+88>:  bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003c0c <+92>:  mov    x19, x0
    0x100003c10 <+96>:  adrp   x8, 14
    0x100003c14 <+100>: ldrb   w9, [x8, #0xc4c]
    0x100003c18 <+104>: cbnz   w9, 0x100003c5c           ; <+172> at tso.cpp:60:13
    0x100003c1c <+108>: mov    x9, #0x0
    0x100003c20 <+112>: adr    x10, #0x43ec              ; data
    0x100003c24 <+116>: nop    
    0x100003c28 <+120>: mov    w11, #0x1
    0x100003c2c <+124>: mov    w12, #0x2710
    0x100003c30 <+128>: adr    x13, #0x43d8              ; barrier
    0x100003c34 <+132>: nop    
    0x100003c38 <+136>: add    x14, x10, x9, lsl #2
    0x100003c3c <+140>: ldadd  w11, w14, [x14]
    0x100003c40 <+144>: add    x9, x9, #0x1
    0x100003c44 <+148>: cmp    x9, x12
    0x100003c48 <+152>: b.ne   0x100003c38               ; <+136> at tso.cpp:53:35
    0x100003c4c <+156>: mov    x9, #0x0
    0x100003c50 <+160>: ldaddl w11, w14, [x13]
    0x100003c54 <+164>: ldrb   w14, [x8, #0xc4c]
    0x100003c58 <+168>: cbz    w14, 0x100003c38          ; <+136> at tso.cpp:53:35
    0x100003c5c <+172>: bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003c60 <+176>: sub    x8, x0, x19
    0x100003c64 <+180>: scvtf  d0, x8
    0x100003c68 <+184>: mov    x8, #0xcd6500000000
    0x100003c6c <+188>: movk   x8, #0x41cd, lsl #48
    0x100003c70 <+192>: fmov   d1, x8
    0x100003c74 <+196>: fdiv   d0, d0, d1
    0x100003c78 <+200>: str    d0, [sp]
    0x100003c7c <+204>: adr    x0, #0x301                ; "Set runtime %f\n"
    0x100003c80 <+208>: nop    
    0x100003c84 <+212>: bl     0x100003f04               ; symbol stub for: printf
    0x100003c88 <+216>: mov    x0, #0x0
    0x100003c8c <+220>: ldp    x29, x30, [sp, #0x30]
    0x100003c90 <+224>: ldp    x20, x19, [sp, #0x20]
    0x100003c94 <+228>: add    sp, sp, #0x40
    0x100003c98 <+232>: ret
    
    
tso`reader:
    0x100003c9c <+0>:   sub    sp, sp, #0x40
    0x100003ca0 <+4>:   stp    x20, x19, [sp, #0x20]
    0x100003ca4 <+8>:   stp    x29, x30, [sp, #0x30]
    0x100003ca8 <+12>:  add    x29, sp, #0x30
->  0x100003cac <+16>:  nop    
    0x100003cb0 <+20>:  ldr    w8, 0x100008004           ; enable_tso
    0x100003cb4 <+24>:  cbz    w8, 0x100003cf4           ; <+88> at tso.cpp:81:15
    0x100003cb8 <+28>:  mov    w8, #0x1
    0x100003cbc <+32>:  stur   w8, [x29, #-0x14]
    0x100003cc0 <+36>:  mov    w8, #0x4
    0x100003cc4 <+40>:  str    x8, [sp, #0x10]
    0x100003cc8 <+44>:  adr    x0, #0x29c                ; "kern.tso_enable"
    0x100003ccc <+48>:  nop    
    0x100003cd0 <+52>:  add    x2, sp, #0x10
    0x100003cd4 <+56>:  sub    x3, x29, #0x14
    0x100003cd8 <+60>:  mov    x1, #0x0
    0x100003cdc <+64>:  mov    w4, #0x4
    0x100003ce0 <+68>:  bl     0x100003f58               ; symbol stub for: sysctlbyname
    0x100003ce4 <+72>:  str    x0, [sp]
    0x100003ce8 <+76>:  adr    x0, #0x28c                ; "TSO: %d\n"
    0x100003cec <+80>:  nop    
    0x100003cf0 <+84>:  bl     0x100003f04               ; symbol stub for: printf
    0x100003cf4 <+88>:  bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003cf8 <+92>:  mov    x19, x0
    0x100003cfc <+96>:  mov    w9, #0x0
    0x100003d00 <+100>: adrp   x8, 14
    0x100003d04 <+104>: adr    x10, #0x430c              ; data + 4
    0x100003d08 <+108>: nop    
    0x100003d0c <+112>: adrp   x11, 5
    0x100003d10 <+116>: adr    x12, #0x42f8              ; barrier
    0x100003d14 <+120>: nop    
    0x100003d18 <+124>: ldrb   w13, [x8, #0xc4c]
    0x100003d1c <+128>: cbnz   w13, 0x100003d60          ; <+196> at tso.cpp:112:13
    0x100003d20 <+132>: mov    x13, x10
    0x100003d24 <+136>: mov    w14, #0x270f
    0x100003d28 <+140>: ldr    wzr, [x13]
    0x100003d2c <+144>: ldur   wzr, [x13, #-0x4]
    0x100003d30 <+148>: add    x13, x13, #0x4
    0x100003d34 <+152>: subs   x14, x14, #0x1
    0x100003d38 <+156>: b.ne   0x100003d28               ; <+140> at tso.cpp:84:26
    0x100003d3c <+160>: ldapr  w13, [x12]
    0x100003d40 <+164>: cmp    w9, w13
    0x100003d44 <+168>: b.eq   0x100003d3c               ; <+160> at tso.cpp:94:19
    0x100003d48 <+172>: add    w9, w9, #0x1
    0x100003d4c <+176>: ldr    w13, [x11]
    0x100003d50 <+180>: cmp    w9, w13
    0x100003d54 <+184>: b.lo   0x100003d18               ; <+124> at tso.cpp:82:10
    0x100003d58 <+188>: mov    w9, #0x1
    0x100003d5c <+192>: strb   w9, [x8, #0xc4c]
    0x100003d60 <+196>: bl     0x100003eec               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003d64 <+200>: sub    x8, x0, x19
    0x100003d68 <+204>: scvtf  d0, x8
    0x100003d6c <+208>: mov    x8, #0xcd6500000000
    0x100003d70 <+212>: movk   x8, #0x41cd, lsl #48
    0x100003d74 <+216>: fmov   d1, x8
    0x100003d78 <+220>: fdiv   d0, d0, d1
    0x100003d7c <+224>: str    d0, [sp]
    0x100003d80 <+228>: adr    x0, #0x20d                ; "Test runtime %f\n"
    0x100003d84 <+232>: nop    
    0x100003d88 <+236>: bl     0x100003f04               ; symbol stub for: printf
    0x100003d8c <+240>: mov    x0, #0x0
    0x100003d90 <+244>: ldp    x29, x30, [sp, #0x30]
    0x100003d94 <+248>: ldp    x20, x19, [sp, #0x20]
    0x100003d98 <+252>: add    sp, sp, #0x40
    0x100003d9c <+256>: ret
