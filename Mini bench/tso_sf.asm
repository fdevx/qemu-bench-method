 tso_sw_fences`writer:
    0x10000375c <+0>:   sub    sp, sp, #0x80
    0x100003760 <+4>:   stp    x29, x30, [sp, #0x70]
    0x100003764 <+8>:   add    x29, sp, #0x70
    0x100003768 <+12>:  stur   x0, [x29, #-0x8]
    0x10000376c <+16>:  adrp   x8, 5
    0x100003770 <+20>:  ldr    w8, [x8, #0x4]
    0x100003774 <+24>:  cbz    w8, 0x1000037cc           ; <+112> at tso.cpp:49:15
    0x100003778 <+28>:  b      0x10000377c               ; <+32> at tso.cpp
    0x10000377c <+32>:  sub    x3, x29, #0xc
    0x100003780 <+36>:  mov    w8, #0x1
    0x100003784 <+40>:  stur   w8, [x29, #-0xc]
    0x100003788 <+44>:  sub    x2, x29, #0x18
    0x10000378c <+48>:  mov    x8, #0x4
    0x100003790 <+52>:  stur   x8, [x29, #-0x18]
    0x100003794 <+56>:  ldur   x4, [x29, #-0x18]
    0x100003798 <+60>:  adrp   x0, 0
    0x10000379c <+64>:  add    x0, x0, #0xf50            ; "kern.tso_enable"
    0x1000037a0 <+68>:  mov    x1, #0x0
    0x1000037a4 <+72>:  bl     0x100003f3c               ; symbol stub for: sysctlbyname
    0x1000037a8 <+76>:  stur   w0, [x29, #-0x1c]
    0x1000037ac <+80>:  ldur   w9, [x29, #-0x1c]
    0x1000037b0 <+84>:  mov    x8, x9
    0x1000037b4 <+88>:  adrp   x0, 0
    0x1000037b8 <+92>:  add    x0, x0, #0xf60            ; "TSO: %d\n"
    0x1000037bc <+96>:  mov    x9, sp
    0x1000037c0 <+100>: str    x8, [x9]
    0x1000037c4 <+104>: bl     0x100003ee8               ; symbol stub for: printf
    0x1000037c8 <+108>: b      0x1000037cc               ; <+112> at tso.cpp:49:15
    0x1000037cc <+112>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x1000037d0 <+116>: stur   x0, [x29, #-0x28]
    0x1000037d4 <+120>: b      0x1000037d8               ; <+124> at tso.cpp
    0x1000037d8 <+124>: adrp   x8, 14
    0x1000037dc <+128>: ldrb   w8, [x8, #0xc4c]
    0x1000037e0 <+132>: tbnz   w8, #0x0, 0x100003860     ; <+260> at tso.cpp:60:13
    0x1000037e4 <+136>: b      0x1000037e8               ; <+140> at tso.cpp:52:15
    0x1000037e8 <+140>: stur   xzr, [x29, #-0x30]
    0x1000037ec <+144>: b      0x1000037f0               ; <+148> at tso.cpp:52:22
    0x1000037f0 <+148>: ldur   x8, [x29, #-0x30]
    0x1000037f4 <+152>: mov    x9, #0x2710
    0x1000037f8 <+156>: subs   x8, x8, x9
    0x1000037fc <+160>: b.hs   0x100003840               ; <+228> at tso.cpp
    0x100003800 <+164>: b      0x100003804               ; <+168> at tso.cpp:53:37
    0x100003804 <+168>: ldur   x9, [x29, #-0x30]
    0x100003808 <+172>: adrp   x8, 5
    0x10000380c <+176>: add    x8, x8, #0xc              ; data
    0x100003810 <+180>: add    x9, x8, x9, lsl #2
    0x100003814 <+184>: mov    w8, #0x1
    0x100003818 <+188>: stur   w8, [x29, #-0x34]
    0x10000381c <+192>: ldur   w8, [x29, #-0x34]
    0x100003820 <+196>: ldadd  w8, w8, [x9]
    0x100003824 <+200>: str    w8, [sp, #0x38]
    0x100003828 <+204>: dmb    ishld
    0x10000382c <+208>: b      0x100003830               ; <+212> at tso.cpp:52:56
    0x100003830 <+212>: ldur   x8, [x29, #-0x30]
    0x100003834 <+216>: add    x8, x8, #0x1
    0x100003838 <+220>: stur   x8, [x29, #-0x30]
    0x10000383c <+224>: b      0x1000037f0               ; <+148> at tso.cpp:52:22
    0x100003840 <+228>: mov    w8, #0x1
    0x100003844 <+232>: str    w8, [sp, #0x34]
    0x100003848 <+236>: ldr    w8, [sp, #0x34]
    0x10000384c <+240>: adrp   x9, 5
    0x100003850 <+244>: add    x9, x9, #0x8              ; barrier
    0x100003854 <+248>: ldaddl w8, w8, [x9]
    0x100003858 <+252>: str    w8, [sp, #0x30]
    0x10000385c <+256>: b      0x1000037d8               ; <+124> at tso.cpp
    0x100003860 <+260>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003864 <+264>: mov    x8, x0
    0x100003868 <+268>: add    x0, sp, #0x28
    0x10000386c <+272>: str    x8, [sp, #0x28]
    0x100003870 <+276>: sub    x1, x29, #0x28
    0x100003874 <+280>: bl     0x1000038c0               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003878 <+284>: add    x1, sp, #0x18
    0x10000387c <+288>: str    x0, [sp, #0x18]
    0x100003880 <+292>: add    x0, sp, #0x20
    0x100003884 <+296>: str    x0, [sp, #0x8]
    0x100003888 <+300>: mov    x2, #0x0
    0x10000388c <+304>: str    x2, [sp, #0x10]
    0x100003890 <+308>: bl     0x100003918               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003894 <+312>: ldr    x0, [sp, #0x8]
    0x100003898 <+316>: bl     0x100003954               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    0x10000389c <+320>: adrp   x0, 0
    0x1000038a0 <+324>: add    x0, x0, #0xf69            ; "Set runtime %f\n"
    0x1000038a4 <+328>: mov    x8, sp
    0x1000038a8 <+332>: str    d0, [x8]
    0x1000038ac <+336>: bl     0x100003ee8               ; symbol stub for: printf
    0x1000038b0 <+340>: ldr    x0, [sp, #0x10]
    0x1000038b4 <+344>: ldp    x29, x30, [sp, #0x70]
    0x1000038b8 <+348>: add    sp, sp, #0x80
    0x1000038bc <+352>: ret
    
    
    
tso_sw_fences`reader:
    0x10000396c <+0>:   sub    sp, sp, #0x90
    0x100003970 <+4>:   stp    x29, x30, [sp, #0x80]
    0x100003974 <+8>:   add    x29, sp, #0x80
    0x100003978 <+12>:  stur   x0, [x29, #-0x8]
    0x10000397c <+16>:  adrp   x8, 5
    0x100003980 <+20>:  ldr    w8, [x8, #0x4]
    0x100003984 <+24>:  cbz    w8, 0x1000039dc           ; <+112> at tso.cpp:79:15
    0x100003988 <+28>:  b      0x10000398c               ; <+32> at tso.cpp
    0x10000398c <+32>:  sub    x3, x29, #0xc
    0x100003990 <+36>:  mov    w8, #0x1
    0x100003994 <+40>:  stur   w8, [x29, #-0xc]
    0x100003998 <+44>:  sub    x2, x29, #0x18
    0x10000399c <+48>:  mov    x8, #0x4
    0x1000039a0 <+52>:  stur   x8, [x29, #-0x18]
    0x1000039a4 <+56>:  ldur   x4, [x29, #-0x18]
    0x1000039a8 <+60>:  adrp   x0, 0
    0x1000039ac <+64>:  add    x0, x0, #0xf50            ; "kern.tso_enable"
    0x1000039b0 <+68>:  mov    x1, #0x0
    0x1000039b4 <+72>:  bl     0x100003f3c               ; symbol stub for: sysctlbyname
    0x1000039b8 <+76>:  stur   w0, [x29, #-0x1c]
    0x1000039bc <+80>:  ldur   w9, [x29, #-0x1c]
    0x1000039c0 <+84>:  mov    x8, x9
    0x1000039c4 <+88>:  adrp   x0, 0
    0x1000039c8 <+92>:  add    x0, x0, #0xf60            ; "TSO: %d\n"
    0x1000039cc <+96>:  mov    x9, sp
    0x1000039d0 <+100>: str    x8, [x9]
    0x1000039d4 <+104>: bl     0x100003ee8               ; symbol stub for: printf
    0x1000039d8 <+108>: b      0x1000039dc               ; <+112> at tso.cpp:79:15
    0x1000039dc <+112>: stur   wzr, [x29, #-0x20]
    0x1000039e0 <+116>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x1000039e4 <+120>: stur   x0, [x29, #-0x28]
    0x1000039e8 <+124>: b      0x1000039ec               ; <+128> at tso.cpp
    0x1000039ec <+128>: adrp   x8, 14
    0x1000039f0 <+132>: ldrb   w8, [x8, #0xc4c]
    0x1000039f4 <+136>: tbnz   w8, #0x0, 0x100003ae4     ; <+376> at tso.cpp:112:13
    0x1000039f8 <+140>: b      0x1000039fc               ; <+144> at tso.cpp:83:15
    0x1000039fc <+144>: stur   xzr, [x29, #-0x30]
    0x100003a00 <+148>: b      0x100003a04               ; <+152> at tso.cpp:83:22
    0x100003a04 <+152>: ldur   x8, [x29, #-0x30]
    0x100003a08 <+156>: mov    x9, #0x270f
    0x100003a0c <+160>: subs   x8, x8, x9
    0x100003a10 <+164>: b.hs   0x100003a80               ; <+276> at tso.cpp:94:3
    0x100003a14 <+168>: b      0x100003a18               ; <+172> at tso.cpp:84:54
    0x100003a18 <+172>: ldur   x10, [x29, #-0x30]
    0x100003a1c <+176>: adrp   x8, 5
    0x100003a20 <+180>: add    x8, x8, #0xc              ; data
    0x100003a24 <+184>: mov    x9, x8
    0x100003a28 <+188>: add    x9, x9, x10, lsl #2
    0x100003a2c <+192>: ldr    w9, [x9, #0x4]
    0x100003a30 <+196>: stur   w9, [x29, #-0x38]
    0x100003a34 <+200>: ldur   w9, [x29, #-0x38]
    0x100003a38 <+204>: stur   w9, [x29, #-0x34]
    0x100003a3c <+208>: dmb    ishld
    0x100003a40 <+212>: ldur   x9, [x29, #-0x30]
    0x100003a44 <+216>: ldr    w8, [x8, x9, lsl #2]
    0x100003a48 <+220>: str    w8, [sp, #0x40]
    0x100003a4c <+224>: ldr    w8, [sp, #0x40]
    0x100003a50 <+228>: stur   w8, [x29, #-0x3c]
    0x100003a54 <+232>: ldur   w8, [x29, #-0x3c]
    0x100003a58 <+236>: ldur   w9, [x29, #-0x34]
    0x100003a5c <+240>: subs   w8, w8, w9
    0x100003a60 <+244>: b.hs   0x100003a6c               ; <+256> at tso.cpp:92:3
    0x100003a64 <+248>: b      0x100003a68               ; <+252> at tso.cpp:91:4
    0x100003a68 <+252>: b      0x100003a6c               ; <+256> at tso.cpp:92:3
    0x100003a6c <+256>: b      0x100003a70               ; <+260> at tso.cpp:83:60
    0x100003a70 <+260>: ldur   x8, [x29, #-0x30]
    0x100003a74 <+264>: add    x8, x8, #0x1
    0x100003a78 <+268>: stur   x8, [x29, #-0x30]
    0x100003a7c <+272>: b      0x100003a04               ; <+152> at tso.cpp:83:22
    0x100003a80 <+276>: b      0x100003a84               ; <+280> at tso.cpp:94:10
    0x100003a84 <+280>: ldur   w8, [x29, #-0x20]
    0x100003a88 <+284>: adrp   x9, 5
    0x100003a8c <+288>: add    x9, x9, #0x8              ; barrier
    0x100003a90 <+292>: ldar   w9, [x9]
    0x100003a94 <+296>: str    w9, [sp, #0x3c]
    0x100003a98 <+300>: ldr    w9, [sp, #0x3c]
    0x100003a9c <+304>: subs   w8, w8, w9
    0x100003aa0 <+308>: b.ne   0x100003aac               ; <+320> at tso.cpp:96:3
    0x100003aa4 <+312>: b      0x100003aa8               ; <+316> at tso.cpp:94:3
    0x100003aa8 <+316>: b      0x100003a84               ; <+280> at tso.cpp:94:10
    0x100003aac <+320>: ldur   w8, [x29, #-0x20]
    0x100003ab0 <+324>: add    w8, w8, #0x1
    0x100003ab4 <+328>: stur   w8, [x29, #-0x20]
    0x100003ab8 <+332>: ldur   w8, [x29, #-0x20]
    0x100003abc <+336>: adrp   x9, 5
    0x100003ac0 <+340>: ldr    w9, [x9]
    0x100003ac4 <+344>: subs   w8, w8, w9
    0x100003ac8 <+348>: b.lo   0x100003ae0               ; <+372> at tso.cpp:82:2
    0x100003acc <+352>: b      0x100003ad0               ; <+356> at tso.cpp
    0x100003ad0 <+356>: mov    w8, #0x1
    0x100003ad4 <+360>: adrp   x9, 14
    0x100003ad8 <+364>: strb   w8, [x9, #0xc4c]
    0x100003adc <+368>: b      0x100003ae4               ; <+376> at tso.cpp:112:13
    0x100003ae0 <+372>: b      0x1000039ec               ; <+128> at tso.cpp
    0x100003ae4 <+376>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003ae8 <+380>: mov    x8, x0
    0x100003aec <+384>: add    x0, sp, #0x30
    0x100003af0 <+388>: str    x8, [sp, #0x30]
    0x100003af4 <+392>: sub    x1, x29, #0x28
    0x100003af8 <+396>: bl     0x1000038c0               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x100003afc <+400>: add    x1, sp, #0x20
    0x100003b00 <+404>: str    x0, [sp, #0x20]
    0x100003b04 <+408>: add    x0, sp, #0x28
    0x100003b08 <+412>: str    x0, [sp, #0x10]
    0x100003b0c <+416>: mov    x2, #0x0
    0x100003b10 <+420>: str    x2, [sp, #0x18]
    0x100003b14 <+424>: bl     0x100003918               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003b18 <+428>: ldr    x0, [sp, #0x10]
    0x100003b1c <+432>: bl     0x100003954               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    0x100003b20 <+436>: adrp   x0, 0
    0x100003b24 <+440>: add    x0, x0, #0xf79            ; "Test runtime %f\n"
    0x100003b28 <+444>: mov    x8, sp
    0x100003b2c <+448>: str    d0, [x8]
    0x100003b30 <+452>: bl     0x100003ee8               ; symbol stub for: printf
    0x100003b34 <+456>: ldr    x0, [sp, #0x18]
    0x100003b38 <+460>: ldp    x29, x30, [sp, #0x80]
    0x100003b3c <+464>: add    sp, sp, #0x90
    0x100003b40 <+468>: ret 
