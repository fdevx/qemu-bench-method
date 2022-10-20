 tso_sw_fences`writer:
    0x100003764 <+0>:   sub    sp, sp, #0x80
    0x100003768 <+4>:   stp    x29, x30, [sp, #0x70]
    0x10000376c <+8>:   add    x29, sp, #0x70
    0x100003770 <+12>:  stur   x0, [x29, #-0x8]
    0x100003774 <+16>:  adrp   x8, 5
    0x100003778 <+20>:  ldr    w8, [x8, #0x4]
    0x10000377c <+24>:  cbz    w8, 0x1000037d4           ; <+112> at tso.cpp:49:15
    0x100003780 <+28>:  b      0x100003784               ; <+32> at tso.cpp
    0x100003784 <+32>:  sub    x3, x29, #0xc
    0x100003788 <+36>:  mov    w8, #0x1
    0x10000378c <+40>:  stur   w8, [x29, #-0xc]
    0x100003790 <+44>:  sub    x2, x29, #0x18
    0x100003794 <+48>:  mov    x8, #0x4
    0x100003798 <+52>:  stur   x8, [x29, #-0x18]
    0x10000379c <+56>:  ldur   x4, [x29, #-0x18]
    0x1000037a0 <+60>:  adrp   x0, 0
    0x1000037a4 <+64>:  add    x0, x0, #0xf50            ; "kern.tso_enable"
    0x1000037a8 <+68>:  mov    x1, #0x0
    0x1000037ac <+72>:  bl     0x100003f3c               ; symbol stub for: sysctlbyname
    0x1000037b0 <+76>:  stur   w0, [x29, #-0x1c]
    0x1000037b4 <+80>:  ldur   w9, [x29, #-0x1c]
    0x1000037b8 <+84>:  mov    x8, x9
    0x1000037bc <+88>:  adrp   x0, 0
    0x1000037c0 <+92>:  add    x0, x0, #0xf60            ; "TSO: %d\n"
    0x1000037c4 <+96>:  mov    x9, sp
    0x1000037c8 <+100>: str    x8, [x9]
    0x1000037cc <+104>: bl     0x100003ee8               ; symbol stub for: printf
    0x1000037d0 <+108>: b      0x1000037d4               ; <+112> at tso.cpp:49:15
    0x1000037d4 <+112>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x1000037d8 <+116>: stur   x0, [x29, #-0x28]
    0x1000037dc <+120>: b      0x1000037e0               ; <+124> at tso.cpp
    0x1000037e0 <+124>: adrp   x8, 14
    0x1000037e4 <+128>: ldrb   w8, [x8, #0xc4c]
    0x1000037e8 <+132>: tbnz   w8, #0x0, 0x100003864     ; <+256> at tso.cpp:59:13
    0x1000037ec <+136>: b      0x1000037f0               ; <+140> at tso.cpp:52:15
    0x1000037f0 <+140>: stur   xzr, [x29, #-0x30]
    0x1000037f4 <+144>: b      0x1000037f8               ; <+148> at tso.cpp:52:22
    0x1000037f8 <+148>: ldur   x8, [x29, #-0x30]
    0x1000037fc <+152>: mov    x9, #0x2710
    0x100003800 <+156>: subs   x8, x8, x9
    0x100003804 <+160>: b.hs   0x100003844               ; <+224> at tso.cpp
    0x100003808 <+164>: b      0x10000380c               ; <+168> at tso.cpp:53:37
    0x10000380c <+168>: ldur   x9, [x29, #-0x30]
    0x100003810 <+172>: adrp   x8, 5
    0x100003814 <+176>: add    x8, x8, #0xc              ; data
    0x100003818 <+180>: add    x9, x8, x9, lsl #2
    0x10000381c <+184>: mov    w8, #0x1
    0x100003820 <+188>: stur   w8, [x29, #-0x34]
    0x100003824 <+192>: ldur   w8, [x29, #-0x34]
    0x100003828 <+196>: ldadd  w8, w8, [x9]
    0x10000382c <+200>: str    w8, [sp, #0x38]
    0x100003830 <+204>: b      0x100003834               ; <+208> at tso.cpp:52:56
    0x100003834 <+208>: ldur   x8, [x29, #-0x30]
    0x100003838 <+212>: add    x8, x8, #0x1
    0x10000383c <+216>: stur   x8, [x29, #-0x30]
    0x100003840 <+220>: b      0x1000037f8               ; <+148> at tso.cpp:52:22
    0x100003844 <+224>: mov    w8, #0x1
    0x100003848 <+228>: str    w8, [sp, #0x34]
    0x10000384c <+232>: ldr    w8, [sp, #0x34]
    0x100003850 <+236>: adrp   x9, 5
    0x100003854 <+240>: add    x9, x9, #0x8              ; barrier
    0x100003858 <+244>: ldaddl w8, w8, [x9]
    0x10000385c <+248>: str    w8, [sp, #0x30]
    0x100003860 <+252>: b      0x1000037e0               ; <+124> at tso.cpp
    0x100003864 <+256>: bl     0x100003ed0               ; symbol stub for: std::__1::chrono::steady_clock::now()
    0x100003868 <+260>: mov    x8, x0
    0x10000386c <+264>: add    x0, sp, #0x28
    0x100003870 <+268>: str    x8, [sp, #0x28]
    0x100003874 <+272>: sub    x1, x29, #0x28
    0x100003878 <+276>: bl     0x1000038c4               ; std::__1::chrono::operator-<std::__1::chrono::steady_clock, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> >, std::__1::chrono::duration<long long, std::__1::ratio<1l, 1000000000l> > > at chrono:1565
    0x10000387c <+280>: add    x1, sp, #0x18
    0x100003880 <+284>: str    x0, [sp, #0x18]
    0x100003884 <+288>: add    x0, sp, #0x20
    0x100003888 <+292>: str    x0, [sp, #0x8]
    0x10000388c <+296>: mov    x2, #0x0
    0x100003890 <+300>: str    x2, [sp, #0x10]
    0x100003894 <+304>: bl     0x10000391c               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::duration<long long, std::__1::ratio<1l, 1000000000l> > at chrono:1095
    0x100003898 <+308>: ldr    x0, [sp, #0x8]
    0x10000389c <+312>: bl     0x100003958               ; std::__1::chrono::duration<double, std::__1::ratio<1l, 1l> >::count at chrono:1099
    0x1000038a0 <+316>: adrp   x0, 0
    0x1000038a4 <+320>: add    x0, x0, #0xf69            ; "Set runtime %f\n"
    0x1000038a8 <+324>: mov    x8, sp
    0x1000038ac <+328>: str    d0, [x8]
    0x1000038b0 <+332>: bl     0x100003ee8               ; symbol stub for: printf
    0x1000038b4 <+336>: ldr    x0, [sp, #0x10]
    0x1000038b8 <+340>: ldp    x29, x30, [sp, #0x70]
    0x1000038bc <+344>: add    sp, sp, #0x80
    0x1000038c0 <+348>: ret


.text:10000371c <__Z11sig_handleri>:
                           .text:10000371c ff 83 00 d1                      sub	sp, sp, #0x20
                           .text:100003720 fd 7b 01 a9                      stp	x29, x30, [sp,#16]
                           .text:100003724 fd 43 00 91                      add	x29, sp, #0x10
                           .text:100003728 a0 c3 1f b8                      str	w0, [x29,#-4]
                           .text:10000372c 68 00 00 d0                      adrp	x8, 0x100011000
                           .text:100003730 08 31 71 39                      ldrb	w8, [x8,#3148]
                           .text:100003734 08 01 00 12                      and	w8, w8, #0x1
                           .text:100003738 08 05 00 71                      subs	w8, w8, #0x1
                           .text:10000373c 81 00 00 54                      b.ne	0x10000374c
                           .text:100003740 01 00 00 14                      b	0x100003744
                           .text:100003744 20 00 80 52                      mov	w0, #0x1                   	// #1
                           .text:100003748 e5 01 00 94                      bl	0x100003edc
                           .text:10000374c 28 00 80 52                      mov	w8, #0x1                   	// #1
                           .text:100003750 69 00 00 d0                      adrp	x9, 0x100011000
                           .text:100003754 28 31 31 39                      strb	w8, [x9,#3148]
                           .text:100003758 fd 7b 41 a9                      ldp	x29, x30, [sp,#16]
                           .text:10000375c ff 83 00 91                      add	sp, sp, #0x20
                           .text:100003760 c0 03 5f d6                      ret

    
.text:1000038c4 <__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE>:
                           .text:1000038c4 ff 03 01 d1                      sub	sp, sp, #0x40
                           .text:1000038c8 fd 7b 03 a9                      stp	x29, x30, [sp,#48]
                           .text:1000038cc fd c3 00 91                      add	x29, sp, #0x30
                           .text:1000038d0 a0 03 1f f8                      str	x0, [x29,#-16]
                           .text:1000038d4 e1 0f 00 f9                      str	x1, [sp,#24]
                           .text:1000038d8 a0 03 5f f8                      ldr	x0, [x29,#-16]
                           .text:1000038dc 0b 01 00 94                      bl	0x100003d08 <__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv>
                           .text:1000038e0 e8 43 00 91                      add	x8, sp, #0x10
                           .text:1000038e4 e8 03 00 f9                      str	x8, [sp]
                           .text:1000038e8 e0 0b 00 f9                      str	x0, [sp,#16]
                           .text:1000038ec e0 0f 40 f9                      ldr	x0, [sp,#24]
                           .text:1000038f0 06 01 00 94                      bl	0x100003d08 <__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv>
                           .text:1000038f4 e8 03 00 aa                      mov	x8, x0
                           .text:1000038f8 e0 03 40 f9                      ldr	x0, [sp]
                           .text:1000038fc e1 23 00 91                      add	x1, sp, #0x8
                           .text:100003900 e8 07 00 f9                      str	x8, [sp,#8]
                           .text:100003904 e5 00 00 94                      bl	0x100003c98 <__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_>
                           .text:100003908 a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:10000390c a0 83 5f f8                      ldr	x0, [x29,#-8]
                           .text:100003910 fd 7b 43 a9                      ldp	x29, x30, [sp,#48]
                           .text:100003914 ff 03 01 91                      add	sp, sp, #0x40
                           .text:100003918 c0 03 5f d6                      ret

.text:10000391c <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE>:
                           .text:10000391c ff c3 00 d1                      sub	sp, sp, #0x30
                           .text:100003920 fd 7b 02 a9                      stp	x29, x30, [sp,#32]
                           .text:100003924 fd 83 00 91                      add	x29, sp, #0x20
                           .text:100003928 a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:10000392c e1 0b 00 f9                      str	x1, [sp,#16]
                           .text:100003930 e2 07 00 f9                      str	x2, [sp,#8]
                           .text:100003934 a0 83 5f f8                      ldr	x0, [x29,#-8]
                           .text:100003938 e0 03 00 f9                      str	x0, [sp]
                           .text:10000393c e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003940 e2 07 40 f9                      ldr	x2, [sp,#8]
                           .text:100003944 18 01 00 94                      bl	0x100003da4 <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE>
                           .text:100003948 e0 03 40 f9                      ldr	x0, [sp]
                           .text:10000394c fd 7b 42 a9                      ldp	x29, x30, [sp,#32]
                           .text:100003950 ff c3 00 91                      add	sp, sp, #0x30
                           .text:100003954 c0 03 5f d6                      ret

.text:100003958 <__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv>:
                           .text:100003958 ff 43 00 d1                      sub	sp, sp, #0x10
                           .text:10000395c e0 07 00 f9                      str	x0, [sp,#8]
                           .text:100003960 e8 07 40 f9                      ldr	x8, [sp,#8]
                           .text:100003964 00 01 40 fd                      ldr	d0, [x8]
                           .text:100003968 ff 43 00 91                      add	sp, sp, #0x10
                           .text:10000396c c0 03 5f d6                      ret

.text:100003970 <__Z6readerPv>:
                           .text:100003970 ff 43 02 d1                      sub	sp, sp, #0x90
                           .text:100003974 fd 7b 08 a9                      stp	x29, x30, [sp,#128]
                           .text:100003978 fd 03 02 91                      add	x29, sp, #0x80
                           .text:10000397c a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:100003980 28 00 00 b0                      adrp	x8, 0x100008000 <_NUM_ITERS>
                           .text:100003984 08 05 40 b9                      ldr	w8, [x8,#4]
                           .text:100003988 c8 02 00 34                      cbz	w8, 0x1000039e0
                           .text:10000398c 01 00 00 14                      b	0x100003990
                           .text:100003990 a3 33 00 d1                      sub	x3, x29, #0xc
                           .text:100003994 28 00 80 52                      mov	w8, #0x1                   	// #1
                           .text:100003998 a8 43 1f b8                      str	w8, [x29,#-12]
                           .text:10000399c a2 63 00 d1                      sub	x2, x29, #0x18
                           .text:1000039a0 88 00 80 d2                      mov	x8, #0x4                   	// #4
                           .text:1000039a4 a8 83 1e f8                      str	x8, [x29,#-24]
                           .text:1000039a8 a4 83 5e f8                      ldr	x4, [x29,#-24]
                           .text:1000039ac 00 00 00 90                      adrp	x0, 0x100003000
                           .text:1000039b0 00 40 3d 91                      add	x0, x0, #0xf50
                           .text:1000039b4 01 00 80 d2                      mov	x1, #0x0                   	// #0
                           .text:1000039b8 61 01 00 94                      bl	0x100003f3c
                           .text:1000039bc a0 43 1e b8                      str	w0, [x29,#-28]
                           .text:1000039c0 a9 43 5e b8                      ldr	w9, [x29,#-28]
                           .text:1000039c4 e8 03 09 aa                      mov	x8, x9
                           .text:1000039c8 00 00 00 90                      adrp	x0, 0x100003000
                           .text:1000039cc 00 80 3d 91                      add	x0, x0, #0xf60
                           .text:1000039d0 e9 03 00 91                      mov	x9, sp
                           .text:1000039d4 28 01 00 f9                      str	x8, [x9]
                           .text:1000039d8 44 01 00 94                      bl	0x100003ee8
                           .text:1000039dc 01 00 00 14                      b	0x1000039e0
                           .text:1000039e0 bf 03 1e b8                      str	wzr, [x29,#-32]
                           .text:1000039e4 3b 01 00 94                      bl	0x100003ed0
                           .text:1000039e8 a0 83 1d f8                      str	x0, [x29,#-40]
                           .text:1000039ec 01 00 00 14                      b	0x1000039f0
                           .text:1000039f0 68 00 00 d0                      adrp	x8, 0x100011000
                           .text:1000039f4 08 31 71 39                      ldrb	w8, [x8,#3148]
                           .text:1000039f8 68 07 00 37                      tbnz	w8, #0, 0x100003ae4
                           .text:1000039fc 01 00 00 14                      b	0x100003a00
                           .text:100003a00 bf 03 1d f8                      str	xzr, [x29,#-48]
                           .text:100003a04 01 00 00 14                      b	0x100003a08
                           .text:100003a08 a8 03 5d f8                      ldr	x8, [x29,#-48]
                           .text:100003a0c e9 e1 84 d2                      mov	x9, #0x270f                	// #9999
                           .text:100003a10 08 01 09 eb                      subs	x8, x8, x9
                           .text:100003a14 62 03 00 54                      b.cs	0x100003a80
                           .text:100003a18 01 00 00 14                      b	0x100003a1c
                           .text:100003a1c aa 03 5d f8                      ldr	x10, [x29,#-48]
                           .text:100003a20 28 00 00 b0                      adrp	x8, 0x100008000 <_NUM_ITERS>
                           .text:100003a24 08 31 00 91                      add	x8, x8, #0xc
                           .text:100003a28 e9 03 08 aa                      mov	x9, x8
                           .text:100003a2c 29 09 0a 8b                      add	x9, x9, x10, lsl #2
                           .text:100003a30 29 05 40 b9                      ldr	w9, [x9,#4]
                           .text:100003a34 a9 83 1c b8                      str	w9, [x29,#-56]
                           .text:100003a38 a9 83 5c b8                      ldr	w9, [x29,#-56]
                           .text:100003a3c a9 c3 1c b8                      str	w9, [x29,#-52]
                           .text:100003a40 a9 03 5d f8                      ldr	x9, [x29,#-48]
                           .text:100003a44 08 79 69 b8                      ldr	w8, [x8,x9,lsl #2]
                           .text:100003a48 e8 43 00 b9                      str	w8, [sp,#64]
                           .text:100003a4c e8 43 40 b9                      ldr	w8, [sp,#64]
                           .text:100003a50 a8 43 1c b8                      str	w8, [x29,#-60]
                           .text:100003a54 a8 43 5c b8                      ldr	w8, [x29,#-60]
                           .text:100003a58 a9 c3 5c b8                      ldr	w9, [x29,#-52]
                           .text:100003a5c 08 01 09 6b                      subs	w8, w8, w9
                           .text:100003a60 62 00 00 54                      b.cs	0x100003a6c
                           .text:100003a64 01 00 00 14                      b	0x100003a68
                           .text:100003a68 01 00 00 14                      b	0x100003a6c
                           .text:100003a6c 01 00 00 14                      b	0x100003a70
                           .text:100003a70 a8 03 5d f8                      ldr	x8, [x29,#-48]
                           .text:100003a74 08 05 00 91                      add	x8, x8, #0x1
                           .text:100003a78 a8 03 1d f8                      str	x8, [x29,#-48]
                           .text:100003a7c e3 ff ff 17                      b	0x100003a08
                           .text:100003a80 01 00 00 14                      b	0x100003a84
                           .text:100003a84 a8 03 5e b8                      ldr	w8, [x29,#-32]
                           .text:100003a88 29 00 00 b0                      adrp	x9, 0x100008000 <_NUM_ITERS>
                           .text:100003a8c 29 21 00 91                      add	x9, x9, #0x8
                           .text:100003a90 29 fd df 88                      ldar	w9, [x9]
                           .text:100003a94 e9 3f 00 b9                      str	w9, [sp,#60]
                           .text:100003a98 e9 3f 40 b9                      ldr	w9, [sp,#60]
                           .text:100003a9c 08 01 09 6b                      subs	w8, w8, w9
                           .text:100003aa0 61 00 00 54                      b.ne	0x100003aac
                           .text:100003aa4 01 00 00 14                      b	0x100003aa8
                           .text:100003aa8 f7 ff ff 17                      b	0x100003a84
                           .text:100003aac a8 03 5e b8                      ldr	w8, [x29,#-32]
                           .text:100003ab0 08 05 00 11                      add	w8, w8, #0x1
                           .text:100003ab4 a8 03 1e b8                      str	w8, [x29,#-32]
                           .text:100003ab8 a8 03 5e b8                      ldr	w8, [x29,#-32]
                           .text:100003abc 29 00 00 b0                      adrp	x9, 0x100008000 <_NUM_ITERS>
                           .text:100003ac0 29 01 40 b9                      ldr	w9, [x9]
                           .text:100003ac4 08 01 09 6b                      subs	w8, w8, w9
                           .text:100003ac8 c3 00 00 54                      b.cc	0x100003ae0
                           .text:100003acc 01 00 00 14                      b	0x100003ad0
                           .text:100003ad0 28 00 80 52                      mov	w8, #0x1                   	// #1
                           .text:100003ad4 69 00 00 d0                      adrp	x9, 0x100011000
                           .text:100003ad8 28 31 31 39                      strb	w8, [x9,#3148]
                           .text:100003adc 02 00 00 14                      b	0x100003ae4
                           .text:100003ae0 c4 ff ff 17                      b	0x1000039f0
                           .text:100003ae4 fb 00 00 94                      bl	0x100003ed0
                           .text:100003ae8 e8 03 00 aa                      mov	x8, x0
                           .text:100003aec e0 c3 00 91                      add	x0, sp, #0x30
                           .text:100003af0 e8 1b 00 f9                      str	x8, [sp,#48]
                           .text:100003af4 a1 a3 00 d1                      sub	x1, x29, #0x28
                           .text:100003af8 73 ff ff 97                      bl	0x1000038c4 <__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE>
                           .text:100003afc e1 83 00 91                      add	x1, sp, #0x20
                           .text:100003b00 e0 13 00 f9                      str	x0, [sp,#32]
                           .text:100003b04 e0 a3 00 91                      add	x0, sp, #0x28
                           .text:100003b08 e0 0b 00 f9                      str	x0, [sp,#16]
                           .text:100003b0c 02 00 80 d2                      mov	x2, #0x0                   	// #0
                           .text:100003b10 e2 0f 00 f9                      str	x2, [sp,#24]
                           .text:100003b14 82 ff ff 97                      bl	0x10000391c <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE>
                           .text:100003b18 e0 0b 40 f9                      ldr	x0, [sp,#16]
                           .text:100003b1c 8f ff ff 97                      bl	0x100003958 <__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv>
                           .text:100003b20 00 00 00 90                      adrp	x0, 0x100003000
                           .text:100003b24 00 e4 3d 91                      add	x0, x0, #0xf79
                           .text:100003b28 e8 03 00 91                      mov	x8, sp
                           .text:100003b2c 00 01 00 fd                      str	d0, [x8]
                           .text:100003b30 ee 00 00 94                      bl	0x100003ee8
                           .text:100003b34 e0 0f 40 f9                      ldr	x0, [sp,#24]
                           .text:100003b38 fd 7b 48 a9                      ldp	x29, x30, [sp,#128]
                           .text:100003b3c ff 43 02 91                      add	sp, sp, #0x90
                           .text:100003b40 c0 03 5f d6                      ret

.text:100003b44 <_main>:
                           .text:100003b44 ff 43 01 d1                      sub	sp, sp, #0x50
                           .text:100003b48 fd 7b 04 a9                      stp	x29, x30, [sp,#64]
                           .text:100003b4c fd 03 01 91                      add	x29, sp, #0x40
                           .text:100003b50 bf c3 1f b8                      str	wzr, [x29,#-4]
                           .text:100003b54 a0 83 1f b8                      str	w0, [x29,#-8]
                           .text:100003b58 a1 03 1f f8                      str	x1, [x29,#-16]
                           .text:100003b5c 28 00 80 52                      mov	w8, #0x1                   	// #1
                           .text:100003b60 a8 c3 1e b8                      str	w8, [x29,#-20]
                           .text:100003b64 01 00 00 14                      b	0x100003b68
                           .text:100003b68 a8 c3 5e b8                      ldr	w8, [x29,#-20]
                           .text:100003b6c a9 83 5f b8                      ldr	w9, [x29,#-8]
                           .text:100003b70 08 01 09 6b                      subs	w8, w8, w9
                           .text:100003b74 ea 04 00 54                      b.ge	0x100003c10
                           .text:100003b78 01 00 00 14                      b	0x100003b7c
                           .text:100003b7c a8 03 5f f8                      ldr	x8, [x29,#-16]
                           .text:100003b80 a9 c3 9e b8                      ldrsw	x9, [x29,#-20]
                           .text:100003b84 00 79 69 f8                      ldr	x0, [x8,x9,lsl #3]
                           .text:100003b88 01 00 00 90                      adrp	x1, 0x100003000
                           .text:100003b8c 21 28 3e 91                      add	x1, x1, #0xf8a
                           .text:100003b90 62 00 80 d2                      mov	x2, #0x3                   	// #3
                           .text:100003b94 e4 00 00 94                      bl	0x100003f24
                           .text:100003b98 a0 01 00 35                      cbnz	w0, 0x100003bcc
                           .text:100003b9c 01 00 00 14                      b	0x100003ba0
                           .text:100003ba0 a8 03 5f f8                      ldr	x8, [x29,#-16]
                           .text:100003ba4 a9 c3 9e b8                      ldrsw	x9, [x29,#-20]
                           .text:100003ba8 08 79 69 f8                      ldr	x8, [x8,x9,lsl #3]
                           .text:100003bac 00 0d 00 91                      add	x0, x8, #0x3
                           .text:100003bb0 01 00 80 d2                      mov	x1, #0x0                   	// #0
                           .text:100003bb4 42 01 80 52                      mov	w2, #0xa                   	// #10
                           .text:100003bb8 de 00 00 94                      bl	0x100003f30
                           .text:100003bbc 29 00 00 b0                      adrp	x9, 0x100008000 <_NUM_ITERS>
                           .text:100003bc0 e8 03 00 aa                      mov	x8, x0
                           .text:100003bc4 28 01 00 b9                      str	w8, [x9]
                           .text:100003bc8 01 00 00 14                      b	0x100003bcc
                           .text:100003bcc a8 03 5f f8                      ldr	x8, [x29,#-16]
                           .text:100003bd0 a9 c3 9e b8                      ldrsw	x9, [x29,#-20]
                           .text:100003bd4 00 79 69 f8                      ldr	x0, [x8,x9,lsl #3]
                           .text:100003bd8 01 00 00 90                      adrp	x1, 0x100003000
                           .text:100003bdc 21 38 3e 91                      add	x1, x1, #0xf8e
                           .text:100003be0 ce 00 00 94                      bl	0x100003f18
                           .text:100003be4 c0 00 00 35                      cbnz	w0, 0x100003bfc
                           .text:100003be8 01 00 00 14                      b	0x100003bec
                           .text:100003bec 29 00 00 b0                      adrp	x9, 0x100008000 <_NUM_ITERS>
                           .text:100003bf0 28 00 80 52                      mov	w8, #0x1                   	// #1
                           .text:100003bf4 28 05 00 b9                      str	w8, [x9,#4]
                           .text:100003bf8 01 00 00 14                      b	0x100003bfc
                           .text:100003bfc 01 00 00 14                      b	0x100003c00
                           .text:100003c00 a8 c3 5e b8                      ldr	w8, [x29,#-20]
                           .text:100003c04 08 05 00 11                      add	w8, w8, #0x1
                           .text:100003c08 a8 c3 1e b8                      str	w8, [x29,#-20]
                           .text:100003c0c d7 ff ff 17                      b	0x100003b68
                           .text:100003c10 e0 01 80 52                      mov	w0, #0xf                   	// #15
                           .text:100003c14 01 00 00 90                      adrp	x1, 0x100003000
                           .text:100003c18 21 70 1c 91                      add	x1, x1, #0x71c
                           .text:100003c1c e1 07 00 f9                      str	x1, [sp,#8]
                           .text:100003c20 bb 00 00 94                      bl	0x100003f0c
                           .text:100003c24 e1 07 40 f9                      ldr	x1, [sp,#8]
                           .text:100003c28 c0 01 80 52                      mov	w0, #0xe                   	// #14
                           .text:100003c2c b8 00 00 94                      bl	0x100003f0c
                           .text:100003c30 e1 07 40 f9                      ldr	x1, [sp,#8]
                           .text:100003c34 40 00 80 52                      mov	w0, #0x2                   	// #2
                           .text:100003c38 b5 00 00 94                      bl	0x100003f0c
                           .text:100003c3c e0 83 00 91                      add	x0, sp, #0x20
                           .text:100003c40 03 00 80 d2                      mov	x3, #0x0                   	// #0
                           .text:100003c44 e3 0b 00 f9                      str	x3, [sp,#16]
                           .text:100003c48 e1 03 03 aa                      mov	x1, x3
                           .text:100003c4c 02 00 00 90                      adrp	x2, 0x100003000
                           .text:100003c50 42 90 1d 91                      add	x2, x2, #0x764
                           .text:100003c54 a8 00 00 94                      bl	0x100003ef4
                           .text:100003c58 e3 0b 40 f9                      ldr	x3, [sp,#16]
                           .text:100003c5c e0 63 00 91                      add	x0, sp, #0x18
                           .text:100003c60 e1 03 03 aa                      mov	x1, x3
                           .text:100003c64 02 00 00 90                      adrp	x2, 0x100003000
                           .text:100003c68 42 c0 25 91                      add	x2, x2, #0x970
                           .text:100003c6c a2 00 00 94                      bl	0x100003ef4
                           .text:100003c70 e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003c74 e0 0f 40 f9                      ldr	x0, [sp,#24]
                           .text:100003c78 a2 00 00 94                      bl	0x100003f00
                           .text:100003c7c e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003c80 e0 13 40 f9                      ldr	x0, [sp,#32]
                           .text:100003c84 9f 00 00 94                      bl	0x100003f00
                           .text:100003c88 a0 c3 5f b8                      ldr	w0, [x29,#-4]
                           .text:100003c8c fd 7b 44 a9                      ldp	x29, x30, [sp,#64]
                           .text:100003c90 ff 43 01 91                      add	sp, sp, #0x50
                           .text:100003c94 c0 03 5f d6                      ret

.text:100003c98 <__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_>:
                           .text:100003c98 ff 43 01 d1                      sub	sp, sp, #0x50
                           .text:100003c9c fd 7b 04 a9                      stp	x29, x30, [sp,#64]
                           .text:100003ca0 fd 03 01 91                      add	x29, sp, #0x40
                           .text:100003ca4 a0 03 1f f8                      str	x0, [x29,#-16]
                           .text:100003ca8 a1 83 1e f8                      str	x1, [x29,#-24]
                           .text:100003cac a8 03 5f f8                      ldr	x8, [x29,#-16]
                           .text:100003cb0 08 01 40 f9                      ldr	x8, [x8]
                           .text:100003cb4 e0 63 00 91                      add	x0, sp, #0x18
                           .text:100003cb8 e8 0f 00 f9                      str	x8, [sp,#24]
                           .text:100003cbc 1b 00 00 94                      bl	0x100003d28 <__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv>
                           .text:100003cc0 e0 07 00 f9                      str	x0, [sp,#8]
                           .text:100003cc4 a8 83 5e f8                      ldr	x8, [x29,#-24]
                           .text:100003cc8 08 01 40 f9                      ldr	x8, [x8]
                           .text:100003ccc e0 43 00 91                      add	x0, sp, #0x10
                           .text:100003cd0 e8 0b 00 f9                      str	x8, [sp,#16]
                           .text:100003cd4 15 00 00 94                      bl	0x100003d28 <__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv>
                           .text:100003cd8 e8 03 00 aa                      mov	x8, x0
                           .text:100003cdc e0 07 40 f9                      ldr	x0, [sp,#8]
                           .text:100003ce0 08 00 08 eb                      subs	x8, x0, x8
                           .text:100003ce4 e1 83 00 91                      add	x1, sp, #0x20
                           .text:100003ce8 e8 13 00 f9                      str	x8, [sp,#32]
                           .text:100003cec a0 23 00 d1                      sub	x0, x29, #0x8
                           .text:100003cf0 02 00 80 d2                      mov	x2, #0x0                   	// #0
                           .text:100003cf4 13 00 00 94                      bl	0x100003d40 <__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>
                           .text:100003cf8 a0 83 5f f8                      ldr	x0, [x29,#-8]
                           .text:100003cfc fd 7b 44 a9                      ldp	x29, x30, [sp,#64]
                           .text:100003d00 ff 43 01 91                      add	sp, sp, #0x50
                           .text:100003d04 c0 03 5f d6                      ret

.text:100003d08 <__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv>:
                           .text:100003d08 ff 43 00 d1                      sub	sp, sp, #0x10
                           .text:100003d0c e0 03 00 f9                      str	x0, [sp]
                           .text:100003d10 e8 03 40 f9                      ldr	x8, [sp]
                           .text:100003d14 08 01 40 f9                      ldr	x8, [x8]
                           .text:100003d18 e8 07 00 f9                      str	x8, [sp,#8]
                           .text:100003d1c e0 07 40 f9                      ldr	x0, [sp,#8]
                           .text:100003d20 ff 43 00 91                      add	sp, sp, #0x10
                           .text:100003d24 c0 03 5f d6                      ret

.text:100003d28 <__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv>:
                           .text:100003d28 ff 43 00 d1                      sub	sp, sp, #0x10
                           .text:100003d2c e0 07 00 f9                      str	x0, [sp,#8]
                           .text:100003d30 e8 07 40 f9                      ldr	x8, [sp,#8]
                           .text:100003d34 00 01 40 f9                      ldr	x0, [x8]
                           .text:100003d38 ff 43 00 91                      add	sp, sp, #0x10
                           .text:100003d3c c0 03 5f d6                      ret

.text:100003d40 <__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>:
                           .text:100003d40 ff c3 00 d1                      sub	sp, sp, #0x30
                           .text:100003d44 fd 7b 02 a9                      stp	x29, x30, [sp,#32]
                           .text:100003d48 fd 83 00 91                      add	x29, sp, #0x20
                           .text:100003d4c a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:100003d50 e1 0b 00 f9                      str	x1, [sp,#16]
                           .text:100003d54 e2 07 00 f9                      str	x2, [sp,#8]
                           .text:100003d58 a0 83 5f f8                      ldr	x0, [x29,#-8]
                           .text:100003d5c e0 03 00 f9                      str	x0, [sp]
                           .text:100003d60 e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003d64 e2 07 40 f9                      ldr	x2, [sp,#8]
                           .text:100003d68 05 00 00 94                      bl	0x100003d7c <__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>
                           .text:100003d6c e0 03 40 f9                      ldr	x0, [sp]
                           .text:100003d70 fd 7b 42 a9                      ldp	x29, x30, [sp,#32]
                           .text:100003d74 ff c3 00 91                      add	sp, sp, #0x30
                           .text:100003d78 c0 03 5f d6                      ret

.text:100003d7c <__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>:
                           .text:100003d7c ff 83 00 d1                      sub	sp, sp, #0x20
                           .text:100003d80 e0 0f 00 f9                      str	x0, [sp,#24]
                           .text:100003d84 e1 0b 00 f9                      str	x1, [sp,#16]
                           .text:100003d88 e2 07 00 f9                      str	x2, [sp,#8]
                           .text:100003d8c e0 0f 40 f9                      ldr	x0, [sp,#24]
                           .text:100003d90 e8 0b 40 f9                      ldr	x8, [sp,#16]
                           .text:100003d94 08 01 40 f9                      ldr	x8, [x8]
                           .text:100003d98 08 00 00 f9                      str	x8, [x0]
                           .text:100003d9c ff 83 00 91                      add	sp, sp, #0x20
                           .text:100003da0 c0 03 5f d6                      ret

.text:100003da4 <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE>:
                           .text:100003da4 ff 03 01 d1                      sub	sp, sp, #0x40
                           .text:100003da8 fd 7b 03 a9                      stp	x29, x30, [sp,#48]
                           .text:100003dac fd c3 00 91                      add	x29, sp, #0x30
                           .text:100003db0 a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:100003db4 a1 03 1f f8                      str	x1, [x29,#-16]
                           .text:100003db8 e2 0f 00 f9                      str	x2, [sp,#24]
                           .text:100003dbc a8 83 5f f8                      ldr	x8, [x29,#-8]
                           .text:100003dc0 e8 07 00 f9                      str	x8, [sp,#8]
                           .text:100003dc4 a0 03 5f f8                      ldr	x0, [x29,#-16]
                           .text:100003dc8 09 00 00 94                      bl	0x100003dec <__ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE>
                           .text:100003dcc e0 43 00 91                      add	x0, sp, #0x10
                           .text:100003dd0 e0 0b 00 fd                      str	d0, [sp,#16]
                           .text:100003dd4 e1 fe ff 97                      bl	0x100003958 <__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv>
                           .text:100003dd8 e0 07 40 f9                      ldr	x0, [sp,#8]
                           .text:100003ddc 00 00 00 fd                      str	d0, [x0]
                           .text:100003de0 fd 7b 43 a9                      ldp	x29, x30, [sp,#48]
                           .text:100003de4 ff 03 01 91                      add	sp, sp, #0x40
                           .text:100003de8 c0 03 5f d6                      ret

.text:100003dec <__ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE>:
                           .text:100003dec ff c3 00 d1                      sub	sp, sp, #0x30
                           .text:100003df0 fd 7b 02 a9                      stp	x29, x30, [sp,#32]
                           .text:100003df4 fd 83 00 91                      add	x29, sp, #0x20
                           .text:100003df8 e0 0b 00 f9                      str	x0, [sp,#16]
                           .text:100003dfc e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003e00 e0 3f 00 91                      add	x0, sp, #0xf
                           .text:100003e04 06 00 00 94                      bl	0x100003e1c <__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_>
                           .text:100003e08 a0 83 1f fc                      str	d0, [x29,#-8]
                           .text:100003e0c a0 83 5f fc                      ldr	d0, [x29,#-8]
                           .text:100003e10 fd 7b 42 a9                      ldp	x29, x30, [sp,#32]
                           .text:100003e14 ff c3 00 91                      add	sp, sp, #0x30
                           .text:100003e18 c0 03 5f d6                      ret

.text:100003e1c <__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_>:
                           .text:100003e1c ff c3 00 d1                      sub	sp, sp, #0x30
                           .text:100003e20 fd 7b 02 a9                      stp	x29, x30, [sp,#32]
                           .text:100003e24 fd 83 00 91                      add	x29, sp, #0x20
                           .text:100003e28 e0 0b 00 f9                      str	x0, [sp,#16]
                           .text:100003e2c e1 07 00 f9                      str	x1, [sp,#8]
                           .text:100003e30 e0 07 40 f9                      ldr	x0, [sp,#8]
                           .text:100003e34 bd ff ff 97                      bl	0x100003d28 <__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv>
                           .text:100003e38 00 00 62 9e                      scvtf	d0, x0
                           .text:100003e3c 08 00 00 90                      adrp	x8, 0x100003000
                           .text:100003e40 01 a5 47 fd                      ldr	d1, [x8,#3912]
                           .text:100003e44 00 18 61 1e                      fdiv	d0, d0, d1
                           .text:100003e48 e1 03 00 91                      mov	x1, sp
                           .text:100003e4c e0 03 00 fd                      str	d0, [sp]
                           .text:100003e50 a0 23 00 d1                      sub	x0, x29, #0x8
                           .text:100003e54 02 00 80 d2                      mov	x2, #0x0                   	// #0
                           .text:100003e58 05 00 00 94                      bl	0x100003e6c <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>
                           .text:100003e5c a0 83 5f fc                      ldr	d0, [x29,#-8]
                           .text:100003e60 fd 7b 42 a9                      ldp	x29, x30, [sp,#32]
                           .text:100003e64 ff c3 00 91                      add	sp, sp, #0x30
                           .text:100003e68 c0 03 5f d6                      ret

.text:100003e6c <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>:
                           .text:100003e6c ff c3 00 d1                      sub	sp, sp, #0x30
                           .text:100003e70 fd 7b 02 a9                      stp	x29, x30, [sp,#32]
                           .text:100003e74 fd 83 00 91                      add	x29, sp, #0x20
                           .text:100003e78 a0 83 1f f8                      str	x0, [x29,#-8]
                           .text:100003e7c e1 0b 00 f9                      str	x1, [sp,#16]
                           .text:100003e80 e2 07 00 f9                      str	x2, [sp,#8]
                           .text:100003e84 a0 83 5f f8                      ldr	x0, [x29,#-8]
                           .text:100003e88 e0 03 00 f9                      str	x0, [sp]
                           .text:100003e8c e1 0b 40 f9                      ldr	x1, [sp,#16]
                           .text:100003e90 e2 07 40 f9                      ldr	x2, [sp,#8]
                           .text:100003e94 05 00 00 94                      bl	0x100003ea8 <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>
                           .text:100003e98 e0 03 40 f9                      ldr	x0, [sp]
                           .text:100003e9c fd 7b 42 a9                      ldp	x29, x30, [sp,#32]
                           .text:100003ea0 ff c3 00 91                      add	sp, sp, #0x30
                           .text:100003ea4 c0 03 5f d6                      ret

.text:100003ea8 <__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE>:
                           .text:100003ea8 ff 83 00 d1                      sub	sp, sp, #0x20
                           .text:100003eac e0 0f 00 f9                      str	x0, [sp,#24]
                           .text:100003eb0 e1 0b 00 f9                      str	x1, [sp,#16]
                           .text:100003eb4 e2 07 00 f9                      str	x2, [sp,#8]
                           .text:100003eb8 e0 0f 40 f9                      ldr	x0, [sp,#24]
                           .text:100003ebc e8 0b 40 f9                      ldr	x8, [sp,#16]
                           .text:100003ec0 00 01 40 fd                      ldr	d0, [x8]
                           .text:100003ec4 00 00 00 fd                      str	d0, [x0]
                           .text:100003ec8 ff 83 00 91                      add	sp, sp, #0x20
                           .text:100003ecc c0 03 5f d6                      ret
                  __TEXT.__stubs:100003ed0 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003ed4 10 02 40 f9                      ldr	x16, [x16]
                  __TEXT.__stubs:100003ed8 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003edc 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003ee0 10 06 40 f9                      ldr	x16, [x16,#8]
                  __TEXT.__stubs:100003ee4 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003ee8 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003eec 10 0a 40 f9                      ldr	x16, [x16,#16]
                  __TEXT.__stubs:100003ef0 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003ef4 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003ef8 10 0e 40 f9                      ldr	x16, [x16,#24]
                  __TEXT.__stubs:100003efc 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f00 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f04 10 12 40 f9                      ldr	x16, [x16,#32]
                  __TEXT.__stubs:100003f08 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f0c 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f10 10 16 40 f9                      ldr	x16, [x16,#40]
                  __TEXT.__stubs:100003f14 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f18 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f1c 10 1a 40 f9                      ldr	x16, [x16,#48]
                  __TEXT.__stubs:100003f20 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f24 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f28 10 1e 40 f9                      ldr	x16, [x16,#56]
                  __TEXT.__stubs:100003f2c 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f30 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f34 10 22 40 f9                      ldr	x16, [x16,#64]
                  __TEXT.__stubs:100003f38 00 02 1f d6                      br	x16
                  __TEXT.__stubs:100003f3c 10 00 00 b0                      adrp	x16, 0x100004000
                  __TEXT.__stubs:100003f40 10 26 40 f9                      ldr	x16, [x16,#72]
                  __TEXT.__stubs:100003f44 00 02 1f d6                      br	x16
                          .const:100003f48 00                               0x00 
                          .const:100003f49 00                               0x00 
                          .const:100003f4a 00                               0x00 
                          .const:100003f4b 00                               0x00 
                          .const:100003f4c 65                               0x65 'e'
                          .const:100003f4d cd                               0xcd 
                          .const:100003f4e cd                               0xcd 
                          .const:100003f4f 41                               0x41 'A'
                        .cstring:100003f50 6b                               0x6b 'k'
                        .cstring:100003f51 65                               0x65 'e'
                        .cstring:100003f52 72                               0x72 'r'
                        .cstring:100003f53 6e                               0x6e 'n'
                        .cstring:100003f54 2e                               0x2e '.'
                        .cstring:100003f55 74                               0x74 't'
                        .cstring:100003f56 73                               0x73 's'
                        .cstring:100003f57 6f                               0x6f 'o'
                        .cstring:100003f58 5f                               0x5f '_'
                        .cstring:100003f59 65                               0x65 'e'
                        .cstring:100003f5a 6e                               0x6e 'n'
                        .cstring:100003f5b 61                               0x61 'a'
                        .cstring:100003f5c 62                               0x62 'b'
                        .cstring:100003f5d 6c                               0x6c 'l'
                        .cstring:100003f5e 65                               0x65 'e'
                        .cstring:100003f5f 00                               0x00 
                        .cstring:100003f60 54                               0x54 'T'
                        .cstring:100003f61 53                               0x53 'S'
                        .cstring:100003f62 4f                               0x4f 'O'
                        .cstring:100003f63 3a                               0x3a ':'
                        .cstring:100003f64 20                               0x20 ' '
                        .cstring:100003f65 25                               0x25 '%'
                        .cstring:100003f66 64                               0x64 'd'
                        .cstring:100003f67 0a                               0x0a '
'
                        .cstring:100003f68 00                               0x00 
                        .cstring:100003f69 53                               0x53 'S'
                        .cstring:100003f6a 65                               0x65 'e'
                        .cstring:100003f6b 74                               0x74 't'
                        .cstring:100003f6c 20                               0x20 ' '
                        .cstring:100003f6d 72                               0x72 'r'
                        .cstring:100003f6e 75                               0x75 'u'
                        .cstring:100003f6f 6e                               0x6e 'n'
                        .cstring:100003f70 74                               0x74 't'
                        .cstring:100003f71 69                               0x69 'i'
                        .cstring:100003f72 6d                               0x6d 'm'
                        .cstring:100003f73 65                               0x65 'e'
                        .cstring:100003f74 20                               0x20 ' '
                        .cstring:100003f75 25                               0x25 '%'
                        .cstring:100003f76 66                               0x66 'f'
                        .cstring:100003f77 0a                               0x0a '
'
                        .cstring:100003f78 00                               0x00 
                        .cstring:100003f79 54                               0x54 'T'
                        .cstring:100003f7a 65                               0x65 'e'
                        .cstring:100003f7b 73                               0x73 's'
                        .cstring:100003f7c 74                               0x74 't'
                        .cstring:100003f7d 20                               0x20 ' '
                        .cstring:100003f7e 72                               0x72 'r'
                        .cstring:100003f7f 75                               0x75 'u'
                        .cstring:100003f80 6e                               0x6e 'n'
                        .cstring:100003f81 74                               0x74 't'
                        .cstring:100003f82 69                               0x69 'i'
                        .cstring:100003f83 6d                               0x6d 'm'
                        .cstring:100003f84 65                               0x65 'e'
                        .cstring:100003f85 20                               0x20 ' '
                        .cstring:100003f86 25                               0x25 '%'
                        .cstring:100003f87 66                               0x66 'f'
                        .cstring:100003f88 0a                               0x0a '
'
                        .cstring:100003f89 00                               0x00 
                        .cstring:100003f8a 2d                               0x2d '-'
                        .cstring:100003f8b 49                               0x49 'I'
                        .cstring:100003f8c 3d                               0x3d '='
                        .cstring:100003f8d 00                               0x00 
                        .cstring:100003f8e 2d                               0x2d '-'
                        .cstring:100003f8f 74                               0x74 't'
                        .cstring:100003f90 73                               0x73 's'
                        .cstring:100003f91 6f                               0x6f 'o'
                        .cstring:100003f92 00                               0x00 
            __TEXT.__unwind_info:100003f94 01 00 00 00                      .inst	0x00000001 ; undefined
            __TEXT.__unwind_info:100003f98 1c 00 00 00                      .inst	0x0000001c ; undefined
            __TEXT.__unwind_info:100003f9c 03 00 00 00                      .inst	0x00000003 ; undefined
            __TEXT.__unwind_info:100003fa0 28 00 00 00                      .inst	0x00000028 ; undefined
            __TEXT.__unwind_info:100003fa4 00 00 00 00                      .inst	0x00000000 ; undefined
            __TEXT.__unwind_info:100003fa8 28 00 00 00                      .inst	0x00000028 ; undefined
            __TEXT.__unwind_info:100003fac 02 00 00 00                      .inst	0x00000002 ; undefined
            __TEXT.__unwind_info:100003fb0 00 00 00 04                      .inst	0x04000000 ; undefined
            __TEXT.__unwind_info:100003fb4 00 10 00 02                      .inst	0x02001000 ; undefined
            __TEXT.__unwind_info:100003fb8 00 20 00 02                      .inst	0x02002000 ; undefined
            __TEXT.__unwind_info:100003fbc 1c 37 00 00                      .inst	0x0000371c ; undefined
            __TEXT.__unwind_info:100003fc0 40 00 00 00                      .inst	0x00000040 ; undefined
            __TEXT.__unwind_info:100003fc4 40 00 00 00                      .inst	0x00000040 ; undefined
            __TEXT.__unwind_info:100003fc8 d1 3e 00 00                      .inst	0x00003ed1 ; undefined
            __TEXT.__unwind_info:100003fcc 00 00 00 00                      .inst	0x00000000 ; undefined
            __TEXT.__unwind_info:100003fd0 40 00 00 00                      .inst	0x00000040 ; undefined
            __TEXT.__unwind_info:100003fd4 03 00 00 00                      .inst	0x00000003 ; undefined
            __TEXT.__unwind_info:100003fd8 0c 00 08 00                      .inst	0x0008000c ; undefined
            __TEXT.__unwind_info:100003fdc 2c 00 00 00                      .inst	0x0000002c ; undefined
            __TEXT.__unwind_info:100003fe0 00 00 00 00                      .inst	0x00000000 ; undefined
            __TEXT.__unwind_info:100003fe4 3c 02 00 01                      .inst	0x0100023c ; undefined
            __TEXT.__unwind_info:100003fe8 54 02 00 00                      .inst	0x00000254 ; undefined
            __TEXT.__unwind_info:100003fec ec 05 00 01                      .inst	0x010005ec ; undefined
            __TEXT.__unwind_info:100003ff0 24 06 00 00                      .inst	0x00000624 ; undefined
            __TEXT.__unwind_info:100003ff4 60 06 00 02                      .inst	0x02000660 ; undefined
            __TEXT.__unwind_info:100003ff8 88 06 00 00                      .inst	0x00000688 ; undefined
            __TEXT.__unwind_info:100003ffc 8c 07 00 02                      .inst	0x0200078c ; undefined
              __DATA_CONST.__got:100004000 00                               0x00 
              __DATA_CONST.__got:100004001 00                               0x00 
              __DATA_CONST.__got:100004002 00                               0x00 
              __DATA_CONST.__got:100004003 00                               0x00 
              __DATA_CONST.__got:100004004 00                               0x00 
              __DATA_CONST.__got:100004005 00                               0x00 
              __DATA_CONST.__got:100004006 10                               0x10 
              __DATA_CONST.__got:100004007 80                               0x80 
              __DATA_CONST.__got:100004008 01                               0x01 
              __DATA_CONST.__got:100004009 00                               0x00 
              __DATA_CONST.__got:10000400a 00                               0x00 
              __DATA_CONST.__got:10000400b 00                               0x00 
              __DATA_CONST.__got:10000400c 00                               0x00 
              __DATA_CONST.__got:10000400d 00                               0x00 
              __DATA_CONST.__got:10000400e 10                               0x10 
              __DATA_CONST.__got:10000400f 80                               0x80 
              __DATA_CONST.__got:100004010 02                               0x02 
              __DATA_CONST.__got:100004011 00                               0x00 
              __DATA_CONST.__got:100004012 00                               0x00 
              __DATA_CONST.__got:100004013 00                               0x00 
              __DATA_CONST.__got:100004014 00                               0x00 
              __DATA_CONST.__got:100004015 00                               0x00 
              __DATA_CONST.__got:100004016 10                               0x10 
              __DATA_CONST.__got:100004017 80                               0x80 
              __DATA_CONST.__got:100004018 03                               0x03 
              __DATA_CONST.__got:100004019 00                               0x00 
              __DATA_CONST.__got:10000401a 00                               0x00 
              __DATA_CONST.__got:10000401b 00                               0x00 
              __DATA_CONST.__got:10000401c 00                               0x00 
              __DATA_CONST.__got:10000401d 00                               0x00 
              __DATA_CONST.__got:10000401e 10                               0x10 
              __DATA_CONST.__got:10000401f 80                               0x80 
              __DATA_CONST.__got:100004020 04                               0x04 
              __DATA_CONST.__got:100004021 00                               0x00 
              __DATA_CONST.__got:100004022 00                               0x00 
              __DATA_CONST.__got:100004023 00                               0x00 
              __DATA_CONST.__got:100004024 00                               0x00 
              __DATA_CONST.__got:100004025 00                               0x00 
              __DATA_CONST.__got:100004026 10                               0x10 
              __DATA_CONST.__got:100004027 80                               0x80 
              __DATA_CONST.__got:100004028 05                               0x05 
              __DATA_CONST.__got:100004029 00                               0x00 
              __DATA_CONST.__got:10000402a 00                               0x00 
              __DATA_CONST.__got:10000402b 00                               0x00 
              __DATA_CONST.__got:10000402c 00                               0x00 
              __DATA_CONST.__got:10000402d 00                               0x00 
              __DATA_CONST.__got:10000402e 10                               0x10 
              __DATA_CONST.__got:10000402f 80                               0x80 
              __DATA_CONST.__got:100004030 06                               0x06 
              __DATA_CONST.__got:100004031 00                               0x00 
              __DATA_CONST.__got:100004032 00                               0x00 
              __DATA_CONST.__got:100004033 00                               0x00 
              __DATA_CONST.__got:100004034 00                               0x00 
              __DATA_CONST.__got:100004035 00                               0x00 
              __DATA_CONST.__got:100004036 10                               0x10 
              __DATA_CONST.__got:100004037 80                               0x80 
              __DATA_CONST.__got:100004038 07                               0x07 
              __DATA_CONST.__got:100004039 00                               0x00 
              __DATA_CONST.__got:10000403a 00                               0x00 
              __DATA_CONST.__got:10000403b 00                               0x00 
              __DATA_CONST.__got:10000403c 00                               0x00 
              __DATA_CONST.__got:10000403d 00                               0x00 
              __DATA_CONST.__got:10000403e 10                               0x10 
              __DATA_CONST.__got:10000403f 80                               0x80 
              __DATA_CONST.__got:100004040 08                               0x08 
              __DATA_CONST.__got:100004041 00                               0x00 
              __DATA_CONST.__got:100004042 00                               0x00 
              __DATA_CONST.__got:100004043 00                               0x00 
              __DATA_CONST.__got:100004044 00                               0x00 
              __DATA_CONST.__got:100004045 00                               0x00 
              __DATA_CONST.__got:100004046 10                               0x10 
              __DATA_CONST.__got:100004047 80                               0x80 
              __DATA_CONST.__got:100004048 09                               0x09 '	'
              __DATA_CONST.__got:100004049 00                               0x00 
              __DATA_CONST.__got:10000404a 00                               0x00 
              __DATA_CONST.__got:10000404b 00                               0x00 
              __DATA_CONST.__got:10000404c 00                               0x00 
              __DATA_CONST.__got:10000404d 00                               0x00 
              __DATA_CONST.__got:10000404e 00                               0x00 
              __DATA_CONST.__got:10000404f 80                               0x80 
                           .data:100008000 10                               0x10 
                           .data:100008001 27                               0x27 '''
                           .data:100008002 00                               0x00 
                           .data:100008003 00                               0x00 
