
build/turing_learn:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 c9 7f 00 00 	mov    rax,QWORD PTR [rip+0x7fc9]        # 8fd8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <strlen@plt-0x10>:
    1020:	ff 35 ca 7f 00 00    	push   QWORD PTR [rip+0x7fca]        # 8ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 7f 00 00    	jmp    QWORD PTR [rip+0x7fcc]        # 8ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <strlen@plt>:
    1030:	ff 25 ca 7f 00 00    	jmp    QWORD PTR [rip+0x7fca]        # 9000 <strlen@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <std::__throw_length_error(char const*)@plt>:
    1040:	ff 25 c2 7f 00 00    	jmp    QWORD PTR [rip+0x7fc2]        # 9008 <std::__throw_length_error(char const*)@GLIBCXX_3.4>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <memset@plt>:
    1050:	ff 25 ba 7f 00 00    	jmp    QWORD PTR [rip+0x7fba]        # 9010 <memset@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <memcpy@plt>:
    1060:	ff 25 b2 7f 00 00    	jmp    QWORD PTR [rip+0x7fb2]        # 9018 <memcpy@GLIBC_2.14>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <operator new(unsigned long)@plt>:
    1070:	ff 25 aa 7f 00 00    	jmp    QWORD PTR [rip+0x7faa]        # 9020 <operator new(unsigned long)@GLIBCXX_3.4>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <operator delete(void*, unsigned long)@plt>:
    1080:	ff 25 a2 7f 00 00    	jmp    QWORD PTR [rip+0x7fa2]        # 9028 <operator delete(void*, unsigned long)@CXXABI_1.3.9>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <__stack_chk_fail@plt>:
    1090:	ff 25 9a 7f 00 00    	jmp    QWORD PTR [rip+0x7f9a]        # 9030 <__stack_chk_fail@GLIBC_2.4>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>:
    10a0:	ff 25 92 7f 00 00    	jmp    QWORD PTR [rip+0x7f92]        # 9038 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@GLIBCXX_3.4.9>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>:
    10b0:	ff 25 8a 7f 00 00    	jmp    QWORD PTR [rip+0x7f8a]        # 9040 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@GLIBCXX_3.4.21>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <_Unwind_Resume@plt>:
    10c0:	ff 25 82 7f 00 00    	jmp    QWORD PTR [rip+0x7f82]        # 9048 <_Unwind_Resume@GCC_3.0>
    10c6:	68 09 00 00 00       	push   0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

00000000000010e0 <main.cold>:
    10e0:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    10e5:	e8 c6 ff ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    10ea:	48 89 e7             	mov    rdi,rsp
    10ed:	e8 be ff ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    10f2:	48 8b 84 24 68 50 00 	mov    rax,QWORD PTR [rsp+0x5068]
    10f9:	00 
    10fa:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1101:	00 00 
    1103:	75 08                	jne    110d <main.cold+0x2d>
    1105:	48 89 df             	mov    rdi,rbx
    1108:	e8 b3 ff ff ff       	call   10c0 <_Unwind_Resume@plt>
    110d:	e8 7e ff ff ff       	call   1090 <__stack_chk_fail@plt>
    1112:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1119:	00 00 00 
    111c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001120 <main>:
    1120:	53                   	push   rbx
    1121:	48 81 ec 70 50 00 00 	sub    rsp,0x5070
    1128:	64 48 8b 3c 25 28 00 	mov    rdi,QWORD PTR fs:0x28
    112f:	00 00 
    1131:	48 89 bc 24 68 50 00 	mov    QWORD PTR [rsp+0x5068],rdi
    1138:	00 
    1139:	bf b4 1b 00 00       	mov    edi,0x1bb4
    113e:	e8 2d ff ff ff       	call   1070 <operator new(unsigned long)@plt>
    1143:	ba b3 1b 00 00       	mov    edx,0x1bb3
    1148:	48 8d 35 f1 3e 00 00 	lea    rsi,[rip+0x3ef1]        # 5040 <_IO_stdin_used+0x40>
    114f:	48 c7 44 24 10 b3 1b 	mov    QWORD PTR [rsp+0x10],0x1bb3
    1156:	00 00 
    1158:	48 89 c3             	mov    rbx,rax
    115b:	48 89 c7             	mov    rdi,rax
    115e:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    1162:	e8 f9 fe ff ff       	call   1060 <memcpy@plt>
    1167:	c6 83 b3 1b 00 00 00 	mov    BYTE PTR [rbx+0x1bb3],0x0
    116e:	31 f6                	xor    esi,esi
    1170:	ba 10 27 00 00       	mov    edx,0x2710
    1175:	48 8d bc 24 08 02 00 	lea    rdi,[rsp+0x208]
    117c:	00 
    117d:	48 c7 44 24 08 b3 1b 	mov    QWORD PTR [rsp+0x8],0x1bb3
    1184:	00 00 
    1186:	e8 c5 fe ff ff       	call   1050 <memset@plt>
    118b:	be 10 00 00 00       	mov    esi,0x10
    1190:	b9 11 00 00 00       	mov    ecx,0x11
    1195:	c7 84 24 18 29 00 00 	mov    DWORD PTR [rsp+0x2918],0x100011
    119c:	11 00 10 00 
    11a0:	b8 10 00 00 00       	mov    eax,0x10
    11a5:	41 b8 01 00 00 00    	mov    r8d,0x1
    11ab:	eb 52                	jmp    11ff <main+0xdf>
    11ad:	0f 1f 00             	nop    DWORD PTR [rax]
    11b0:	66 39 c1             	cmp    cx,ax
    11b3:	0f 82 8f 00 00 00    	jb     1248 <main+0x128>
    11b9:	66 39 f0             	cmp    ax,si
    11bc:	72 72                	jb     1230 <main+0x110>
    11be:	44 89 84 24 18 29 00 	mov    DWORD PTR [rsp+0x2918],r8d
    11c5:	00 
    11c6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    11cd:	00 00 00 
    11d0:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
    11d7:	00 
    11d8:	48 83 c0 01          	add    rax,0x1
    11dc:	48 c1 e9 03          	shr    rcx,0x3
    11e0:	88 94 0c 08 02 00 00 	mov    BYTE PTR [rsp+rcx*1+0x208],dl
    11e7:	0f b7 8c 24 18 29 00 	movzx  ecx,WORD PTR [rsp+0x2918]
    11ee:	00 
    11ef:	0f b7 b4 24 1a 29 00 	movzx  esi,WORD PTR [rsp+0x291a]
    11f6:	00 
    11f7:	48 3d c3 1b 00 00    	cmp    rax,0x1bc3
    11fd:	74 61                	je     1260 <main+0x140>
    11ff:	0f b6 54 03 f0       	movzx  edx,BYTE PTR [rbx+rax*1-0x10]
    1204:	89 c7                	mov    edi,eax
    1206:	80 ea 2f             	sub    dl,0x2f
    1209:	74 a5                	je     11b0 <main+0x90>
    120b:	66 39 c8             	cmp    ax,cx
    120e:	73 08                	jae    1218 <main+0xf8>
    1210:	66 89 84 24 18 29 00 	mov    WORD PTR [rsp+0x2918],ax
    1217:	00 
    1218:	66 39 fe             	cmp    si,di
    121b:	73 b3                	jae    11d0 <main+0xb0>
    121d:	66 89 bc 24 1a 29 00 	mov    WORD PTR [rsp+0x291a],di
    1224:	00 
    1225:	eb a9                	jmp    11d0 <main+0xb0>
    1227:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    122e:	00 00 
    1230:	66 39 c1             	cmp    cx,ax
    1233:	75 9b                	jne    11d0 <main+0xb0>
    1235:	83 c1 01             	add    ecx,0x1
    1238:	66 89 8c 24 18 29 00 	mov    WORD PTR [rsp+0x2918],cx
    123f:	00 
    1240:	eb 8e                	jmp    11d0 <main+0xb0>
    1242:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1248:	66 39 f0             	cmp    ax,si
    124b:	75 83                	jne    11d0 <main+0xb0>
    124d:	83 ee 01             	sub    esi,0x1
    1250:	66 89 b4 24 1a 29 00 	mov    WORD PTR [rsp+0x291a],si
    1257:	00 
    1258:	e9 73 ff ff ff       	jmp    11d0 <main+0xb0>
    125d:	0f 1f 00             	nop    DWORD PTR [rax]
    1260:	f3 0f 7e 05 c8 7a 00 	movq   xmm0,QWORD PTR [rip+0x7ac8]        # 8d30 <vtable for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x28>
    1267:	00 
    1268:	48 8d 05 59 7a 00 00 	lea    rax,[rip+0x7a59]        # 8cc8 <vtable for turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x10>
    126f:	66 89 b4 24 42 50 00 	mov    WORD PTR [rsp+0x5042],si
    1276:	00 
    1277:	48 8d bc 24 30 29 00 	lea    rdi,[rsp+0x2930]
    127e:	00 
    127f:	66 48 0f 6e c8       	movq   xmm1,rax
    1284:	ba 10 27 00 00       	mov    edx,0x2710
    1289:	48 8d b4 24 08 02 00 	lea    rsi,[rsp+0x208]
    1290:	00 
    1291:	66 89 8c 24 40 50 00 	mov    WORD PTR [rsp+0x5040],cx
    1298:	00 
    1299:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    129d:	0f 29 84 24 20 29 00 	movaps XMMWORD PTR [rsp+0x2920],xmm0
    12a4:	00 
    12a5:	e8 b6 fd ff ff       	call   1060 <memcpy@plt>
    12aa:	ba 00 01 00 00       	mov    edx,0x100
    12af:	48 8d 84 24 28 29 00 	lea    rax,[rsp+0x2928]
    12b6:	00 
    12b7:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
    12bc:	48 89 84 24 48 50 00 	mov    QWORD PTR [rsp+0x5048],rax
    12c3:	00 
    12c4:	b8 10 00 00 00       	mov    eax,0x10
    12c9:	66 89 84 24 50 50 00 	mov    WORD PTR [rsp+0x5050],ax
    12d0:	00 
    12d1:	66 89 94 24 58 50 00 	mov    WORD PTR [rsp+0x5058],dx
    12d8:	00 
    12d9:	c6 84 24 5a 50 00 00 	mov    BYTE PTR [rsp+0x505a],0x0
    12e0:	00 
    12e1:	e8 7a 0a 00 00       	call   1d60 <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()>
    12e6:	b8 a7 40 79 01       	mov    eax,0x17940a7
    12eb:	48 83 e8 01          	sub    rax,0x1
    12ef:	74 10                	je     1301 <main+0x1e1>
    12f1:	0f b6 94 24 59 50 00 	movzx  edx,BYTE PTR [rsp+0x5059]
    12f8:	00 
    12f9:	84 d2                	test   dl,dl
    12fb:	0f 85 9f 00 00 00    	jne    13a0 <main+0x280>
    1301:	48 8d b4 24 20 29 00 	lea    rsi,[rsp+0x2920]
    1308:	00 
    1309:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    130e:	e8 bd 0c 00 00       	call   1fd0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const>
    1313:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    1318:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
    131d:	48 8d 3d 5c 7d 00 00 	lea    rdi,[rip+0x7d5c]        # 9080 <std::cout@GLIBCXX_3.4>
    1324:	e8 77 fd ff ff       	call   10a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
    1329:	ba 01 00 00 00       	mov    edx,0x1
    132e:	48 8d 35 04 3d 00 00 	lea    rsi,[rip+0x3d04]        # 5039 <_IO_stdin_used+0x39>
    1335:	48 89 c7             	mov    rdi,rax
    1338:	e8 63 fd ff ff       	call   10a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
    133d:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    1342:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
    1347:	48 39 c7             	cmp    rdi,rax
    134a:	74 0e                	je     135a <main+0x23a>
    134c:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    1351:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1355:	e8 26 fd ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    135a:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    135e:	48 8d 44 24 10       	lea    rax,[rsp+0x10]
    1363:	48 39 c7             	cmp    rdi,rax
    1366:	74 0e                	je     1376 <main+0x256>
    1368:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    136d:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1371:	e8 0a fd ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    1376:	48 8b 84 24 68 50 00 	mov    rax,QWORD PTR [rsp+0x5068]
    137d:	00 
    137e:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1385:	00 00 
    1387:	0f 85 04 01 00 00    	jne    1491 <main+0x371>
    138d:	48 81 c4 70 50 00 00 	add    rsp,0x5070
    1394:	31 c0                	xor    eax,eax
    1396:	5b                   	pop    rbx
    1397:	c3                   	ret
    1398:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    139f:	00 
    13a0:	48 8b 8c 24 48 50 00 	mov    rcx,QWORD PTR [rsp+0x5048]
    13a7:	00 
    13a8:	48 8d 14 52          	lea    rdx,[rdx+rdx*2]
    13ac:	44 0f b7 84 24 50 50 	movzx  r8d,WORD PTR [rsp+0x5050]
    13b3:	00 00 
    13b5:	42 0f b6 74 01 08    	movzx  esi,BYTE PTR [rcx+r8*1+0x8]
    13bb:	44 0f b7 89 18 27 00 	movzx  r9d,WORD PTR [rcx+0x2718]
    13c2:	00 
    13c3:	4c 89 c7             	mov    rdi,r8
    13c6:	44 0f b7 91 1a 27 00 	movzx  r10d,WORD PTR [rcx+0x271a]
    13cd:	00 
    13ce:	48 01 f2             	add    rdx,rsi
    13d1:	48 8d 14 52          	lea    rdx,[rdx+rdx*2]
    13d5:	48 8d 74 d4 48       	lea    rsi,[rsp+rdx*8+0x48]
    13da:	0f b6 56 10          	movzx  edx,BYTE PTR [rsi+0x10]
    13de:	84 d2                	test   dl,dl
    13e0:	75 2e                	jne    1410 <main+0x2f0>
    13e2:	66 45 39 c1          	cmp    r9w,r8w
    13e6:	0f 82 93 00 00 00    	jb     147f <main+0x35f>
    13ec:	66 45 39 d0          	cmp    r8w,r10w
    13f0:	0f 83 7d 00 00 00    	jae    1473 <main+0x353>
    13f6:	66 45 39 c1          	cmp    r9w,r8w
    13fa:	75 2f                	jne    142b <main+0x30b>
    13fc:	41 83 c1 01          	add    r9d,0x1
    1400:	66 44 89 89 18 27 00 	mov    WORD PTR [rcx+0x2718],r9w
    1407:	00 
    1408:	eb 21                	jmp    142b <main+0x30b>
    140a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1410:	66 45 39 c8          	cmp    r8w,r9w
    1414:	73 08                	jae    141e <main+0x2fe>
    1416:	66 44 89 81 18 27 00 	mov    WORD PTR [rcx+0x2718],r8w
    141d:	00 
    141e:	66 41 39 fa          	cmp    r10w,di
    1422:	73 07                	jae    142b <main+0x30b>
    1424:	66 89 b9 1a 27 00 00 	mov    WORD PTR [rcx+0x271a],di
    142b:	42 88 54 01 08       	mov    BYTE PTR [rcx+r8*1+0x8],dl
    1430:	0f b6 56 12          	movzx  edx,BYTE PTR [rsi+0x12]
    1434:	83 e2 03             	and    edx,0x3
    1437:	74 2f                	je     1468 <main+0x348>
    1439:	80 fa 02             	cmp    dl,0x2
    143c:	75 09                	jne    1447 <main+0x327>
    143e:	66 83 84 24 50 50 00 	add    WORD PTR [rsp+0x5050],0x1
    1445:	00 01 
    1447:	0f b6 56 11          	movzx  edx,BYTE PTR [rsi+0x11]
    144b:	88 94 24 59 50 00 00 	mov    BYTE PTR [rsp+0x5059],dl
    1452:	80 bc 24 5a 50 00 00 	cmp    BYTE PTR [rsp+0x505a],0x0
    1459:	00 
    145a:	0f 84 8b fe ff ff    	je     12eb <main+0x1cb>
    1460:	e9 9c fe ff ff       	jmp    1301 <main+0x1e1>
    1465:	0f 1f 00             	nop    DWORD PTR [rax]
    1468:	66 83 ac 24 50 50 00 	sub    WORD PTR [rsp+0x5050],0x1
    146f:	00 01 
    1471:	eb d4                	jmp    1447 <main+0x327>
    1473:	c7 81 18 27 00 00 01 	mov    DWORD PTR [rcx+0x2718],0x1
    147a:	00 00 00 
    147d:	eb ac                	jmp    142b <main+0x30b>
    147f:	66 45 39 d0          	cmp    r8w,r10w
    1483:	75 a6                	jne    142b <main+0x30b>
    1485:	83 ef 01             	sub    edi,0x1
    1488:	66 89 b9 1a 27 00 00 	mov    WORD PTR [rcx+0x271a],di
    148f:	eb 9a                	jmp    142b <main+0x30b>
    1491:	e8 fa fb ff ff       	call   1090 <__stack_chk_fail@plt>
    1496:	48 89 c3             	mov    rbx,rax
    1499:	e9 42 fc ff ff       	jmp    10e0 <main.cold>
    149e:	48 89 c3             	mov    rbx,rax
    14a1:	e9 44 fc ff ff       	jmp    10ea <main.cold+0xa>
    14a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    14ad:	00 00 00 

00000000000014b0 <_start>:
    14b0:	f3 0f 1e fa          	endbr64
    14b4:	31 ed                	xor    ebp,ebp
    14b6:	49 89 d1             	mov    r9,rdx
    14b9:	5e                   	pop    rsi
    14ba:	48 89 e2             	mov    rdx,rsp
    14bd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    14c1:	50                   	push   rax
    14c2:	54                   	push   rsp
    14c3:	45 31 c0             	xor    r8d,r8d
    14c6:	31 c9                	xor    ecx,ecx
    14c8:	48 8d 3d 51 fc ff ff 	lea    rdi,[rip+0xfffffffffffffc51]        # 1120 <main>
    14cf:	ff 15 f3 7a 00 00    	call   QWORD PTR [rip+0x7af3]        # 8fc8 <__libc_start_main@GLIBC_2.34>
    14d5:	f4                   	hlt
    14d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    14dd:	00 00 00 

00000000000014e0 <deregister_tm_clones>:
    14e0:	48 8d 3d 81 7b 00 00 	lea    rdi,[rip+0x7b81]        # 9068 <__TMC_END__>
    14e7:	48 8d 05 7a 7b 00 00 	lea    rax,[rip+0x7b7a]        # 9068 <__TMC_END__>
    14ee:	48 39 f8             	cmp    rax,rdi
    14f1:	74 15                	je     1508 <deregister_tm_clones+0x28>
    14f3:	48 8b 05 d6 7a 00 00 	mov    rax,QWORD PTR [rip+0x7ad6]        # 8fd0 <_ITM_deregisterTMCloneTable>
    14fa:	48 85 c0             	test   rax,rax
    14fd:	74 09                	je     1508 <deregister_tm_clones+0x28>
    14ff:	ff e0                	jmp    rax
    1501:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1508:	c3                   	ret
    1509:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001510 <register_tm_clones>:
    1510:	48 8d 3d 51 7b 00 00 	lea    rdi,[rip+0x7b51]        # 9068 <__TMC_END__>
    1517:	48 8d 35 4a 7b 00 00 	lea    rsi,[rip+0x7b4a]        # 9068 <__TMC_END__>
    151e:	48 29 fe             	sub    rsi,rdi
    1521:	48 89 f0             	mov    rax,rsi
    1524:	48 c1 ee 3f          	shr    rsi,0x3f
    1528:	48 c1 f8 03          	sar    rax,0x3
    152c:	48 01 c6             	add    rsi,rax
    152f:	48 d1 fe             	sar    rsi,1
    1532:	74 14                	je     1548 <register_tm_clones+0x38>
    1534:	48 8b 05 a5 7a 00 00 	mov    rax,QWORD PTR [rip+0x7aa5]        # 8fe0 <_ITM_registerTMCloneTable>
    153b:	48 85 c0             	test   rax,rax
    153e:	74 08                	je     1548 <register_tm_clones+0x38>
    1540:	ff e0                	jmp    rax
    1542:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1548:	c3                   	ret
    1549:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001550 <__do_global_dtors_aux>:
    1550:	f3 0f 1e fa          	endbr64
    1554:	80 3d 35 7c 00 00 00 	cmp    BYTE PTR [rip+0x7c35],0x0        # 9190 <completed.0>
    155b:	75 33                	jne    1590 <__do_global_dtors_aux+0x40>
    155d:	55                   	push   rbp
    155e:	48 83 3d 5a 7a 00 00 	cmp    QWORD PTR [rip+0x7a5a],0x0        # 8fc0 <__cxa_finalize@GLIBC_2.2.5>
    1565:	00 
    1566:	48 89 e5             	mov    rbp,rsp
    1569:	74 0d                	je     1578 <__do_global_dtors_aux+0x28>
    156b:	48 8b 3d e6 7a 00 00 	mov    rdi,QWORD PTR [rip+0x7ae6]        # 9058 <__dso_handle>
    1572:	ff 15 48 7a 00 00    	call   QWORD PTR [rip+0x7a48]        # 8fc0 <__cxa_finalize@GLIBC_2.2.5>
    1578:	e8 63 ff ff ff       	call   14e0 <deregister_tm_clones>
    157d:	c6 05 0c 7c 00 00 01 	mov    BYTE PTR [rip+0x7c0c],0x1        # 9190 <completed.0>
    1584:	5d                   	pop    rbp
    1585:	c3                   	ret
    1586:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    158d:	00 00 00 
    1590:	c3                   	ret
    1591:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1595:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    159c:	00 00 00 00 

00000000000015a0 <frame_dummy>:
    15a0:	f3 0f 1e fa          	endbr64
    15a4:	e9 67 ff ff ff       	jmp    1510 <register_tm_clones>
    15a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000015b0 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Tape()>:
    15b0:	c3                   	ret
    15b1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15b8:	00 00 00 
    15bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Memory()>:
    15c0:	c3                   	ret
    15c1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15c8:	00 00 00 
    15cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015d0 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Program()>:
    15d0:	c3                   	ret
    15d1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15d8:	00 00 00 
    15db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015e0 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Utm()>:
    15e0:	c3                   	ret
    15e1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15e8:	00 00 00 
    15eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015f0 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    15f0:	b8 b8 01 00 00       	mov    eax,0x1b8
    15f5:	c3                   	ret
    15f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15fd:	00 00 00 

0000000000001600 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1600:	b8 30 4e 00 00       	mov    eax,0x4e30
    1605:	c3                   	ret
    1606:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    160d:	00 00 00 

0000000000001610 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Tape()>:
    1610:	be 20 27 00 00       	mov    esi,0x2720
    1615:	e9 66 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    161a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001620 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Memory()>:
    1620:	be 40 27 00 00       	mov    esi,0x2740
    1625:	e9 56 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    162a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001630 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Program()>:
    1630:	be b8 01 00 00       	mov    esi,0x1b8
    1635:	e9 46 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    163a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001640 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Utm()>:
    1640:	be 28 00 00 00       	mov    esi,0x28
    1645:	e9 36 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    164a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001650 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1650:	b8 80 75 00 00       	mov    eax,0x7580
    1655:	c3                   	ret
    1656:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    165d:	00 00 00 

0000000000001660 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1660:	48 83 ec 18          	sub    rsp,0x18
    1664:	48 89 fa             	mov    rdx,rdi
    1667:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
    166b:	48 8d 35 7e ff ff ff 	lea    rsi,[rip+0xffffffffffffff7e]        # 15f0 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>
    1672:	b9 e0 01 00 00       	mov    ecx,0x1e0
    1677:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    167a:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
    167e:	48 39 f0             	cmp    rax,rsi
    1681:	75 2d                	jne    16b0 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x50>
    1683:	48 8b 7a 10          	mov    rdi,QWORD PTR [rdx+0x10]
    1687:	48 8d 35 c2 ff ff ff 	lea    rsi,[rip+0xffffffffffffffc2]        # 1650 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>
    168e:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    1691:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
    1695:	b8 80 75 00 00       	mov    eax,0x7580
    169a:	48 39 f2             	cmp    rdx,rsi
    169d:	75 29                	jne    16c8 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x68>
    169f:	48 01 c8             	add    rax,rcx
    16a2:	48 83 c4 18          	add    rsp,0x18
    16a6:	c3                   	ret
    16a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    16ae:	00 00 
    16b0:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    16b5:	ff d0                	call   rax
    16b7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    16bc:	48 8d 48 28          	lea    rcx,[rax+0x28]
    16c0:	eb c1                	jmp    1683 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x23>
    16c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    16c8:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    16cd:	ff d2                	call   rdx
    16cf:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    16d4:	48 83 c4 18          	add    rsp,0x18
    16d8:	48 01 c8             	add    rax,rcx
    16db:	c3                   	ret
    16dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000016e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>:
    16e0:	41 56                	push   r14
    16e2:	41 54                	push   r12
    16e4:	49 89 f4             	mov    r12,rsi
    16e7:	55                   	push   rbp
    16e8:	53                   	push   rbx
    16e9:	48 89 fb             	mov    rbx,rdi
    16ec:	48 89 f7             	mov    rdi,rsi
    16ef:	48 83 ec 28          	sub    rsp,0x28
    16f3:	e8 38 f9 ff ff       	call   1030 <strlen@plt>
    16f8:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    16fc:	49 89 c0             	mov    r8,rax
    16ff:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    1706:	ff ff 7f 
    1709:	48 89 c1             	mov    rcx,rax
    170c:	48 29 d1             	sub    rcx,rdx
    170f:	4c 39 c1             	cmp    rcx,r8
    1712:	0f 82 32 03 00 00    	jb     1a4a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x36a>
    1718:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    171b:	4c 8d 4b 10          	lea    r9,[rbx+0x10]
    171f:	49 8d 2c 10          	lea    rbp,[r8+rdx*1]
    1723:	4c 39 c9             	cmp    rcx,r9
    1726:	0f 84 94 01 00 00    	je     18c0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x1e0>
    172c:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
    1730:	48 39 ee             	cmp    rsi,rbp
    1733:	72 3b                	jb     1770 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x90>
    1735:	4d 85 c0             	test   r8,r8
    1738:	74 1c                	je     1756 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    173a:	48 8d 3c 11          	lea    rdi,[rcx+rdx*1]
    173e:	49 83 f8 01          	cmp    r8,0x1
    1742:	0f 84 48 02 00 00    	je     1990 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2b0>
    1748:	4c 89 c2             	mov    rdx,r8
    174b:	4c 89 e6             	mov    rsi,r12
    174e:	e8 0d f9 ff ff       	call   1060 <memcpy@plt>
    1753:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    1756:	c6 04 29 00          	mov    BYTE PTR [rcx+rbp*1],0x0
    175a:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
    175e:	48 83 c4 28          	add    rsp,0x28
    1762:	5b                   	pop    rbx
    1763:	5d                   	pop    rbp
    1764:	41 5c                	pop    r12
    1766:	41 5e                	pop    r14
    1768:	c3                   	ret
    1769:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1770:	48 39 e8             	cmp    rax,rbp
    1773:	0f 82 c5 02 00 00    	jb     1a3e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x35e>
    1779:	48 8d 3c 36          	lea    rdi,[rsi+rsi*1]
    177d:	49 89 fe             	mov    r14,rdi
    1780:	48 39 fd             	cmp    rbp,rdi
    1783:	0f 83 c7 00 00 00    	jae    1850 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x170>
    1789:	48 8d 7f 01          	lea    rdi,[rdi+0x1]
    178d:	4c 39 f0             	cmp    rax,r14
    1790:	73 0d                	jae    179f <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xbf>
    1792:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    1799:	ff ff 7f 
    179c:	49 89 c6             	mov    r14,rax
    179f:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    17a4:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    17a9:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    17ae:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    17b2:	e8 b9 f8 ff ff       	call   1070 <operator new(unsigned long)@plt>
    17b7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    17bb:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    17c0:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    17c5:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    17ca:	49 89 c2             	mov    r10,rax
    17cd:	48 85 d2             	test   rdx,rdx
    17d0:	0f 84 ca 01 00 00    	je     19a0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2c0>
    17d6:	48 83 fa 01          	cmp    rdx,0x1
    17da:	0f 84 10 02 00 00    	je     19f0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x310>
    17e0:	48 89 ce             	mov    rsi,rcx
    17e3:	4c 89 d7             	mov    rdi,r10
    17e6:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    17eb:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    17f0:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    17f5:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    17f9:	e8 62 f8 ff ff       	call   1060 <memcpy@plt>
    17fe:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1803:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    1807:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    180c:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    1811:	49 89 c2             	mov    r10,rax
    1814:	4d 85 c0             	test   r8,r8
    1817:	0f 85 3c 01 00 00    	jne    1959 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x279>
    181d:	4c 39 c9             	cmp    rcx,r9
    1820:	0f 84 fa 01 00 00    	je     1a20 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x340>
    1826:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    182a:	48 89 cf             	mov    rdi,rcx
    182d:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    1831:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1835:	e8 46 f8 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    183a:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    183e:	4c 89 d1             	mov    rcx,r10
    1841:	4c 89 13             	mov    QWORD PTR [rbx],r10
    1844:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    1848:	e9 09 ff ff ff       	jmp    1756 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    184d:	0f 1f 00             	nop    DWORD PTR [rax]
    1850:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    1854:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1859:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    185e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    1863:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    1867:	e8 04 f8 ff ff       	call   1070 <operator new(unsigned long)@plt>
    186c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    1870:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    1875:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    187a:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    187f:	49 89 c2             	mov    r10,rax
    1882:	48 85 d2             	test   rdx,rdx
    1885:	0f 85 45 01 00 00    	jne    19d0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2f0>
    188b:	4c 89 d7             	mov    rdi,r10
    188e:	4c 89 c2             	mov    rdx,r8
    1891:	4c 89 e6             	mov    rsi,r12
    1894:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    1898:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    189d:	e8 be f7 ff ff       	call   1060 <memcpy@plt>
    18a2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    18a6:	49 89 c2             	mov    r10,rax
    18a9:	48 3b 4c 24 08       	cmp    rcx,QWORD PTR [rsp+0x8]
    18ae:	0f 84 74 01 00 00    	je     1a28 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x348>
    18b4:	49 89 ee             	mov    r14,rbp
    18b7:	e9 6a ff ff ff       	jmp    1826 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x146>
    18bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    18c0:	48 83 fd 0f          	cmp    rbp,0xf
    18c4:	0f 86 6b fe ff ff    	jbe    1735 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x55>
    18ca:	48 39 e8             	cmp    rax,rbp
    18cd:	0f 82 6b 01 00 00    	jb     1a3e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x35e>
    18d3:	48 83 fd 1d          	cmp    rbp,0x1d
    18d7:	0f 86 e3 00 00 00    	jbe    19c0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2e0>
    18dd:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    18e1:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    18e6:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    18eb:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    18f0:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    18f4:	e8 77 f7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    18f9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    18fd:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    1902:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    1907:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    190c:	49 89 c2             	mov    r10,rax
    190f:	48 85 d2             	test   rdx,rdx
    1912:	0f 84 73 ff ff ff    	je     188b <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x1ab>
    1918:	48 83 fa 01          	cmp    rdx,0x1
    191c:	0f 84 11 01 00 00    	je     1a33 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x353>
    1922:	48 89 ce             	mov    rsi,rcx
    1925:	48 89 c7             	mov    rdi,rax
    1928:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    192d:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    1932:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1937:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    193b:	e8 20 f7 ff ff       	call   1060 <memcpy@plt>
    1940:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1945:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    194a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    194f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    1953:	49 89 c2             	mov    r10,rax
    1956:	49 89 ee             	mov    r14,rbp
    1959:	49 8d 3c 12          	lea    rdi,[r10+rdx*1]
    195d:	49 83 f8 01          	cmp    r8,0x1
    1961:	74 7d                	je     19e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x300>
    1963:	4c 89 c2             	mov    rdx,r8
    1966:	4c 89 e6             	mov    rsi,r12
    1969:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    196e:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    1973:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    1977:	e8 e4 f6 ff ff       	call   1060 <memcpy@plt>
    197c:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    1981:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    1986:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    198a:	e9 8e fe ff ff       	jmp    181d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    198f:	90                   	nop
    1990:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    1995:	88 07                	mov    BYTE PTR [rdi],al
    1997:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    199a:	e9 b7 fd ff ff       	jmp    1756 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    199f:	90                   	nop
    19a0:	48 89 c7             	mov    rdi,rax
    19a3:	49 83 f8 01          	cmp    r8,0x1
    19a7:	75 ba                	jne    1963 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x283>
    19a9:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    19ae:	41 88 02             	mov    BYTE PTR [r10],al
    19b1:	e9 67 fe ff ff       	jmp    181d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    19b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    19bd:	00 00 00 
    19c0:	41 be 1e 00 00 00    	mov    r14d,0x1e
    19c6:	bf 1f 00 00 00       	mov    edi,0x1f
    19cb:	e9 cf fd ff ff       	jmp    179f <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xbf>
    19d0:	49 89 ee             	mov    r14,rbp
    19d3:	e9 fe fd ff ff       	jmp    17d6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xf6>
    19d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    19df:	00 
    19e0:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    19e5:	88 07                	mov    BYTE PTR [rdi],al
    19e7:	e9 31 fe ff ff       	jmp    181d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    19ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    19f0:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    19f3:	41 88 02             	mov    BYTE PTR [r10],al
    19f6:	4d 85 c0             	test   r8,r8
    19f9:	0f 84 1e fe ff ff    	je     181d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    19ff:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    1a03:	49 83 f8 01          	cmp    r8,0x1
    1a07:	0f 85 56 ff ff ff    	jne    1963 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x283>
    1a0d:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    1a12:	41 88 42 01          	mov    BYTE PTR [r10+0x1],al
    1a16:	e9 02 fe ff ff       	jmp    181d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    1a1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1a20:	4c 89 d1             	mov    rcx,r10
    1a23:	e9 19 fe ff ff       	jmp    1841 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x161>
    1a28:	4c 89 d1             	mov    rcx,r10
    1a2b:	49 89 ee             	mov    r14,rbp
    1a2e:	e9 0e fe ff ff       	jmp    1841 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x161>
    1a33:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    1a36:	41 88 02             	mov    BYTE PTR [r10],al
    1a39:	e9 18 ff ff ff       	jmp    1956 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x276>
    1a3e:	48 8d 3d d4 35 00 00 	lea    rdi,[rip+0x35d4]        # 5019 <_IO_stdin_used+0x19>
    1a45:	e8 f6 f5 ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    1a4a:	48 8d 3d b3 35 00 00 	lea    rdi,[rip+0x35b3]        # 5004 <_IO_stdin_used+0x4>
    1a51:	e8 ea f5 ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    1a56:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1a5d:	00 00 00 

0000000000001a60 <std::__cxx11::to_string(int)>:
    1a60:	48 81 ec 18 01 00 00 	sub    rsp,0x118
    1a67:	41 89 f1             	mov    r9d,esi
    1a6a:	41 89 f2             	mov    r10d,esi
    1a6d:	41 89 f3             	mov    r11d,esi
    1a70:	41 f7 d9             	neg    r9d
    1a73:	48 89 9c 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rbx
    1a7a:	00 
    1a7b:	48 8d 5f 10          	lea    rbx,[rdi+0x10]
    1a7f:	44 0f 48 ce          	cmovs  r9d,esi
    1a83:	41 c1 ea 1f          	shr    r10d,0x1f
    1a87:	41 c1 eb 1f          	shr    r11d,0x1f
    1a8b:	64 4c 8b 04 25 28 00 	mov    r8,QWORD PTR fs:0x28
    1a92:	00 00 
    1a94:	4c 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r8
    1a9b:	00 
    1a9c:	49 89 f8             	mov    r8,rdi
    1a9f:	41 83 f9 09          	cmp    r9d,0x9
    1aa3:	0f 86 87 02 00 00    	jbe    1d30 <std::__cxx11::to_string(int)+0x2d0>
    1aa9:	44 89 c9             	mov    ecx,r9d
    1aac:	be 01 00 00 00       	mov    esi,0x1
    1ab1:	48 bf 4b 59 86 38 d6 	movabs rdi,0x346dc5d63886594b
    1ab8:	c5 6d 34 
    1abb:	eb 37                	jmp    1af4 <std::__cxx11::to_string(int)+0x94>
    1abd:	0f 1f 00             	nop    DWORD PTR [rax]
    1ac0:	81 f9 e7 03 00 00    	cmp    ecx,0x3e7
    1ac6:	0f 86 24 02 00 00    	jbe    1cf0 <std::__cxx11::to_string(int)+0x290>
    1acc:	81 f9 0f 27 00 00    	cmp    ecx,0x270f
    1ad2:	0f 86 28 02 00 00    	jbe    1d00 <std::__cxx11::to_string(int)+0x2a0>
    1ad8:	89 c8                	mov    eax,ecx
    1ada:	48 f7 e7             	mul    rdi
    1add:	8d 46 04             	lea    eax,[rsi+0x4]
    1ae0:	48 c1 ea 0b          	shr    rdx,0xb
    1ae4:	81 f9 9f 86 01 00    	cmp    ecx,0x1869f
    1aea:	0f 86 20 02 00 00    	jbe    1d10 <std::__cxx11::to_string(int)+0x2b0>
    1af0:	89 c6                	mov    esi,eax
    1af2:	89 d1                	mov    ecx,edx
    1af4:	83 f9 63             	cmp    ecx,0x63
    1af7:	77 c7                	ja     1ac0 <std::__cxx11::to_string(int)+0x60>
    1af9:	8d 46 01             	lea    eax,[rsi+0x1]
    1afc:	41 01 c2             	add    r10d,eax
    1aff:	49 89 18             	mov    QWORD PTR [r8],rbx
    1b02:	45 89 d2             	mov    r10d,r10d
    1b05:	41 c6 40 10 00       	mov    BYTE PTR [r8+0x10],0x0
    1b0a:	49 83 fa 0f          	cmp    r10,0xf
    1b0e:	76 61                	jbe    1b71 <std::__cxx11::to_string(int)+0x111>
    1b10:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
    1b17:	00 
    1b18:	49 83 fa 1d          	cmp    r10,0x1d
    1b1c:	0f 86 fe 01 00 00    	jbe    1d20 <std::__cxx11::to_string(int)+0x2c0>
    1b22:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    1b26:	4d 89 d6             	mov    r14,r10
    1b29:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1b2e:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
    1b33:	44 89 4c 24 0c       	mov    DWORD PTR [rsp+0xc],r9d
    1b38:	89 74 24 08          	mov    DWORD PTR [rsp+0x8],esi
    1b3c:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    1b40:	e8 2b f5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    1b45:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1b4a:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
    1b4f:	44 8b 4c 24 0c       	mov    r9d,DWORD PTR [rsp+0xc]
    1b54:	8b 74 24 08          	mov    esi,DWORD PTR [rsp+0x8]
    1b58:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1b5b:	48 89 c3             	mov    rbx,rax
    1b5e:	49 89 00             	mov    QWORD PTR [r8],rax
    1b61:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    1b65:	4d 89 70 10          	mov    QWORD PTR [r8+0x10],r14
    1b69:	4c 8b b4 24 10 01 00 	mov    r14,QWORD PTR [rsp+0x110]
    1b70:	00 
    1b71:	66 0f 6f 05 e7 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51e7]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    1b78:	00 
    1b79:	c6 03 2d             	mov    BYTE PTR [rbx],0x2d
    1b7c:	4a 8d 0c 1b          	lea    rcx,[rbx+r11*1]
    1b80:	0f 29 44 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm0
    1b85:	66 0f 6f 05 e3 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51e3]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    1b8c:	00 
    1b8d:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
    1b92:	66 0f 6f 05 e6 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51e6]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    1b99:	00 
    1b9a:	0f 29 44 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm0
    1b9f:	66 0f 6f 05 e9 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51e9]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    1ba6:	00 
    1ba7:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
    1bac:	66 0f 6f 05 ec 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51ec]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    1bb3:	00 
    1bb4:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
    1bb9:	66 0f 6f 05 ef 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51ef]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    1bc0:	00 
    1bc1:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
    1bc6:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    1bcd:	00 
    1bce:	0f 29 84 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm0
    1bd5:	00 
    1bd6:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    1bdd:	00 
    1bde:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    1be5:	00 
    1be6:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    1bed:	00 
    1bee:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    1bf5:	00 
    1bf6:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    1bfd:	00 
    1bfe:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    1c05:	00 
    1c06:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    1c0d:	00 
    1c0e:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    1c15:	00 
    1c16:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    1c1d:	00 
    1c1e:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    1c25:	00 
    1c26:	66 0f 6f 05 f2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51f2]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    1c2d:	00 
    1c2e:	0f 11 84 24 d9 00 00 	movups XMMWORD PTR [rsp+0xd9],xmm0
    1c35:	00 
    1c36:	41 83 f9 63          	cmp    r9d,0x63
    1c3a:	0f 86 90 00 00 00    	jbe    1cd0 <std::__cxx11::to_string(int)+0x270>
    1c40:	44 89 ca             	mov    edx,r9d
    1c43:	44 89 c8             	mov    eax,r9d
    1c46:	48 69 d2 1f 85 eb 51 	imul   rdx,rdx,0x51eb851f
    1c4d:	48 c1 ea 25          	shr    rdx,0x25
    1c51:	6b fa 64             	imul   edi,edx,0x64
    1c54:	29 f8                	sub    eax,edi
    1c56:	44 89 cf             	mov    edi,r9d
    1c59:	41 89 d1             	mov    r9d,edx
    1c5c:	89 f2                	mov    edx,esi
    1c5e:	01 c0                	add    eax,eax
    1c60:	44 8d 58 01          	lea    r11d,[rax+0x1]
    1c64:	0f b6 44 04 20       	movzx  eax,BYTE PTR [rsp+rax*1+0x20]
    1c69:	46 0f b6 5c 1c 20    	movzx  r11d,BYTE PTR [rsp+r11*1+0x20]
    1c6f:	44 88 1c 11          	mov    BYTE PTR [rcx+rdx*1],r11b
    1c73:	8d 56 ff             	lea    edx,[rsi-0x1]
    1c76:	83 ee 02             	sub    esi,0x2
    1c79:	88 04 11             	mov    BYTE PTR [rcx+rdx*1],al
    1c7c:	81 ff 0f 27 00 00    	cmp    edi,0x270f
    1c82:	77 bc                	ja     1c40 <std::__cxx11::to_string(int)+0x1e0>
    1c84:	81 ff e7 03 00 00    	cmp    edi,0x3e7
    1c8a:	77 44                	ja     1cd0 <std::__cxx11::to_string(int)+0x270>
    1c8c:	41 83 c1 30          	add    r9d,0x30
    1c90:	44 88 09             	mov    BYTE PTR [rcx],r9b
    1c93:	49 8b 00             	mov    rax,QWORD PTR [r8]
    1c96:	42 c6 04 10 00       	mov    BYTE PTR [rax+r10*1],0x0
    1c9b:	4d 89 50 08          	mov    QWORD PTR [r8+0x8],r10
    1c9f:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
    1ca6:	00 
    1ca7:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1cae:	00 00 
    1cb0:	0f 85 8f 00 00 00    	jne    1d45 <std::__cxx11::to_string(int)+0x2e5>
    1cb6:	48 8b 9c 24 08 01 00 	mov    rbx,QWORD PTR [rsp+0x108]
    1cbd:	00 
    1cbe:	4c 89 c0             	mov    rax,r8
    1cc1:	48 81 c4 18 01 00 00 	add    rsp,0x118
    1cc8:	c3                   	ret
    1cc9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1cd0:	45 01 c9             	add    r9d,r9d
    1cd3:	41 8d 41 01          	lea    eax,[r9+0x1]
    1cd7:	46 0f b6 4c 0c 20    	movzx  r9d,BYTE PTR [rsp+r9*1+0x20]
    1cdd:	0f b6 44 04 20       	movzx  eax,BYTE PTR [rsp+rax*1+0x20]
    1ce2:	88 41 01             	mov    BYTE PTR [rcx+0x1],al
    1ce5:	eb a9                	jmp    1c90 <std::__cxx11::to_string(int)+0x230>
    1ce7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    1cee:	00 00 
    1cf0:	8d 46 02             	lea    eax,[rsi+0x2]
    1cf3:	83 c6 01             	add    esi,0x1
    1cf6:	e9 01 fe ff ff       	jmp    1afc <std::__cxx11::to_string(int)+0x9c>
    1cfb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1d00:	8d 46 03             	lea    eax,[rsi+0x3]
    1d03:	83 c6 02             	add    esi,0x2
    1d06:	e9 f1 fd ff ff       	jmp    1afc <std::__cxx11::to_string(int)+0x9c>
    1d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1d10:	83 c6 03             	add    esi,0x3
    1d13:	e9 e4 fd ff ff       	jmp    1afc <std::__cxx11::to_string(int)+0x9c>
    1d18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1d1f:	00 
    1d20:	41 be 1e 00 00 00    	mov    r14d,0x1e
    1d26:	bf 1f 00 00 00       	mov    edi,0x1f
    1d2b:	e9 f9 fd ff ff       	jmp    1b29 <std::__cxx11::to_string(int)+0xc9>
    1d30:	49 89 18             	mov    QWORD PTR [r8],rbx
    1d33:	41 83 c2 01          	add    r10d,0x1
    1d37:	4a 8d 0c 1b          	lea    rcx,[rbx+r11*1]
    1d3b:	41 c6 40 10 2d       	mov    BYTE PTR [r8+0x10],0x2d
    1d40:	e9 47 ff ff ff       	jmp    1c8c <std::__cxx11::to_string(int)+0x22c>
    1d45:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
    1d4c:	00 
    1d4d:	e8 3e f3 ff ff       	call   1090 <__stack_chk_fail@plt>
    1d52:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1d59:	00 00 00 
    1d5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001d60 <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()>:
    1d60:	48 83 ec 28          	sub    rsp,0x28
    1d64:	48 8d 97 b8 01 00 00 	lea    rdx,[rdi+0x1b8]
    1d6b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1d72:	00 00 
    1d74:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    1d79:	48 8d 05 98 6f 00 00 	lea    rax,[rip+0x6f98]        # 8d18 <vtable for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x10>
    1d80:	48 89 07             	mov    QWORD PTR [rdi],rax
    1d83:	48 8d 47 08          	lea    rax,[rdi+0x8]
    1d87:	0f 1f 00             	nop    DWORD PTR [rax]
    1d8a:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d91:	00 00 00 00 
    1d95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1d9c:	00 00 00 00 
    1da0:	48 c7 00 ff ff ff ff 	mov    QWORD PTR [rax],0xffffffffffffffff
    1da7:	48 83 c0 18          	add    rax,0x18
    1dab:	c6 40 fa 00          	mov    BYTE PTR [rax-0x6],0x0
    1daf:	48 39 c2             	cmp    rdx,rax
    1db2:	75 ec                	jne    1da0 <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()+0x40>
    1db4:	b8 01 01 00 00       	mov    eax,0x101
    1db9:	c6 44 24 08 01       	mov    BYTE PTR [rsp+0x8],0x1
    1dbe:	b9 02 01 00 00       	mov    ecx,0x102
    1dc3:	be 00 03 00 00       	mov    esi,0x300
    1dc8:	66 89 47 70          	mov    WORD PTR [rdi+0x70],ax
    1dcc:	41 b8 03 02 00 00    	mov    r8d,0x203
    1dd2:	41 b9 01 03 00 00    	mov    r9d,0x301
    1dd8:	41 ba 03 01 00 00    	mov    r10d,0x103
    1dde:	48 c7 44 24 09 00 00 	mov    QWORD PTR [rsp+0x9],0x0
    1de5:	00 00 
    1de7:	0f b7 54 24 08       	movzx  edx,WORD PTR [rsp+0x8]
    1dec:	41 bb 04 01 00 00    	mov    r11d,0x104
    1df2:	66 89 47 78          	mov    WORD PTR [rdi+0x78],ax
    1df6:	b8 01 02 00 00       	mov    eax,0x201
    1dfb:	c6 44 24 08 02       	mov    BYTE PTR [rsp+0x8],0x2
    1e00:	66 89 87 88 00 00 00 	mov    WORD PTR [rdi+0x88],ax
    1e07:	66 89 87 90 00 00 00 	mov    WORD PTR [rdi+0x90],ax
    1e0e:	66 89 87 c0 00 00 00 	mov    WORD PTR [rdi+0xc0],ax
    1e15:	0f b7 44 24 08       	movzx  eax,WORD PTR [rsp+0x8]
    1e1a:	66 89 57 58          	mov    WORD PTR [rdi+0x58],dx
    1e1e:	ba 00 05 00 00       	mov    edx,0x500
    1e23:	48 c7 47 68 ff ff ff 	mov    QWORD PTR [rdi+0x68],0xffffffffffffffff
    1e2a:	ff 
    1e2b:	c6 47 7a 02          	mov    BYTE PTR [rdi+0x7a],0x2
    1e2f:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0xffffffffffffffff
    1e36:	ff ff ff ff 
    1e3a:	c6 87 92 00 00 00 00 	mov    BYTE PTR [rdi+0x92],0x0
    1e41:	48 c7 04 24 ff ff ff 	mov    QWORD PTR [rsp],0xffffffffffffffff
    1e48:	ff 
    1e49:	48 c7 47 50 ff ff ff 	mov    QWORD PTR [rdi+0x50],0xffffffffffffffff
    1e50:	ff 
    1e51:	66 89 57 60          	mov    WORD PTR [rdi+0x60],dx
    1e55:	c6 47 62 00          	mov    BYTE PTR [rdi+0x62],0x0
    1e59:	48 c7 87 b0 00 00 00 	mov    QWORD PTR [rdi+0xb0],0xffffffffffffffff
    1e60:	ff ff ff ff 
    1e64:	66 89 8f b8 00 00 00 	mov    WORD PTR [rdi+0xb8],cx
    1e6b:	c6 87 c2 00 00 00 00 	mov    BYTE PTR [rdi+0xc2],0x0
    1e72:	48 c7 87 98 00 00 00 	mov    QWORD PTR [rdi+0x98],0xffffffffffffffff
    1e79:	ff ff ff ff 
    1e7d:	66 89 87 a0 00 00 00 	mov    WORD PTR [rdi+0xa0],ax
    1e84:	66 89 b7 a8 00 00 00 	mov    WORD PTR [rdi+0xa8],si
    1e8b:	c6 87 aa 00 00 00 00 	mov    BYTE PTR [rdi+0xaa],0x0
    1e92:	48 c7 87 10 01 00 00 	mov    QWORD PTR [rdi+0x110],0xffffffffffffffff
    1e99:	ff ff ff ff 
    1e9d:	66 44 89 87 18 01 00 	mov    WORD PTR [rdi+0x118],r8w
    1ea4:	00 
    1ea5:	66 44 89 8f 20 01 00 	mov    WORD PTR [rdi+0x120],r9w
    1eac:	00 
    1ead:	c6 87 22 01 00 00 00 	mov    BYTE PTR [rdi+0x122],0x0
    1eb4:	c6 44 24 08 03       	mov    BYTE PTR [rsp+0x8],0x3
    1eb9:	48 c7 87 e0 00 00 00 	mov    QWORD PTR [rdi+0xe0],0xffffffffffffffff
    1ec0:	ff ff ff ff 
    1ec4:	0f b7 44 24 08       	movzx  eax,WORD PTR [rsp+0x8]
    1ec9:	c6 44 24 08 04       	mov    BYTE PTR [rsp+0x8],0x4
    1ece:	66 89 87 e8 00 00 00 	mov    WORD PTR [rdi+0xe8],ax
    1ed5:	b8 02 04 00 00       	mov    eax,0x402
    1eda:	66 89 87 f0 00 00 00 	mov    WORD PTR [rdi+0xf0],ax
    1ee1:	66 89 87 08 01 00 00 	mov    WORD PTR [rdi+0x108],ax
    1ee8:	b8 01 04 00 00       	mov    eax,0x401
    1eed:	66 89 87 50 01 00 00 	mov    WORD PTR [rdi+0x150],ax
    1ef4:	0f b7 44 24 08       	movzx  eax,WORD PTR [rsp+0x8]
    1ef9:	c6 44 24 08 05       	mov    BYTE PTR [rsp+0x8],0x5
    1efe:	66 89 87 30 01 00 00 	mov    WORD PTR [rdi+0x130],ax
    1f05:	b8 00 01 00 00       	mov    eax,0x100
    1f0a:	66 89 87 38 01 00 00 	mov    WORD PTR [rdi+0x138],ax
    1f11:	b8 05 01 00 00       	mov    eax,0x105
    1f16:	66 89 87 90 01 00 00 	mov    WORD PTR [rdi+0x190],ax
    1f1d:	0f b7 44 24 08       	movzx  eax,WORD PTR [rsp+0x8]
    1f22:	c6 87 f2 00 00 00 02 	mov    BYTE PTR [rdi+0xf2],0x2
    1f29:	66 89 87 78 01 00 00 	mov    WORD PTR [rdi+0x178],ax
    1f30:	31 c0                	xor    eax,eax
    1f32:	48 c7 87 f8 00 00 00 	mov    QWORD PTR [rdi+0xf8],0xffffffffffffffff
    1f39:	ff ff ff ff 
    1f3d:	66 44 89 97 00 01 00 	mov    WORD PTR [rdi+0x100],r10w
    1f44:	00 
    1f45:	c6 87 0a 01 00 00 02 	mov    BYTE PTR [rdi+0x10a],0x2
    1f4c:	48 c7 87 40 01 00 00 	mov    QWORD PTR [rdi+0x140],0xffffffffffffffff
    1f53:	ff ff ff ff 
    1f57:	66 44 89 9f 48 01 00 	mov    WORD PTR [rdi+0x148],r11w
    1f5e:	00 
    1f5f:	c6 87 52 01 00 00 02 	mov    BYTE PTR [rdi+0x152],0x2
    1f66:	48 c7 87 28 01 00 00 	mov    QWORD PTR [rdi+0x128],0xffffffffffffffff
    1f6d:	ff ff ff ff 
    1f71:	c6 87 3a 01 00 00 02 	mov    BYTE PTR [rdi+0x13a],0x2
    1f78:	48 c7 87 88 01 00 00 	mov    QWORD PTR [rdi+0x188],0xffffffffffffffff
    1f7f:	ff ff ff ff 
    1f83:	66 89 97 98 01 00 00 	mov    WORD PTR [rdi+0x198],dx
    1f8a:	c6 87 9a 01 00 00 00 	mov    BYTE PTR [rdi+0x19a],0x0
    1f91:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
    1f98:	00 00 
    1f9a:	48 c7 87 70 01 00 00 	mov    QWORD PTR [rdi+0x170],0xffffffffffffffff
    1fa1:	ff ff ff ff 
    1fa5:	66 89 87 80 01 00 00 	mov    WORD PTR [rdi+0x180],ax
    1fac:	c6 87 82 01 00 00 00 	mov    BYTE PTR [rdi+0x182],0x0
    1fb3:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    1fb8:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1fbf:	00 00 
    1fc1:	75 08                	jne    1fcb <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()+0x26b>
    1fc3:	48 89 f8             	mov    rax,rdi
    1fc6:	48 83 c4 28          	add    rsp,0x28
    1fca:	c3                   	ret
    1fcb:	e8 c0 f0 ff ff       	call   1090 <__stack_chk_fail@plt>

0000000000001fd0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const>:
    1fd0:	41 57                	push   r15
    1fd2:	41 56                	push   r14
    1fd4:	41 55                	push   r13
    1fd6:	41 bd 3a 20 00 00    	mov    r13d,0x203a
    1fdc:	41 54                	push   r12
    1fde:	4c 8d 67 10          	lea    r12,[rdi+0x10]
    1fe2:	55                   	push   rbp
    1fe3:	53                   	push   rbx
    1fe4:	48 89 fb             	mov    rbx,rdi
    1fe7:	48 81 ec 78 01 00 00 	sub    rsp,0x178
    1fee:	64 48 8b 2c 25 28 00 	mov    rbp,QWORD PTR fs:0x28
    1ff5:	00 00 
    1ff7:	48 89 ac 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rbp
    1ffe:	00 
    1fff:	48 89 f5             	mov    rbp,rsi
    2002:	c7 47 10 74 61 70 65 	mov    DWORD PTR [rdi+0x10],0x65706174
    2009:	c6 47 14 30          	mov    BYTE PTR [rdi+0x14],0x30
    200d:	66 44 89 6f 15       	mov    WORD PTR [rdi+0x15],r13w
    2012:	4c 89 27             	mov    QWORD PTR [rdi],r12
    2015:	41 c6 44 24 07 00    	mov    BYTE PTR [r12+0x7],0x0
    201b:	0f b7 b6 20 27 00 00 	movzx  esi,WORD PTR [rsi+0x2720]
    2022:	48 c7 47 08 07 00 00 	mov    QWORD PTR [rdi+0x8],0x7
    2029:	00 
    202a:	66 39 b5 22 27 00 00 	cmp    WORD PTR [rbp+0x2722],si
    2031:	0f 83 09 06 00 00    	jae    2640 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x670>
    2037:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    203e:	00 
    203f:	41 b8 0b 00 00 00    	mov    r8d,0xb
    2045:	48 b8 5b 2d 5d 20 28 	movabs rax,0x706d6528205d2d5b
    204c:	65 6d 70 
    204f:	c6 84 24 8b 00 00 00 	mov    BYTE PTR [rsp+0x8b],0x0
    2056:	00 
    2057:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    205e:	00 
    205f:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    2064:	c7 84 24 87 00 00 00 	mov    DWORD PTR [rsp+0x87],0x29797470
    206b:	70 74 79 29 
    206f:	48 c7 44 24 78 0b 00 	mov    QWORD PTR [rsp+0x78],0xb
    2076:	00 00 
    2078:	4c 8b 7b 08          	mov    r15,QWORD PTR [rbx+0x8]
    207c:	4c 8b 5c 24 70       	mov    r11,QWORD PTR [rsp+0x70]
    2081:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2088:	ff ff 7f 
    208b:	48 89 c2             	mov    rdx,rax
    208e:	4c 29 fa             	sub    rdx,r15
    2091:	4c 39 c2             	cmp    rdx,r8
    2094:	0f 82 0c 24 00 00    	jb     44a6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24d6>
    209a:	4c 8b 0b             	mov    r9,QWORD PTR [rbx]
    209d:	4b 8d 0c 07          	lea    rcx,[r15+r8*1]
    20a1:	4d 39 cc             	cmp    r12,r9
    20a4:	0f 84 96 16 00 00    	je     3740 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1770>
    20aa:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    20ae:	49 39 ce             	cmp    r14,rcx
    20b1:	0f 82 c1 08 00 00    	jb     2978 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9a8>
    20b7:	4b 8d 3c 39          	lea    rdi,[r9+r15*1]
    20bb:	49 83 f8 01          	cmp    r8,0x1
    20bf:	0f 84 42 19 00 00    	je     3a07 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a37>
    20c5:	4c 89 c2             	mov    rdx,r8
    20c8:	4c 89 de             	mov    rsi,r11
    20cb:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    20cf:	e8 8c ef ff ff       	call   1060 <memcpy@plt>
    20d4:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    20d7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    20db:	41 c6 04 0e 00       	mov    BYTE PTR [r14+rcx*1],0x0
    20e0:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    20e5:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    20e9:	4c 39 ef             	cmp    rdi,r13
    20ec:	74 15                	je     2103 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x133>
    20ee:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    20f5:	00 
    20f6:	48 8d 70 01          	lea    rsi,[rax+0x1]
    20fa:	e8 81 ef ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    20ff:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    2103:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    210a:	ff ff 7f 
    210d:	48 39 c1             	cmp    rcx,rax
    2110:	0f 84 15 24 00 00    	je     452b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x255b>
    2116:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    2119:	4c 8d 49 01          	lea    r9,[rcx+0x1]
    211d:	4d 39 fc             	cmp    r12,r15
    2120:	0f 84 ba 15 00 00    	je     36e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1710>
    2126:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    212a:	4d 39 ce             	cmp    r14,r9
    212d:	0f 82 9d 0f 00 00    	jb     30d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1100>
    2133:	41 c6 04 0f 0a       	mov    BYTE PTR [r15+rcx*1],0xa
    2138:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    213b:	c6 44 08 01 00       	mov    BYTE PTR [rax+rcx*1+0x1],0x0
    2140:	48 b8 06 00 00 00 00 	movabs rax,0x8000000000000006
    2147:	00 00 80 
    214a:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    214e:	48 01 c8             	add    rax,rcx
    2151:	48 83 f8 03          	cmp    rax,0x3
    2155:	0f 86 97 22 00 00    	jbe    43f2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2422>
    215b:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    215e:	4c 8d 71 05          	lea    r14,[rcx+0x5]
    2162:	4d 39 c4             	cmp    r12,r8
    2165:	0f 84 95 15 00 00    	je     3700 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1730>
    216b:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    216f:	4c 39 f0             	cmp    rax,r14
    2172:	0f 82 f0 0f 00 00    	jb     3168 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1198>
    2178:	43 c7 04 08 68 65 61 	mov    DWORD PTR [r8+r9*1],0x64616568
    217f:	64 
    2180:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    2183:	41 ba 30 00 00 00    	mov    r10d,0x30
    2189:	43 c6 04 37 00       	mov    BYTE PTR [r15+r14*1],0x0
    218e:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2195:	ff ff 7f 
    2198:	4c 89 73 08          	mov    QWORD PTR [rbx+0x8],r14
    219c:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    21a1:	66 44 89 94 24 80 00 	mov    WORD PTR [rsp+0x80],r10w
    21a8:	00 00 
    21aa:	48 c7 44 24 78 01 00 	mov    QWORD PTR [rsp+0x78],0x1
    21b1:	00 00 
    21b3:	49 39 c6             	cmp    r14,rax
    21b6:	0f 84 a4 22 00 00    	je     4460 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2490>
    21bc:	4c 8b 0b             	mov    r9,QWORD PTR [rbx]
    21bf:	4c 8d 41 06          	lea    r8,[rcx+0x6]
    21c3:	4d 39 cc             	cmp    r12,r9
    21c6:	0f 84 a4 15 00 00    	je     3770 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17a0>
    21cc:	4c 8b 7b 10          	mov    r15,QWORD PTR [rbx+0x10]
    21d0:	4d 39 c7             	cmp    r15,r8
    21d3:	0f 82 57 10 00 00    	jb     3230 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1260>
    21d9:	43 c6 04 31 30       	mov    BYTE PTR [r9+r14*1],0x30
    21de:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    21e1:	43 c6 04 07 00       	mov    BYTE PTR [r15+r8*1],0x0
    21e6:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    21eb:	4c 89 43 08          	mov    QWORD PTR [rbx+0x8],r8
    21ef:	4c 39 ef             	cmp    rdi,r13
    21f2:	74 15                	je     2209 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x239>
    21f4:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    21fb:	00 
    21fc:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2200:	e8 7b ee ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2205:	4c 8b 43 08          	mov    r8,QWORD PTR [rbx+0x8]
    2209:	48 b8 03 00 00 00 00 	movabs rax,0x8000000000000003
    2210:	00 00 80 
    2213:	4c 01 c0             	add    rax,r8
    2216:	48 83 f8 01          	cmp    rax,0x1
    221a:	0f 86 41 21 00 00    	jbe    4361 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2391>
    2220:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    2223:	4d 8d 78 02          	lea    r15,[r8+0x2]
    2227:	49 39 cc             	cmp    r12,rcx
    222a:	0f 84 60 15 00 00    	je     3790 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17c0>
    2230:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    2234:	4d 39 fe             	cmp    r14,r15
    2237:	0f 82 83 10 00 00    	jb     32c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x12f0>
    223d:	41 b9 3a 20 00 00    	mov    r9d,0x203a
    2243:	66 46 89 0c 01       	mov    WORD PTR [rcx+r8*1],r9w
    2248:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    224b:	43 c6 04 3e 00       	mov    BYTE PTR [r14+r15*1],0x0
    2250:	be 5b 00 00 00       	mov    esi,0x5b
    2255:	4c 8d 74 24 60       	lea    r14,[rsp+0x60]
    225a:	0f b7 85 30 27 00 00 	movzx  eax,WORD PTR [rbp+0x2730]
    2261:	4c 89 7b 08          	mov    QWORD PTR [rbx+0x8],r15
    2265:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
    226a:	66 89 74 24 60       	mov    WORD PTR [rsp+0x60],si
    226f:	48 c7 44 24 58 01 00 	mov    QWORD PTR [rsp+0x58],0x1
    2276:	00 00 
    2278:	83 f8 09             	cmp    eax,0x9
    227b:	0f 86 fc 1e 00 00    	jbe    417d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ad>
    2281:	83 f8 63             	cmp    eax,0x63
    2284:	0f 86 76 0c 00 00    	jbe    2f00 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xf30>
    228a:	3d e7 03 00 00       	cmp    eax,0x3e7
    228f:	0f 86 eb 12 00 00    	jbe    3580 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15b0>
    2295:	3d 0f 27 00 00       	cmp    eax,0x270f
    229a:	be 03 00 00 00       	mov    esi,0x3
    229f:	ba 04 00 00 00       	mov    edx,0x4
    22a4:	b9 05 00 00 00       	mov    ecx,0x5
    22a9:	0f 46 d6             	cmovbe edx,esi
    22ac:	41 b8 05 00 00 00    	mov    r8d,0x5
    22b2:	be 04 00 00 00       	mov    esi,0x4
    22b7:	48 0f 46 ce          	cmovbe rcx,rsi
    22bb:	44 0f 46 c6          	cmovbe r8d,esi
    22bf:	66 0f 6f 05 99 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a99]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    22c6:	00 
    22c7:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    22cc:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    22d3:	00 
    22d4:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    22db:	00 
    22dc:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    22e3:	00 
    22e4:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    22eb:	00 
    22ec:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    22f3:	00 
    22f4:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    22fb:	00 
    22fc:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2303:	00 
    2304:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    230b:	00 
    230c:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2313:	00 
    2314:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    231b:	00 
    231c:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2323:	00 
    2324:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    232b:	00 
    232c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2333:	00 
    2334:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    233b:	00 
    233c:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2343:	00 
    2344:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    234b:	00 
    234c:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2353:	00 
    2354:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    235b:	00 
    235c:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2363:	00 
    2364:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    236b:	00 
    236c:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2373:	00 
    2374:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    237b:	00 
    237c:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2383:	00 
    2384:	66 0f 6f 05 94 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a94]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    238b:	00 
    238c:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2393:	00 
    2394:	90                   	nop
    2395:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    239c:	00 00 00 00 
    23a0:	89 c7                	mov    edi,eax
    23a2:	89 c6                	mov    esi,eax
    23a4:	48 69 ff 1f 85 eb 51 	imul   rdi,rdi,0x51eb851f
    23ab:	48 c1 ef 25          	shr    rdi,0x25
    23af:	44 6b cf 64          	imul   r9d,edi,0x64
    23b3:	44 29 ce             	sub    esi,r9d
    23b6:	41 89 c1             	mov    r9d,eax
    23b9:	89 f8                	mov    eax,edi
    23bb:	89 d7                	mov    edi,edx
    23bd:	01 f6                	add    esi,esi
    23bf:	44 8d 56 01          	lea    r10d,[rsi+0x1]
    23c3:	0f b6 b4 34 90 00 00 	movzx  esi,BYTE PTR [rsp+rsi*1+0x90]
    23ca:	00 
    23cb:	46 0f b6 94 14 90 00 	movzx  r10d,BYTE PTR [rsp+r10*1+0x90]
    23d2:	00 00 
    23d4:	44 88 94 3c 80 00 00 	mov    BYTE PTR [rsp+rdi*1+0x80],r10b
    23db:	00 
    23dc:	8d 7a ff             	lea    edi,[rdx-0x1]
    23df:	83 ea 02             	sub    edx,0x2
    23e2:	40 88 b4 3c 80 00 00 	mov    BYTE PTR [rsp+rdi*1+0x80],sil
    23e9:	00 
    23ea:	41 81 f9 0f 27 00 00 	cmp    r9d,0x270f
    23f1:	77 ad                	ja     23a0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x3d0>
    23f3:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    23f8:	48 01 ca             	add    rdx,rcx
    23fb:	41 81 f9 e7 03 00 00 	cmp    r9d,0x3e7
    2402:	0f 87 e0 0b 00 00    	ja     2fe8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1018>
    2408:	83 c0 30             	add    eax,0x30
    240b:	88 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],al
    2412:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2419:	ff ff 7f 
    241c:	c6 02 00             	mov    BYTE PTR [rdx],0x0
    241f:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2424:	48 89 c6             	mov    rsi,rax
    2427:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
    242c:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    2431:	48 29 d6             	sub    rsi,rdx
    2434:	48 39 ce             	cmp    rsi,rcx
    2437:	0f 82 ef 1d 00 00    	jb     422c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x225c>
    243d:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    2442:	4c 8d 3c 0a          	lea    r15,[rdx+rcx*1]
    2446:	4d 39 f3             	cmp    r11,r14
    2449:	0f 84 89 14 00 00    	je     38d8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1908>
    244f:	48 8b 74 24 60       	mov    rsi,QWORD PTR [rsp+0x60]
    2454:	4c 39 fe             	cmp    rsi,r15
    2457:	0f 82 5b 0f 00 00    	jb     33b8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x13e8>
    245d:	4c 01 da             	add    rdx,r11
    2460:	41 83 f8 01          	cmp    r8d,0x1
    2464:	0f 84 a9 17 00 00    	je     3c13 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c43>
    246a:	89 ce                	mov    esi,ecx
    246c:	85 c9                	test   ecx,ecx
    246e:	74 19                	je     2489 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4b9>
    2470:	31 c0                	xor    eax,eax
    2472:	89 c1                	mov    ecx,eax
    2474:	83 c0 01             	add    eax,0x1
    2477:	41 0f b6 3c 0a       	movzx  edi,BYTE PTR [r10+rcx*1]
    247c:	40 88 3c 0a          	mov    BYTE PTR [rdx+rcx*1],dil
    2480:	39 f0                	cmp    eax,esi
    2482:	72 ee                	jb     2472 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4a2>
    2484:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    2489:	4d 89 d9             	mov    r9,r11
    248c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2490:	43 c6 04 39 00       	mov    BYTE PTR [r9+r15*1],0x0
    2495:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    249a:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
    249f:	4c 39 ef             	cmp    rdi,r13
    24a2:	74 16                	je     24ba <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4ea>
    24a4:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    24ab:	00 
    24ac:	48 8d 70 01          	lea    rsi,[rax+0x1]
    24b0:	e8 cb eb ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    24b5:	4c 8b 7c 24 58       	mov    r15,QWORD PTR [rsp+0x58]
    24ba:	48 b8 04 00 00 00 00 	movabs rax,0x8000000000000004
    24c1:	00 00 80 
    24c4:	4c 01 f8             	add    rax,r15
    24c7:	48 83 f8 02          	cmp    rax,0x2
    24cb:	0f 86 82 1d 00 00    	jbe    4253 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2283>
    24d1:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    24d6:	4d 8d 47 03          	lea    r8,[r15+0x3]
    24da:	4c 39 f1             	cmp    rcx,r14
    24dd:	0f 84 4d 14 00 00    	je     3930 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1960>
    24e3:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    24e8:	4c 39 c0             	cmp    rax,r8
    24eb:	0f 82 cf 0f 00 00    	jb     34c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14f0>
    24f1:	ba 5d 20 00 00       	mov    edx,0x205d
    24f6:	42 c6 44 39 02 28    	mov    BYTE PTR [rcx+r15*1+0x2],0x28
    24fc:	66 42 89 14 39       	mov    WORD PTR [rcx+r15*1],dx
    2501:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    2506:	43 c6 04 01 00       	mov    BYTE PTR [r9+r8*1],0x0
    250b:	0f b7 85 30 27 00 00 	movzx  eax,WORD PTR [rbp+0x2730]
    2512:	48 8b 95 28 27 00 00 	mov    rdx,QWORD PTR [rbp+0x2728]
    2519:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
    251e:	0f b6 44 02 08       	movzx  eax,BYTE PTR [rdx+rax*1+0x8]
    2523:	84 c0                	test   al,al
    2525:	0f 85 e5 0a 00 00    	jne    3010 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1040>
    252b:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    2530:	48 8d 35 00 2b 00 00 	lea    rsi,[rip+0x2b00]        # 5037 <_IO_stdin_used+0x37>
    2537:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    253c:	e8 9f f1 ff ff       	call   16e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    2541:	4c 8b 7c 24 58       	mov    r15,QWORD PTR [rsp+0x58]
    2546:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    254d:	ff ff 7f 
    2550:	49 39 c7             	cmp    r15,rax
    2553:	0f 84 93 1f 00 00    	je     44ec <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x251c>
    2559:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    255e:	49 8d 6f 01          	lea    rbp,[r15+0x1]
    2562:	4c 39 f1             	cmp    rcx,r14
    2565:	0f 84 4d 14 00 00    	je     39b8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x19e8>
    256b:	4c 8b 6c 24 60       	mov    r13,QWORD PTR [rsp+0x60]
    2570:	49 39 ed             	cmp    r13,rbp
    2573:	0f 82 1f 10 00 00    	jb     3598 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15c8>
    2579:	42 c6 04 39 29       	mov    BYTE PTR [rcx+r15*1],0x29
    257e:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
    2583:	c6 04 28 00          	mov    BYTE PTR [rax+rbp*1],0x0
    2587:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    258c:	48 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],rbp
    2591:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2598:	ff ff 7f 
    259b:	4c 8b 6b 08          	mov    r13,QWORD PTR [rbx+0x8]
    259f:	48 89 c2             	mov    rdx,rax
    25a2:	4c 29 ea             	sub    rdx,r13
    25a5:	48 39 ea             	cmp    rdx,rbp
    25a8:	0f 82 d2 1c 00 00    	jb     4280 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22b0>
    25ae:	4c 8b 13             	mov    r10,QWORD PTR [rbx]
    25b1:	4a 8d 4c 2d 00       	lea    rcx,[rbp+r13*1+0x0]
    25b6:	4d 39 d4             	cmp    r12,r10
    25b9:	0f 84 19 14 00 00    	je     39d8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a08>
    25bf:	4c 8b 7b 10          	mov    r15,QWORD PTR [rbx+0x10]
    25c3:	49 39 cf             	cmp    r15,rcx
    25c6:	0f 82 54 10 00 00    	jb     3620 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1650>
    25cc:	4b 8d 3c 2a          	lea    rdi,[r10+r13*1]
    25d0:	48 83 fd 01          	cmp    rbp,0x1
    25d4:	0f 84 43 17 00 00    	je     3d1d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d4d>
    25da:	48 89 ea             	mov    rdx,rbp
    25dd:	4c 89 c6             	mov    rsi,r8
    25e0:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    25e4:	e8 77 ea ff ff       	call   1060 <memcpy@plt>
    25e9:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    25ec:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    25f0:	41 c6 04 0f 00       	mov    BYTE PTR [r15+rcx*1],0x0
    25f5:	48 8b 7c 24 50       	mov    rdi,QWORD PTR [rsp+0x50]
    25fa:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    25fe:	4c 39 f7             	cmp    rdi,r14
    2601:	74 0e                	je     2611 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x641>
    2603:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2608:	48 8d 70 01          	lea    rsi,[rax+0x1]
    260c:	e8 6f ea ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2611:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    2618:	00 
    2619:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2620:	00 00 
    2622:	0f 85 bc 1b 00 00    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    2628:	48 81 c4 78 01 00 00 	add    rsp,0x178
    262f:	48 89 d8             	mov    rax,rbx
    2632:	5b                   	pop    rbx
    2633:	5d                   	pop    rbp
    2634:	41 5c                	pop    r12
    2636:	41 5d                	pop    r13
    2638:	41 5e                	pop    r14
    263a:	41 5f                	pop    r15
    263c:	c3                   	ret
    263d:	0f 1f 00             	nop    DWORD PTR [rax]
    2640:	41 bb 5b 00 00 00    	mov    r11d,0x5b
    2646:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    264b:	4c 8d 74 24 60       	lea    r14,[rsp+0x60]
    2650:	48 c7 44 24 58 01 00 	mov    QWORD PTR [rsp+0x58],0x1
    2657:	00 00 
    2659:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
    265e:	66 44 89 5c 24 60    	mov    WORD PTR [rsp+0x60],r11w
    2664:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    2669:	e8 f2 f3 ff ff       	call   1a60 <std::__cxx11::to_string(int)>
    266e:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2673:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
    2678:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    267f:	ff ff 7f 
    2682:	48 89 c6             	mov    rsi,rax
    2685:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
    268a:	48 29 d6             	sub    rsi,rdx
    268d:	48 39 ce             	cmp    rsi,rcx
    2690:	0f 82 53 1c 00 00    	jb     42e9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2319>
    2696:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    269b:	4c 8d 2c 11          	lea    r13,[rcx+rdx*1]
    269f:	4d 39 f0             	cmp    r8,r14
    26a2:	0f 84 9a 03 00 00    	je     2a42 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa72>
    26a8:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    26ad:	4d 39 ef             	cmp    r15,r13
    26b0:	0f 82 fa 10 00 00    	jb     37b0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17e0>
    26b6:	48 85 c9             	test   rcx,rcx
    26b9:	74 25                	je     26e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    26bb:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
    26bf:	48 83 f9 01          	cmp    rcx,0x1
    26c3:	0f 84 3d 17 00 00    	je     3e06 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e36>
    26c9:	48 89 ca             	mov    rdx,rcx
    26cc:	4c 89 ce             	mov    rsi,r9
    26cf:	e8 8c e9 ff ff       	call   1060 <memcpy@plt>
    26d4:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    26d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    26e0:	43 c6 04 28 00       	mov    BYTE PTR [r8+r13*1],0x0
    26e5:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    26ea:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
    26ef:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    26f6:	00 
    26f7:	4c 39 ef             	cmp    rdi,r13
    26fa:	74 11                	je     270d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x73d>
    26fc:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    2703:	00 
    2704:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2708:	e8 73 e9 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    270d:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    2712:	48 8d 35 18 29 00 00 	lea    rsi,[rip+0x2918]        # 5031 <_IO_stdin_used+0x31>
    2719:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    271e:	e8 bd ef ff ff       	call   16e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    2723:	0f b7 b5 22 27 00 00 	movzx  esi,WORD PTR [rbp+0x2722]
    272a:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    272f:	e8 2c f3 ff ff       	call   1a60 <std::__cxx11::to_string(int)>
    2734:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2739:	4c 8b 4c 24 78       	mov    r9,QWORD PTR [rsp+0x78]
    273e:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2745:	ff ff 7f 
    2748:	48 89 c1             	mov    rcx,rax
    274b:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    2750:	48 29 d1             	sub    rcx,rdx
    2753:	4c 39 c9             	cmp    rcx,r9
    2756:	0f 82 92 1a 00 00    	jb     41ee <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x221e>
    275c:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    2761:	49 8d 0c 11          	lea    rcx,[r9+rdx*1]
    2765:	4d 39 f0             	cmp    r8,r14
    2768:	0f 84 c7 13 00 00    	je     3b35 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b65>
    276e:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    2773:	49 39 cf             	cmp    r15,rcx
    2776:	0f 82 74 10 00 00    	jb     37f0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1820>
    277c:	4d 85 c9             	test   r9,r9
    277f:	74 2f                	je     27b0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    2781:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
    2785:	49 83 f9 01          	cmp    r9,0x1
    2789:	0f 84 bc 16 00 00    	je     3e4b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e7b>
    278f:	4c 89 ca             	mov    rdx,r9
    2792:	4c 89 d6             	mov    rsi,r10
    2795:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    2799:	e8 c2 e8 ff ff       	call   1060 <memcpy@plt>
    279e:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    27a3:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    27a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    27ae:	00 00 
    27b0:	41 c6 04 08 00       	mov    BYTE PTR [r8+rcx*1],0x0
    27b5:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    27ba:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
    27bf:	4c 39 ef             	cmp    rdi,r13
    27c2:	74 11                	je     27d5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x805>
    27c4:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    27cb:	00 
    27cc:	48 8d 70 01          	lea    rsi,[rax+0x1]
    27d0:	e8 ab e8 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    27d5:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    27da:	48 8d 35 52 28 00 00 	lea    rsi,[rip+0x2852]        # 5033 <_IO_stdin_used+0x33>
    27e1:	e8 fa ee ff ff       	call   16e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    27e6:	44 0f b7 85 20 27 00 	movzx  r8d,WORD PTR [rbp+0x2720]
    27ed:	00 
    27ee:	66 44 39 85 22 27 00 	cmp    WORD PTR [rbp+0x2722],r8w
    27f5:	00 
    27f6:	0f 82 03 01 00 00    	jb     28ff <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x92f>
    27fc:	48 8d 45 10          	lea    rax,[rbp+0x10]
    2800:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    2805:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    280c:	00 00 00 00 
    2810:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2815:	41 0f b7 c0          	movzx  eax,r8w
    2819:	0f b6 04 01          	movzx  eax,BYTE PTR [rcx+rax*1]
    281d:	84 c0                	test   al,al
    281f:	0f 85 e3 02 00 00    	jne    2b08 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb38>
    2825:	b8 5f 00 00 00       	mov    eax,0x5f
    282a:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    282f:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    2836:	00 
    2837:	41 bf 01 00 00 00    	mov    r15d,0x1
    283d:	66 89 84 24 80 00 00 	mov    WORD PTR [rsp+0x80],ax
    2844:	00 
    2845:	4d 89 ea             	mov    r10,r13
    2848:	48 c7 44 24 78 01 00 	mov    QWORD PTR [rsp+0x78],0x1
    284f:	00 00 
    2851:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2858:	ff ff 7f 
    285b:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2860:	48 29 d0             	sub    rax,rdx
    2863:	4c 39 f8             	cmp    rax,r15
    2866:	0f 82 a1 19 00 00    	jb     420d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x223d>
    286c:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    2871:	49 8d 0c 17          	lea    rcx,[r15+rdx*1]
    2875:	4d 39 f3             	cmp    r11,r14
    2878:	0f 84 22 06 00 00    	je     2ea0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xed0>
    287e:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2883:	48 39 c8             	cmp    rax,rcx
    2886:	0f 82 c4 03 00 00    	jb     2c50 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc80>
    288c:	49 8d 04 13          	lea    rax,[r11+rdx*1]
    2890:	49 83 ff 01          	cmp    r15,0x1
    2894:	0f 84 26 08 00 00    	je     30c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10f0>
    289a:	44 89 ff             	mov    edi,r15d
    289d:	45 85 ff             	test   r15d,r15d
    28a0:	74 19                	je     28bb <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8eb>
    28a2:	31 d2                	xor    edx,edx
    28a4:	89 d6                	mov    esi,edx
    28a6:	83 c2 01             	add    edx,0x1
    28a9:	45 0f b6 0c 32       	movzx  r9d,BYTE PTR [r10+rsi*1]
    28ae:	44 88 0c 30          	mov    BYTE PTR [rax+rsi*1],r9b
    28b2:	39 fa                	cmp    edx,edi
    28b4:	72 ee                	jb     28a4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8d4>
    28b6:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    28bb:	4d 89 d9             	mov    r9,r11
    28be:	66 90                	xchg   ax,ax
    28c0:	41 c6 04 09 00       	mov    BYTE PTR [r9+rcx*1],0x0
    28c5:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    28ca:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
    28cf:	4c 39 ef             	cmp    rdi,r13
    28d2:	74 19                	je     28ed <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x91d>
    28d4:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    28db:	00 
    28dc:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    28e0:	48 8d 70 01          	lea    rsi,[rax+0x1]
    28e4:	e8 97 e7 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    28e9:	44 8b 04 24          	mov    r8d,DWORD PTR [rsp]
    28ed:	41 83 c0 01          	add    r8d,0x1
    28f1:	66 44 39 85 22 27 00 	cmp    WORD PTR [rbp+0x2722],r8w
    28f8:	00 
    28f9:	0f 83 11 ff ff ff    	jae    2810 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x840>
    28ff:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2906:	ff ff 7f 
    2909:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    290e:	48 39 c2             	cmp    rdx,rax
    2911:	0f 84 af 19 00 00    	je     42c6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22f6>
    2917:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    291c:	4c 8d 42 01          	lea    r8,[rdx+0x1]
    2920:	4c 39 f1             	cmp    rcx,r14
    2923:	0f 84 93 14 00 00    	je     3dbc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1dec>
    2929:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    292e:	4d 39 c7             	cmp    r15,r8
    2931:	0f 82 2d 12 00 00    	jb     3b64 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b94>
    2937:	c6 04 11 29          	mov    BYTE PTR [rcx+rdx*1],0x29
    293b:	4c 8b 7c 24 50       	mov    r15,QWORD PTR [rsp+0x50]
    2940:	43 c6 04 07 00       	mov    BYTE PTR [r15+r8*1],0x0
    2945:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
    294a:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    294f:	4c 39 f0             	cmp    rax,r14
    2952:	0f 84 be 14 00 00    	je     3e16 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e46>
    2958:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    295d:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2962:	4c 89 44 24 78       	mov    QWORD PTR [rsp+0x78],r8
    2967:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    296e:	00 
    296f:	e9 04 f7 ff ff       	jmp    2078 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa8>
    2974:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2978:	48 39 c8             	cmp    rax,rcx
    297b:	0f 82 02 1b 00 00    	jb     4483 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24b3>
    2981:	4b 8d 14 36          	lea    rdx,[r14+r14*1]
    2985:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    2989:	48 39 d1             	cmp    rcx,rdx
    298c:	0f 83 ce 13 00 00    	jae    3d60 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d90>
    2992:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    2996:	48 39 d0             	cmp    rax,rdx
    2999:	73 0e                	jae    29a9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    299b:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    29a2:	ff ff 7f 
    29a5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    29a9:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
    29ae:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    29b3:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    29b8:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
    29bd:	e8 ae e6 ff ff       	call   1070 <operator new(unsigned long)@plt>
    29c2:	4d 85 ff             	test   r15,r15
    29c5:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    29ca:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    29cf:	49 89 c6             	mov    r14,rax
    29d2:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    29d7:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    29dc:	0f 85 6e 0f 00 00    	jne    3950 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1980>
    29e2:	4d 85 db             	test   r11,r11
    29e5:	74 2c                	je     2a13 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    29e7:	48 89 c7             	mov    rdi,rax
    29ea:	49 83 f8 01          	cmp    r8,0x1
    29ee:	0f 84 9c 16 00 00    	je     4090 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x20c0>
    29f4:	4c 89 c2             	mov    rdx,r8
    29f7:	4c 89 de             	mov    rsi,r11
    29fa:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    29ff:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2a04:	e8 57 e6 ff ff       	call   1060 <memcpy@plt>
    2a09:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    2a0e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2a13:	4d 39 cc             	cmp    r12,r9
    2a16:	74 1a                	je     2a32 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    2a18:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    2a1c:	4c 89 cf             	mov    rdi,r9
    2a1f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2a24:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2a28:	e8 53 e6 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2a2d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2a32:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2a36:	4c 89 33             	mov    QWORD PTR [rbx],r14
    2a39:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    2a3d:	e9 99 f6 ff ff       	jmp    20db <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10b>
    2a42:	49 83 fd 0f          	cmp    r13,0xf
    2a46:	0f 86 6a fc ff ff    	jbe    26b6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x6e6>
    2a4c:	4c 39 e8             	cmp    rax,r13
    2a4f:	0f 82 c0 19 00 00    	jb     4415 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2445>
    2a55:	49 83 fd 1d          	cmp    r13,0x1d
    2a59:	0f 87 ec 14 00 00    	ja     3f4b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f7b>
    2a5f:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    2a66:	00 
    2a67:	bf 1f 00 00 00       	mov    edi,0x1f
    2a6c:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
    2a71:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    2a76:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    2a7b:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2a80:	e8 eb e5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2a85:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    2a8a:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    2a8f:	49 89 c7             	mov    r15,rax
    2a92:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2a97:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
    2a9c:	4d 85 c9             	test   r9,r9
    2a9f:	0f 95 c0             	setne  al
    2aa2:	48 85 d2             	test   rdx,rdx
    2aa5:	0f 85 78 11 00 00    	jne    3c23 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c53>
    2aab:	4d 85 ed             	test   r13,r13
    2aae:	74 26                	je     2ad6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    2ab0:	84 c0                	test   al,al
    2ab2:	74 22                	je     2ad6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    2ab4:	4c 89 ff             	mov    rdi,r15
    2ab7:	48 83 f9 01          	cmp    rcx,0x1
    2abb:	0f 84 34 16 00 00    	je     40f5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2125>
    2ac1:	48 89 ca             	mov    rdx,rcx
    2ac4:	4c 89 ce             	mov    rsi,r9
    2ac7:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    2acc:	e8 8f e5 ff ff       	call   1060 <memcpy@plt>
    2ad1:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    2ad6:	4d 39 f0             	cmp    r8,r14
    2ad9:	74 11                	je     2aec <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    2adb:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2ae0:	4c 89 c7             	mov    rdi,r8
    2ae3:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2ae7:	e8 94 e5 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2aec:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2af0:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    2af5:	4d 89 f8             	mov    r8,r15
    2af8:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    2afd:	e9 de fb ff ff       	jmp    26e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    2b02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2b08:	83 e8 01             	sub    eax,0x1
    2b0b:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    2b10:	89 c2                	mov    edx,eax
    2b12:	83 f8 09             	cmp    eax,0x9
    2b15:	0f 8e 5a 14 00 00    	jle    3f75 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fa5>
    2b1b:	83 f8 63             	cmp    eax,0x63
    2b1e:	0f 8e 83 02 00 00    	jle    2da7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xdd7>
    2b24:	66 0f 6f 05 54 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4254]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2b2b:	00 
    2b2c:	89 c0                	mov    eax,eax
    2b2e:	66 0f 6f 0d 2a 42 00 	movdqa xmm1,XMMWORD PTR [rip+0x422a]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2b35:	00 
    2b36:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
    2b3d:	00 
    2b3e:	48 69 c0 1f 85 eb 51 	imul   rax,rax,0x51eb851f
    2b45:	66 0f 6f 15 23 42 00 	movdqa xmm2,XMMWORD PTR [rip+0x4223]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2b4c:	00 
    2b4d:	41 bf 03 00 00 00    	mov    r15d,0x3
    2b53:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2b5a:	00 
    2b5b:	66 0f 6f 05 2d 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x422d]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2b62:	00 
    2b63:	0f 29 8c 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm1
    2b6a:	00 
    2b6b:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2b72:	00 
    2b73:	66 0f 6f 05 25 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4225]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2b7a:	00 
    2b7b:	48 c1 e8 25          	shr    rax,0x25
    2b7f:	6b f0 64             	imul   esi,eax,0x64
    2b82:	0f 29 94 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm2
    2b89:	00 
    2b8a:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2b91:	00 
    2b92:	66 0f 6f 05 16 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4216]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2b99:	00 
    2b9a:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2ba1:	00 
    2ba2:	66 0f 6f 05 16 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4216]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2ba9:	00 
    2baa:	29 f2                	sub    edx,esi
    2bac:	89 d1                	mov    ecx,edx
    2bae:	89 c2                	mov    edx,eax
    2bb0:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2bb7:	00 
    2bb8:	66 0f 6f 05 10 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4210]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2bbf:	00 
    2bc0:	8d 44 09 01          	lea    eax,[rcx+rcx*1+0x1]
    2bc4:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2bcb:	00 
    2bcc:	66 0f 6f 05 0c 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x420c]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2bd3:	00 
    2bd4:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2bdb:	00 
    2bdc:	66 0f 6f 05 0c 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x420c]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2be3:	00 
    2be4:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2beb:	00 
    2bec:	66 0f 6f 05 0c 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x420c]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    2bf3:	00 
    2bf4:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2bfb:	00 
    2bfc:	66 0f 6f 05 0c 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x420c]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    2c03:	00 
    2c04:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2c0b:	00 
    2c0c:	66 0f 6f 05 0c 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x420c]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    2c13:	00 
    2c14:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2c1b:	00 
    2c1c:	0f b7 84 04 8f 00 00 	movzx  eax,WORD PTR [rsp+rax*1+0x8f]
    2c23:	00 
    2c24:	66 89 84 24 81 00 00 	mov    WORD PTR [rsp+0x81],ax
    2c2b:	00 
    2c2c:	83 c2 30             	add    edx,0x30
    2c2f:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
    2c34:	88 94 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],dl
    2c3b:	42 c6 04 38 00       	mov    BYTE PTR [rax+r15*1],0x0
    2c40:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    2c45:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
    2c4a:	e9 02 fc ff ff       	jmp    2851 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x881>
    2c4f:	90                   	nop
    2c50:	48 bf fe ff ff ff ff 	movabs rdi,0x7ffffffffffffffe
    2c57:	ff ff 7f 
    2c5a:	48 39 cf             	cmp    rdi,rcx
    2c5d:	0f 82 6a 17 00 00    	jb     43cd <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23fd>
    2c63:	48 01 c0             	add    rax,rax
    2c66:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    2c6a:	48 39 c1             	cmp    rcx,rax
    2c6d:	0f 83 f5 06 00 00    	jae    3368 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1398>
    2c73:	48 89 c7             	mov    rdi,rax
    2c76:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
    2c7b:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2c82:	ff ff 7f 
    2c85:	48 39 f8             	cmp    rax,rdi
    2c88:	0f 83 32 13 00 00    	jae    3fc0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ff0>
    2c8e:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    2c95:	ff ff 7f 
    2c98:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    2c9c:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2ca1:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    2ca6:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    2cab:	e8 c0 e3 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2cb0:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    2cb4:	49 89 c1             	mov    r9,rax
    2cb7:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    2cbc:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2cc3:	ff ff 7f 
    2cc6:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2ccb:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    2cd0:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    2cd4:	4d 85 d2             	test   r10,r10
    2cd7:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    2cdc:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    2ce1:	4c 89 de             	mov    rsi,r11
    2ce4:	4c 89 cf             	mov    rdi,r9
    2ce7:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2cec:	44 89 44 24 30       	mov    DWORD PTR [rsp+0x30],r8d
    2cf1:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    2cf6:	4c 89 54 24 48       	mov    QWORD PTR [rsp+0x48],r10
    2cfb:	48 89 54 24 40       	mov    QWORD PTR [rsp+0x40],rdx
    2d00:	e8 5b e3 ff ff       	call   1060 <memcpy@plt>
    2d05:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
    2d0a:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    2d0f:	44 8b 44 24 30       	mov    r8d,DWORD PTR [rsp+0x30]
    2d14:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2d19:	49 89 c1             	mov    r9,rax
    2d1c:	74 42                	je     2d60 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    2d1e:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    2d23:	49 83 ff 01          	cmp    r15,0x1
    2d27:	4c 8b 54 24 48       	mov    r10,QWORD PTR [rsp+0x48]
    2d2c:	48 8d 04 10          	lea    rax,[rax+rdx*1]
    2d30:	0f 84 0a 12 00 00    	je     3f40 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f70>
    2d36:	44 89 ff             	mov    edi,r15d
    2d39:	45 85 ff             	test   r15d,r15d
    2d3c:	74 22                	je     2d60 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    2d3e:	31 d2                	xor    edx,edx
    2d40:	89 d6                	mov    esi,edx
    2d42:	83 c2 01             	add    edx,0x1
    2d45:	45 0f b6 3c 32       	movzx  r15d,BYTE PTR [r10+rsi*1]
    2d4a:	44 88 3c 30          	mov    BYTE PTR [rax+rsi*1],r15b
    2d4e:	39 fa                	cmp    edx,edi
    2d50:	72 ee                	jb     2d40 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd70>
    2d52:	0f 1f 00             	nop    DWORD PTR [rax]
    2d55:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2d5c:	00 00 00 00 
    2d60:	4d 39 f3             	cmp    r11,r14
    2d63:	74 2f                	je     2d94 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xdc4>
    2d65:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2d6a:	4c 89 df             	mov    rdi,r11
    2d6d:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    2d72:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    2d77:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2d7b:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
    2d80:	e8 fb e2 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2d85:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    2d8a:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    2d8f:	44 8b 44 24 20       	mov    r8d,DWORD PTR [rsp+0x20]
    2d94:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2d98:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    2d9d:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    2da2:	e9 19 fb ff ff       	jmp    28c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8f0>
    2da7:	66 0f 6f 05 d1 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fd1]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2dae:	00 
    2daf:	01 c0                	add    eax,eax
    2db1:	66 0f 6f 1d a7 3f 00 	movdqa xmm3,XMMWORD PTR [rip+0x3fa7]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2db8:	00 
    2db9:	41 bf 02 00 00 00    	mov    r15d,0x2
    2dbf:	66 0f 6f 25 a9 3f 00 	movdqa xmm4,XMMWORD PTR [rip+0x3fa9]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2dc6:	00 
    2dc7:	8d 50 01             	lea    edx,[rax+0x1]
    2dca:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2dd1:	00 
    2dd2:	66 0f 6f 05 b6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fb6]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2dd9:	00 
    2dda:	0f 29 9c 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm3
    2de1:	00 
    2de2:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2de9:	00 
    2dea:	66 0f 6f 05 ae 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fae]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2df1:	00 
    2df2:	0f 29 a4 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm4
    2df9:	00 
    2dfa:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2e01:	00 
    2e02:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2e09:	00 
    2e0a:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2e11:	00 
    2e12:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2e19:	00 
    2e1a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2e21:	00 
    2e22:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2e29:	00 
    2e2a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2e31:	00 
    2e32:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2e39:	00 
    2e3a:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2e41:	00 
    2e42:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2e49:	00 
    2e4a:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2e51:	00 
    2e52:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    2e59:	00 
    2e5a:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2e61:	00 
    2e62:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    2e69:	00 
    2e6a:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2e71:	00 
    2e72:	66 0f 6f 05 a6 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3fa6]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    2e79:	00 
    2e7a:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2e81:	00 
    2e82:	0f b6 94 14 90 00 00 	movzx  edx,BYTE PTR [rsp+rdx*1+0x90]
    2e89:	00 
    2e8a:	88 94 24 81 00 00 00 	mov    BYTE PTR [rsp+0x81],dl
    2e91:	0f b6 94 04 90 00 00 	movzx  edx,BYTE PTR [rsp+rax*1+0x90]
    2e98:	00 
    2e99:	e9 91 fd ff ff       	jmp    2c2f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc5f>
    2e9e:	66 90                	xchg   ax,ax
    2ea0:	48 83 f9 0f          	cmp    rcx,0xf
    2ea4:	0f 86 e2 f9 ff ff    	jbe    288c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8bc>
    2eaa:	bf 1f 00 00 00       	mov    edi,0x1f
    2eaf:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
    2eb4:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    2eb8:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2ebd:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    2ec2:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    2ec7:	e8 a4 e1 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2ecc:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    2ed0:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    2ed5:	49 89 c1             	mov    r9,rax
    2ed8:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    2edf:	00 
    2ee0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    2ee5:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2eea:	4d 85 d2             	test   r10,r10
    2eed:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    2ef2:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    2ef7:	e9 e5 fd ff ff       	jmp    2ce1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    2efc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2f00:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    2f05:	66 0f 6f 05 53 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e53]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2f0c:	00 
    2f0d:	41 b8 02 00 00 00    	mov    r8d,0x2
    2f13:	48 8d 94 24 82 00 00 	lea    rdx,[rsp+0x82]
    2f1a:	00 
    2f1b:	b9 02 00 00 00       	mov    ecx,0x2
    2f20:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    2f27:	00 
    2f28:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2f2f:	00 
    2f30:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    2f37:	00 
    2f38:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2f3f:	00 
    2f40:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2f47:	00 
    2f48:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2f4f:	00 
    2f50:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2f57:	00 
    2f58:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2f5f:	00 
    2f60:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2f67:	00 
    2f68:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2f6f:	00 
    2f70:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2f77:	00 
    2f78:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2f7f:	00 
    2f80:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2f87:	00 
    2f88:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2f8f:	00 
    2f90:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2f97:	00 
    2f98:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2f9f:	00 
    2fa0:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2fa7:	00 
    2fa8:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2faf:	00 
    2fb0:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2fb7:	00 
    2fb8:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    2fbf:	00 
    2fc0:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2fc7:	00 
    2fc8:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    2fcf:	00 
    2fd0:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2fd7:	00 
    2fd8:	66 0f 6f 05 40 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e40]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    2fdf:	00 
    2fe0:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2fe7:	00 
    2fe8:	01 c0                	add    eax,eax
    2fea:	8d 70 01             	lea    esi,[rax+0x1]
    2fed:	0f b6 84 04 90 00 00 	movzx  eax,BYTE PTR [rsp+rax*1+0x90]
    2ff4:	00 
    2ff5:	0f b6 b4 34 90 00 00 	movzx  esi,BYTE PTR [rsp+rsi*1+0x90]
    2ffc:	00 
    2ffd:	40 88 b4 24 81 00 00 	mov    BYTE PTR [rsp+0x81],sil
    3004:	00 
    3005:	e9 01 f4 ff ff       	jmp    240b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x43b>
    300a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3010:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    3015:	8d 70 ff             	lea    esi,[rax-0x1]
    3018:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    301d:	e8 3e ea ff ff       	call   1a60 <std::__cxx11::to_string(int)>
    3022:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    3027:	4c 8b 44 24 78       	mov    r8,QWORD PTR [rsp+0x78]
    302c:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    3033:	ff ff 7f 
    3036:	48 89 c1             	mov    rcx,rax
    3039:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
    303e:	48 29 d1             	sub    rcx,rdx
    3041:	4c 39 c1             	cmp    rcx,r8
    3044:	0f 82 59 12 00 00    	jb     42a3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22d3>
    304a:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    304f:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
    3053:	4c 39 f1             	cmp    rcx,r14
    3056:	0f 84 31 0d 00 00    	je     3d8d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1dbd>
    305c:	48 8b 6c 24 60       	mov    rbp,QWORD PTR [rsp+0x60]
    3061:	4c 39 fd             	cmp    rbp,r15
    3064:	0f 82 03 0a 00 00    	jb     3a6d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a9d>
    306a:	4d 85 c0             	test   r8,r8
    306d:	74 21                	je     3090 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    306f:	48 8d 3c 11          	lea    rdi,[rcx+rdx*1]
    3073:	49 83 f8 01          	cmp    r8,0x1
    3077:	0f 84 e8 0e 00 00    	je     3f65 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f95>
    307d:	4c 89 c2             	mov    rdx,r8
    3080:	4c 89 ce             	mov    rsi,r9
    3083:	e8 d8 df ff ff       	call   1060 <memcpy@plt>
    3088:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    308d:	0f 1f 00             	nop    DWORD PTR [rax]
    3090:	42 c6 04 39 00       	mov    BYTE PTR [rcx+r15*1],0x0
    3095:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    309a:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
    309f:	4c 39 ef             	cmp    rdi,r13
    30a2:	0f 84 9e f4 ff ff    	je     2546 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x576>
    30a8:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    30af:	00 
    30b0:	48 8d 70 01          	lea    rsi,[rax+0x1]
    30b4:	e8 c7 df ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    30b9:	e9 83 f4 ff ff       	jmp    2541 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x571>
    30be:	66 90                	xchg   ax,ax
    30c0:	41 0f b6 12          	movzx  edx,BYTE PTR [r10]
    30c4:	88 10                	mov    BYTE PTR [rax],dl
    30c6:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    30cb:	e9 f0 f7 ff ff       	jmp    28c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8f0>
    30d0:	4d 01 f6             	add    r14,r14
    30d3:	4d 39 f1             	cmp    r9,r14
    30d6:	0f 83 bc 0b 00 00    	jae    3c98 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1cc8>
    30dc:	49 8d 7e 01          	lea    rdi,[r14+0x1]
    30e0:	4c 39 f0             	cmp    rax,r14
    30e3:	73 0d                	jae    30f2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    30e5:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    30ec:	ff ff 7f 
    30ef:	49 89 c6             	mov    r14,rax
    30f2:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    30f7:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    30fb:	e8 70 df ff ff       	call   1070 <operator new(unsigned long)@plt>
    3100:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    3104:	4c 89 fe             	mov    rsi,r15
    3107:	48 89 c7             	mov    rdi,rax
    310a:	e8 51 df ff ff       	call   1060 <memcpy@plt>
    310f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3113:	4d 39 fc             	cmp    r12,r15
    3116:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    311b:	49 89 c0             	mov    r8,rax
    311e:	c6 04 08 0a          	mov    BYTE PTR [rax+rcx*1],0xa
    3122:	0f 84 cd 0d 00 00    	je     3ef5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f25>
    3128:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    312d:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3131:	4c 89 ff             	mov    rdi,r15
    3134:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3139:	48 8d 70 01          	lea    rsi,[rax+0x1]
    313d:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3141:	e8 3a df ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3146:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    314b:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3150:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    3154:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3158:	4c 89 03             	mov    QWORD PTR [rbx],r8
    315b:	43 c6 04 08 00       	mov    BYTE PTR [r8+r9*1],0x0
    3160:	e9 db ef ff ff       	jmp    2140 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x170>
    3165:	0f 1f 00             	nop    DWORD PTR [rax]
    3168:	4c 8d 14 00          	lea    r10,[rax+rax*1]
    316c:	4d 39 d6             	cmp    r14,r10
    316f:	0f 83 bb 0b 00 00    	jae    3d30 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d60>
    3175:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    317c:	ff ff 7f 
    317f:	4c 39 d0             	cmp    rax,r10
    3182:	0f 83 97 0f 00 00    	jae    411f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x214f>
    3188:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    318f:	ff ff 7f 
    3192:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3197:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    319c:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    31a0:	e8 cb de ff ff       	call   1070 <operator new(unsigned long)@plt>
    31a5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    31a9:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    31ae:	49 89 c7             	mov    r15,rax
    31b1:	49 ba fe ff ff ff ff 	movabs r10,0x7ffffffffffffffe
    31b8:	ff ff 7f 
    31bb:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    31c0:	4c 89 ca             	mov    rdx,r9
    31c3:	4c 89 c6             	mov    rsi,r8
    31c6:	4c 89 ff             	mov    rdi,r15
    31c9:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
    31ce:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    31d3:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    31d8:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    31dc:	e8 7f de ff ff       	call   1060 <memcpy@plt>
    31e1:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
    31e5:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    31ea:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    31ef:	4c 8b 54 24 18       	mov    r10,QWORD PTR [rsp+0x18]
    31f4:	4d 39 c4             	cmp    r12,r8
    31f7:	43 c7 04 0f 68 65 61 	mov    DWORD PTR [r15+r9*1],0x64616568
    31fe:	64 
    31ff:	74 22                	je     3223 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1253>
    3201:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3205:	4c 89 c7             	mov    rdi,r8
    3208:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    320d:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3211:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3215:	e8 66 de ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    321a:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    321f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3223:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    3226:	4c 89 53 10          	mov    QWORD PTR [rbx+0x10],r10
    322a:	e9 54 ef ff ff       	jmp    2183 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3>
    322f:	90                   	nop
    3230:	4b 8d 14 3f          	lea    rdx,[r15+r15*1]
    3234:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    3238:	49 39 d0             	cmp    r8,rdx
    323b:	0f 83 2f 0b 00 00    	jae    3d70 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1da0>
    3241:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    3245:	48 39 d0             	cmp    rax,rdx
    3248:	73 0e                	jae    3258 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    324a:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3251:	ff ff 7f 
    3254:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3258:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    325d:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3262:	e8 09 de ff ff       	call   1070 <operator new(unsigned long)@plt>
    3267:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    326c:	4c 89 f2             	mov    rdx,r14
    326f:	48 89 c7             	mov    rdi,rax
    3272:	49 89 c7             	mov    r15,rax
    3275:	e8 e6 dd ff ff       	call   1060 <memcpy@plt>
    327a:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    327f:	43 c6 04 37 30       	mov    BYTE PTR [r15+r14*1],0x30
    3284:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3289:	4d 39 cc             	cmp    r12,r9
    328c:	74 1a                	je     32a8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x12d8>
    328e:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3292:	4c 89 cf             	mov    rdi,r9
    3295:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    329a:	48 8d 70 01          	lea    rsi,[rax+0x1]
    329e:	e8 dd dd ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    32a3:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    32a8:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    32ac:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    32af:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    32b3:	e9 29 ef ff ff       	jmp    21e1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x211>
    32b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    32bf:	00 
    32c0:	4b 8d 04 36          	lea    rax,[r14+r14*1]
    32c4:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    32c8:	49 39 c7             	cmp    r15,rax
    32cb:	0f 83 af 0a 00 00    	jae    3d80 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1db0>
    32d1:	48 89 c2             	mov    rdx,rax
    32d4:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    32db:	ff ff 7f 
    32de:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    32e2:	48 39 d0             	cmp    rax,rdx
    32e5:	73 0e                	jae    32f5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    32e7:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    32ee:	ff ff 7f 
    32f1:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    32f5:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    32fa:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    32ff:	e8 6c dd ff ff       	call   1070 <operator new(unsigned long)@plt>
    3304:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3309:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    330e:	48 89 c7             	mov    rdi,rax
    3311:	49 89 c6             	mov    r14,rax
    3314:	4c 89 c2             	mov    rdx,r8
    3317:	48 89 ce             	mov    rsi,rcx
    331a:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    331f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3324:	e8 37 dd ff ff       	call   1060 <memcpy@plt>
    3329:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    332e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3333:	bf 3a 20 00 00       	mov    edi,0x203a
    3338:	66 43 89 3c 06       	mov    WORD PTR [r14+r8*1],di
    333d:	49 39 cc             	cmp    r12,rcx
    3340:	74 10                	je     3352 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1382>
    3342:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3346:	48 89 cf             	mov    rdi,rcx
    3349:	48 8d 70 01          	lea    rsi,[rax+0x1]
    334d:	e8 2e dd ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3352:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3356:	4c 89 33             	mov    QWORD PTR [rbx],r14
    3359:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    335d:	e9 e9 ee ff ff       	jmp    224b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x27b>
    3362:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3368:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    336c:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
    3371:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    3376:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    337b:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    3380:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3384:	e8 e7 dc ff ff       	call   1070 <operator new(unsigned long)@plt>
    3389:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    338e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3392:	49 89 c1             	mov    r9,rax
    3395:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    339a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    339f:	4d 85 d2             	test   r10,r10
    33a2:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
    33a7:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    33ac:	e9 30 f9 ff ff       	jmp    2ce1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    33b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    33b8:	4c 39 f8             	cmp    rax,r15
    33bb:	0f 82 7c 10 00 00    	jb     443d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x246d>
    33c1:	48 8d 3c 36          	lea    rdi,[rsi+rsi*1]
    33c5:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    33c9:	49 39 ff             	cmp    r15,rdi
    33cc:	0f 83 06 0a 00 00    	jae    3dd8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e08>
    33d2:	48 39 f8             	cmp    rax,rdi
    33d5:	0f 83 7b 0d 00 00    	jae    4156 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2186>
    33db:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    33e2:	ff ff 7f 
    33e5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    33e9:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    33ee:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    33f3:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    33f8:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    33fd:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3402:	e8 69 dc ff ff       	call   1070 <operator new(unsigned long)@plt>
    3407:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    340c:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3411:	49 89 c1             	mov    r9,rax
    3414:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    3419:	44 8b 44 24 10       	mov    r8d,DWORD PTR [rsp+0x10]
    341e:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3423:	4c 89 de             	mov    rsi,r11
    3426:	4c 89 cf             	mov    rdi,r9
    3429:	4c 89 54 24 28       	mov    QWORD PTR [rsp+0x28],r10
    342e:	4c 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],r11
    3433:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3438:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    343d:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3442:	e8 19 dc ff ff       	call   1060 <memcpy@plt>
    3447:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
    344c:	4c 8b 5c 24 20       	mov    r11,QWORD PTR [rsp+0x20]
    3451:	49 89 c1             	mov    r9,rax
    3454:	4d 85 d2             	test   r10,r10
    3457:	74 33                	je     348c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    3459:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    345e:	48 01 c2             	add    rdx,rax
    3461:	83 7c 24 10 01       	cmp    DWORD PTR [rsp+0x10],0x1
    3466:	0f 84 14 0b 00 00    	je     3f80 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fb0>
    346c:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
    3470:	8b 74 24 18          	mov    esi,DWORD PTR [rsp+0x18]
    3474:	85 c9                	test   ecx,ecx
    3476:	74 14                	je     348c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    3478:	31 c0                	xor    eax,eax
    347a:	89 c1                	mov    ecx,eax
    347c:	83 c0 01             	add    eax,0x1
    347f:	41 0f b6 3c 0a       	movzx  edi,BYTE PTR [r10+rcx*1]
    3484:	40 88 3c 0a          	mov    BYTE PTR [rdx+rcx*1],dil
    3488:	39 f0                	cmp    eax,esi
    348a:	72 ee                	jb     347a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14aa>
    348c:	4d 39 f3             	cmp    r11,r14
    348f:	74 1b                	je     34ac <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14dc>
    3491:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3496:	4c 89 df             	mov    rdi,r11
    3499:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    349e:	48 8d 70 01          	lea    rsi,[rax+0x1]
    34a2:	e8 d9 db ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    34a7:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    34ac:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    34b0:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    34b5:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    34ba:	e9 d1 ef ff ff       	jmp    2490 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4c0>
    34bf:	90                   	nop
    34c0:	48 01 c0             	add    rax,rax
    34c3:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    34c7:	49 39 c0             	cmp    r8,rax
    34ca:	0f 83 6e 09 00 00    	jae    3e3e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e6e>
    34d0:	48 89 c2             	mov    rdx,rax
    34d3:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    34da:	ff ff 7f 
    34dd:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    34e1:	48 39 d0             	cmp    rax,rdx
    34e4:	73 0e                	jae    34f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    34e6:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    34ed:	ff ff 7f 
    34f0:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    34f4:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    34f9:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    34fe:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    3503:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    3508:	e8 63 db ff ff       	call   1070 <operator new(unsigned long)@plt>
    350d:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    3512:	4c 89 fa             	mov    rdx,r15
    3515:	48 89 c7             	mov    rdi,rax
    3518:	e8 43 db ff ff       	call   1060 <memcpy@plt>
    351d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3522:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    3527:	49 89 c1             	mov    r9,rax
    352a:	b8 5d 20 00 00       	mov    eax,0x205d
    352f:	4c 39 f1             	cmp    rcx,r14
    3532:	66 43 89 04 39       	mov    WORD PTR [r9+r15*1],ax
    3537:	43 c6 44 39 02 28    	mov    BYTE PTR [r9+r15*1+0x2],0x28
    353d:	74 25                	je     3564 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1594>
    353f:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3544:	48 89 cf             	mov    rdi,rcx
    3547:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    354c:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3551:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3555:	e8 26 db ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    355a:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    355f:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3564:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3568:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    356d:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3572:	e9 8f ef ff ff       	jmp    2506 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x536>
    3577:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    357e:	00 00 
    3580:	ba 02 00 00 00       	mov    edx,0x2
    3585:	b9 03 00 00 00       	mov    ecx,0x3
    358a:	41 b8 03 00 00 00    	mov    r8d,0x3
    3590:	e9 2a ed ff ff       	jmp    22bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2ef>
    3595:	0f 1f 00             	nop    DWORD PTR [rax]
    3598:	4d 01 ed             	add    r13,r13
    359b:	4c 39 ed             	cmp    rbp,r13
    359e:	0f 83 b7 08 00 00    	jae    3e5b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e8b>
    35a4:	49 8d 7d 01          	lea    rdi,[r13+0x1]
    35a8:	4c 39 e8             	cmp    rax,r13
    35ab:	73 0d                	jae    35ba <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    35ad:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    35b4:	ff ff 7f 
    35b7:	49 89 c5             	mov    r13,rax
    35ba:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    35bf:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    35c3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    35c8:	e8 a3 da ff ff       	call   1070 <operator new(unsigned long)@plt>
    35cd:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    35d1:	4c 89 fa             	mov    rdx,r15
    35d4:	48 89 c7             	mov    rdi,rax
    35d7:	e8 84 da ff ff       	call   1060 <memcpy@plt>
    35dc:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    35e0:	42 c6 04 38 29       	mov    BYTE PTR [rax+r15*1],0x29
    35e5:	49 89 c0             	mov    r8,rax
    35e8:	4c 39 f1             	cmp    rcx,r14
    35eb:	74 19                	je     3606 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1636>
    35ed:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    35f1:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    35f6:	48 89 cf             	mov    rdi,rcx
    35f9:	48 8d 70 01          	lea    rsi,[rax+0x1]
    35fd:	e8 7e da ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3602:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
    3606:	4c 89 44 24 50       	mov    QWORD PTR [rsp+0x50],r8
    360b:	4c 89 6c 24 60       	mov    QWORD PTR [rsp+0x60],r13
    3610:	41 c6 04 28 00       	mov    BYTE PTR [r8+rbp*1],0x0
    3615:	48 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],rbp
    361a:	e9 72 ef ff ff       	jmp    2591 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5c1>
    361f:	90                   	nop
    3620:	48 39 c8             	cmp    rax,rcx
    3623:	0f 82 a0 0e 00 00    	jb     44c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24f9>
    3629:	4b 8d 14 3f          	lea    rdx,[r15+r15*1]
    362d:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    3631:	48 39 d1             	cmp    rcx,rdx
    3634:	0f 83 3d 08 00 00    	jae    3e77 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ea7>
    363a:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    363e:	48 39 d0             	cmp    rax,rdx
    3641:	73 0e                	jae    3651 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3643:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    364a:	ff ff 7f 
    364d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3651:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
    3656:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    365b:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3660:	e8 0b da ff ff       	call   1070 <operator new(unsigned long)@plt>
    3665:	4d 85 ed             	test   r13,r13
    3668:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    366d:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    3672:	49 89 c7             	mov    r15,rax
    3675:	4c 8b 54 24 18       	mov    r10,QWORD PTR [rsp+0x18]
    367a:	0f 85 95 03 00 00    	jne    3a15 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a45>
    3680:	4d 85 c0             	test   r8,r8
    3683:	74 2c                	je     36b1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3685:	48 89 c7             	mov    rdi,rax
    3688:	48 83 fd 01          	cmp    rbp,0x1
    368c:	0f 84 4e 0a 00 00    	je     40e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2110>
    3692:	48 89 ea             	mov    rdx,rbp
    3695:	4c 89 c6             	mov    rsi,r8
    3698:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    369d:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    36a2:	e8 b9 d9 ff ff       	call   1060 <memcpy@plt>
    36a7:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    36ac:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    36b1:	4d 39 d4             	cmp    r12,r10
    36b4:	74 1a                	je     36d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    36b6:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    36ba:	4c 89 d7             	mov    rdi,r10
    36bd:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    36c2:	48 8d 70 01          	lea    rsi,[rax+0x1]
    36c6:	e8 b5 d9 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    36cb:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    36d0:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    36d4:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    36d7:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    36db:	e9 10 ef ff ff       	jmp    25f0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x620>
    36e0:	49 83 f9 10          	cmp    r9,0x10
    36e4:	0f 84 7d 07 00 00    	je     3e67 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e97>
    36ea:	c6 44 0b 10 0a       	mov    BYTE PTR [rbx+rcx*1+0x10],0xa
    36ef:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    36f2:	42 c6 04 08 00       	mov    BYTE PTR [rax+r9*1],0x0
    36f7:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    36fb:	e9 5b ea ff ff       	jmp    215b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b>
    3700:	49 83 fe 0f          	cmp    r14,0xf
    3704:	0f 86 6e ea ff ff    	jbe    2178 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a8>
    370a:	bf 1f 00 00 00       	mov    edi,0x1f
    370f:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3714:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3719:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    371d:	e8 4e d9 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3722:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3727:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    372b:	49 89 c7             	mov    r15,rax
    372e:	41 ba 1e 00 00 00    	mov    r10d,0x1e
    3734:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3739:	e9 82 fa ff ff       	jmp    31c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    373e:	66 90                	xchg   ax,ax
    3740:	48 83 f9 0f          	cmp    rcx,0xf
    3744:	0f 86 6d e9 ff ff    	jbe    20b7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xe7>
    374a:	48 39 c8             	cmp    rax,rcx
    374d:	0f 82 30 0d 00 00    	jb     4483 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24b3>
    3753:	48 83 f9 1d          	cmp    rcx,0x1d
    3757:	0f 87 03 06 00 00    	ja     3d60 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d90>
    375d:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3764:	00 
    3765:	bf 1f 00 00 00       	mov    edi,0x1f
    376a:	e9 3a f2 ff ff       	jmp    29a9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    376f:	90                   	nop
    3770:	49 83 f8 10          	cmp    r8,0x10
    3774:	0f 85 5f ea ff ff    	jne    21d9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x209>
    377a:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3781:	00 
    3782:	bf 1f 00 00 00       	mov    edi,0x1f
    3787:	e9 cc fa ff ff       	jmp    3258 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    378c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3790:	49 83 ff 0f          	cmp    r15,0xf
    3794:	0f 86 a3 ea ff ff    	jbe    223d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x26d>
    379a:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    37a1:	00 
    37a2:	bf 1f 00 00 00       	mov    edi,0x1f
    37a7:	e9 49 fb ff ff       	jmp    32f5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    37ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    37b0:	4c 39 e8             	cmp    rax,r13
    37b3:	0f 82 5c 0c 00 00    	jb     4415 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2445>
    37b9:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    37bd:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    37c1:	49 39 fd             	cmp    r13,rdi
    37c4:	0f 83 81 07 00 00    	jae    3f4b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f7b>
    37ca:	48 39 f8             	cmp    rax,rdi
    37cd:	0f 83 a1 09 00 00    	jae    4174 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21a4>
    37d3:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    37da:	ff ff 7f 
    37dd:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    37e1:	e9 86 f2 ff ff       	jmp    2a6c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    37e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    37ed:	00 00 00 
    37f0:	48 39 c8             	cmp    rax,rcx
    37f3:	0f 82 18 0b 00 00    	jb     4311 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2341>
    37f9:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    37fd:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3801:	48 39 f9             	cmp    rcx,rdi
    3804:	0f 83 4e 07 00 00    	jae    3f58 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f88>
    380a:	48 39 f8             	cmp    rax,rdi
    380d:	0f 83 87 09 00 00    	jae    419a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ca>
    3813:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    381a:	ff ff 7f 
    381d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3821:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
    3826:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
    382b:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
    3830:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    3835:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    383a:	e8 31 d8 ff ff       	call   1070 <operator new(unsigned long)@plt>
    383f:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    3844:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    3849:	49 89 c7             	mov    r15,rax
    384c:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3851:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
    3856:	4d 85 d2             	test   r10,r10
    3859:	4c 8b 44 24 38       	mov    r8,QWORD PTR [rsp+0x38]
    385e:	0f 95 c0             	setne  al
    3861:	48 85 d2             	test   rdx,rdx
    3864:	0f 85 3a 04 00 00    	jne    3ca4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1cd4>
    386a:	48 85 c9             	test   rcx,rcx
    386d:	74 30                	je     389f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    386f:	84 c0                	test   al,al
    3871:	74 2c                	je     389f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    3873:	4c 89 ff             	mov    rdi,r15
    3876:	49 83 f9 01          	cmp    r9,0x1
    387a:	0f 84 8a 08 00 00    	je     410a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x213a>
    3880:	4c 89 ca             	mov    rdx,r9
    3883:	4c 89 d6             	mov    rsi,r10
    3886:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    388b:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3890:	e8 cb d7 ff ff       	call   1060 <memcpy@plt>
    3895:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    389a:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    389f:	4d 39 f0             	cmp    r8,r14
    38a2:	74 1b                	je     38bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    38a4:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    38a9:	4c 89 c7             	mov    rdi,r8
    38ac:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    38b1:	48 8d 70 01          	lea    rsi,[rax+0x1]
    38b5:	e8 c6 d7 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    38ba:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    38bf:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    38c3:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    38c8:	4d 89 f8             	mov    r8,r15
    38cb:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    38d0:	e9 db ee ff ff       	jmp    27b0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    38d5:	0f 1f 00             	nop    DWORD PTR [rax]
    38d8:	49 83 ff 0f          	cmp    r15,0xf
    38dc:	0f 86 7b eb ff ff    	jbe    245d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x48d>
    38e2:	bf 1f 00 00 00       	mov    edi,0x1f
    38e7:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    38ec:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    38f1:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    38f6:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    38fb:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3900:	e8 6b d7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3905:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    390c:	00 
    390d:	49 89 c1             	mov    r9,rax
    3910:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3915:	44 8b 44 24 10       	mov    r8d,DWORD PTR [rsp+0x10]
    391a:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    391f:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3924:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    3929:	e9 f5 fa ff ff       	jmp    3423 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1453>
    392e:	66 90                	xchg   ax,ax
    3930:	49 83 f8 0f          	cmp    r8,0xf
    3934:	0f 86 b7 eb ff ff    	jbe    24f1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x521>
    393a:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3941:	00 
    3942:	bf 1f 00 00 00       	mov    edi,0x1f
    3947:	e9 a8 fb ff ff       	jmp    34f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    394c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3950:	49 83 ff 01          	cmp    r15,0x1
    3954:	0f 84 b0 05 00 00    	je     3f0a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f3a>
    395a:	4c 89 ce             	mov    rsi,r9
    395d:	4c 89 fa             	mov    rdx,r15
    3960:	48 89 c7             	mov    rdi,rax
    3963:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3968:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
    396d:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3972:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    3977:	e8 e4 d6 ff ff       	call   1060 <memcpy@plt>
    397c:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
    3981:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3986:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    398b:	4d 85 db             	test   r11,r11
    398e:	0f 84 7f f0 ff ff    	je     2a13 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    3994:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    3999:	4b 8d 3c 3e          	lea    rdi,[r14+r15*1]
    399d:	49 83 f8 01          	cmp    r8,0x1
    39a1:	0f 85 4d f0 ff ff    	jne    29f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa24>
    39a7:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    39ab:	88 07                	mov    BYTE PTR [rdi],al
    39ad:	e9 61 f0 ff ff       	jmp    2a13 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    39b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    39b8:	41 bd 1e 00 00 00    	mov    r13d,0x1e
    39be:	bf 1f 00 00 00       	mov    edi,0x1f
    39c3:	48 83 fd 10          	cmp    rbp,0x10
    39c7:	0f 85 ac eb ff ff    	jne    2579 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5a9>
    39cd:	e9 e8 fb ff ff       	jmp    35ba <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    39d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    39d8:	48 83 f9 0f          	cmp    rcx,0xf
    39dc:	0f 86 ea eb ff ff    	jbe    25cc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5fc>
    39e2:	48 39 c8             	cmp    rax,rcx
    39e5:	0f 82 de 0a 00 00    	jb     44c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24f9>
    39eb:	48 83 f9 1d          	cmp    rcx,0x1d
    39ef:	0f 87 82 04 00 00    	ja     3e77 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ea7>
    39f5:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    39fc:	00 
    39fd:	bf 1f 00 00 00       	mov    edi,0x1f
    3a02:	e9 4a fc ff ff       	jmp    3651 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3a07:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    3a0b:	88 07                	mov    BYTE PTR [rdi],al
    3a0d:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    3a10:	e9 c6 e6 ff ff       	jmp    20db <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10b>
    3a15:	49 83 fd 01          	cmp    r13,0x1
    3a19:	0f 84 6c 05 00 00    	je     3f8b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fbb>
    3a1f:	4c 89 d6             	mov    rsi,r10
    3a22:	4c 89 ea             	mov    rdx,r13
    3a25:	48 89 c7             	mov    rdi,rax
    3a28:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3a2d:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3a32:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3a37:	e8 24 d6 ff ff       	call   1060 <memcpy@plt>
    3a3c:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3a41:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3a46:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    3a4b:	4d 85 c0             	test   r8,r8
    3a4e:	0f 84 5d fc ff ff    	je     36b1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3a54:	4b 8d 3c 2f          	lea    rdi,[r15+r13*1]
    3a58:	48 83 fd 01          	cmp    rbp,0x1
    3a5c:	0f 85 30 fc ff ff    	jne    3692 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16c2>
    3a62:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3a66:	88 07                	mov    BYTE PTR [rdi],al
    3a68:	e9 44 fc ff ff       	jmp    36b1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3a6d:	4c 39 f8             	cmp    rax,r15
    3a70:	0f 82 0e 09 00 00    	jb     4384 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23b4>
    3a76:	48 8d 7c 2d 00       	lea    rdi,[rbp+rbp*1+0x0]
    3a7b:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3a7f:	49 39 ff             	cmp    r15,rdi
    3a82:	0f 83 7e 05 00 00    	jae    4006 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2036>
    3a88:	48 39 f8             	cmp    rax,rdi
    3a8b:	0f 83 12 07 00 00    	jae    41a3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21d3>
    3a91:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3a98:	ff ff 7f 
    3a9b:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3a9f:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    3aa4:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3aa9:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    3aae:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3ab3:	e8 b8 d5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3ab8:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    3abd:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3ac2:	48 89 c5             	mov    rbp,rax
    3ac5:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3aca:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    3acf:	4d 85 c9             	test   r9,r9
    3ad2:	0f 95 c0             	setne  al
    3ad5:	48 85 d2             	test   rdx,rdx
    3ad8:	0f 85 a6 03 00 00    	jne    3e84 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1eb4>
    3ade:	4d 85 ff             	test   r15,r15
    3ae1:	74 26                	je     3b09 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3ae3:	84 c0                	test   al,al
    3ae5:	74 22                	je     3b09 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3ae7:	48 89 ef             	mov    rdi,rbp
    3aea:	49 83 f8 01          	cmp    r8,0x1
    3aee:	0f 84 6b 06 00 00    	je     415f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x218f>
    3af4:	4c 89 c2             	mov    rdx,r8
    3af7:	4c 89 ce             	mov    rsi,r9
    3afa:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3aff:	e8 5c d5 ff ff       	call   1060 <memcpy@plt>
    3b04:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3b09:	4c 39 f1             	cmp    rcx,r14
    3b0c:	74 11                	je     3b1f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    3b0e:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3b13:	48 89 cf             	mov    rdi,rcx
    3b16:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3b1a:	e8 61 d5 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3b1f:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3b23:	48 89 6c 24 50       	mov    QWORD PTR [rsp+0x50],rbp
    3b28:	48 89 e9             	mov    rcx,rbp
    3b2b:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3b30:	e9 5b f5 ff ff       	jmp    3090 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    3b35:	48 83 f9 0f          	cmp    rcx,0xf
    3b39:	0f 86 3d ec ff ff    	jbe    277c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7ac>
    3b3f:	48 39 c8             	cmp    rax,rcx
    3b42:	0f 82 c9 07 00 00    	jb     4311 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2341>
    3b48:	48 83 f9 1d          	cmp    rcx,0x1d
    3b4c:	0f 87 06 04 00 00    	ja     3f58 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f88>
    3b52:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3b59:	00 
    3b5a:	bf 1f 00 00 00       	mov    edi,0x1f
    3b5f:	e9 bd fc ff ff       	jmp    3821 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    3b64:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    3b68:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3b6c:	49 39 f8             	cmp    r8,rdi
    3b6f:	0f 83 9e 04 00 00    	jae    4013 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2043>
    3b75:	48 39 f8             	cmp    rax,rdi
    3b78:	0f 83 2e 06 00 00    	jae    41ac <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21dc>
    3b7e:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3b85:	ff ff 7f 
    3b88:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3b8c:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
    3b91:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    3b96:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3b9b:	e8 d0 d4 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3ba0:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    3ba5:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    3baa:	48 89 c7             	mov    rdi,rax
    3bad:	49 89 c7             	mov    r15,rax
    3bb0:	48 89 ce             	mov    rsi,rcx
    3bb3:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
    3bb8:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3bbd:	e8 9e d4 ff ff       	call   1060 <memcpy@plt>
    3bc2:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3bc7:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    3bcc:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    3bd1:	4c 39 f1             	cmp    rcx,r14
    3bd4:	41 c6 04 17 29       	mov    BYTE PTR [r15+rdx*1],0x29
    3bd9:	74 25                	je     3c00 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c30>
    3bdb:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3be0:	48 89 cf             	mov    rdi,rcx
    3be3:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3be8:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3bed:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3bf1:	e8 8a d4 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3bf6:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3bfb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    3c00:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3c04:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    3c09:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3c0e:	e9 2d ed ff ff       	jmp    2940 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x970>
    3c13:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3c17:	88 02                	mov    BYTE PTR [rdx],al
    3c19:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    3c1e:	e9 6d e8 ff ff       	jmp    2490 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4c0>
    3c23:	48 85 c9             	test   rcx,rcx
    3c26:	41 0f 95 c3          	setne  r11b
    3c2a:	41 21 c3             	and    r11d,eax
    3c2d:	48 83 fa 01          	cmp    rdx,0x1
    3c31:	0f 84 e9 03 00 00    	je     4020 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2050>
    3c37:	4c 89 c6             	mov    rsi,r8
    3c3a:	4c 89 ff             	mov    rdi,r15
    3c3d:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3c42:	44 88 5c 24 10       	mov    BYTE PTR [rsp+0x10],r11b
    3c47:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    3c4c:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    3c51:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3c56:	e8 05 d4 ff ff       	call   1060 <memcpy@plt>
    3c5b:	80 7c 24 10 00       	cmp    BYTE PTR [rsp+0x10],0x0
    3c60:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3c65:	0f 84 6b ee ff ff    	je     2ad6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    3c6b:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    3c70:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3c75:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    3c7a:	48 83 f9 01          	cmp    rcx,0x1
    3c7e:	49 8d 3c 17          	lea    rdi,[r15+rdx*1]
    3c82:	0f 85 39 ee ff ff    	jne    2ac1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xaf1>
    3c88:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3c8c:	88 07                	mov    BYTE PTR [rdi],al
    3c8e:	e9 43 ee ff ff       	jmp    2ad6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    3c93:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3c98:	48 8d 79 02          	lea    rdi,[rcx+0x2]
    3c9c:	4d 89 ce             	mov    r14,r9
    3c9f:	e9 4e f4 ff ff       	jmp    30f2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    3ca4:	4d 85 c9             	test   r9,r9
    3ca7:	40 0f 95 c6          	setne  sil
    3cab:	21 c6                	and    esi,eax
    3cad:	48 83 fa 01          	cmp    rdx,0x1
    3cb1:	0f 84 a1 03 00 00    	je     4058 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2088>
    3cb7:	40 88 74 24 28       	mov    BYTE PTR [rsp+0x28],sil
    3cbc:	4c 89 ff             	mov    rdi,r15
    3cbf:	4c 89 c6             	mov    rsi,r8
    3cc2:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
    3cc7:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3ccc:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
    3cd1:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
    3cd6:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    3cdb:	e8 80 d3 ff ff       	call   1060 <memcpy@plt>
    3ce0:	80 7c 24 28 00       	cmp    BYTE PTR [rsp+0x28],0x0
    3ce5:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3cea:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    3cef:	0f 84 aa fb ff ff    	je     389f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    3cf5:	4c 8b 4c 24 38       	mov    r9,QWORD PTR [rsp+0x38]
    3cfa:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    3cff:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
    3d04:	49 83 f9 01          	cmp    r9,0x1
    3d08:	49 8d 3c 17          	lea    rdi,[r15+rdx*1]
    3d0c:	0f 85 6e fb ff ff    	jne    3880 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b0>
    3d12:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3d16:	88 07                	mov    BYTE PTR [rdi],al
    3d18:	e9 82 fb ff ff       	jmp    389f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    3d1d:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3d21:	88 07                	mov    BYTE PTR [rdi],al
    3d23:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    3d26:	e9 c5 e8 ff ff       	jmp    25f0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x620>
    3d2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3d30:	48 8d 79 06          	lea    rdi,[rcx+0x6]
    3d34:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3d39:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3d3e:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3d42:	e8 29 d3 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3d47:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3d4b:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3d50:	49 89 c7             	mov    r15,rax
    3d53:	4d 89 f2             	mov    r10,r14
    3d56:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3d5b:	e9 60 f4 ff ff       	jmp    31c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    3d60:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3d64:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3d68:	e9 3c ec ff ff       	jmp    29a9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    3d6d:	0f 1f 00             	nop    DWORD PTR [rax]
    3d70:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    3d74:	48 8d 79 07          	lea    rdi,[rcx+0x7]
    3d78:	e9 db f4 ff ff       	jmp    3258 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    3d7d:	0f 1f 00             	nop    DWORD PTR [rax]
    3d80:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    3d84:	49 8d 78 03          	lea    rdi,[r8+0x3]
    3d88:	e9 68 f5 ff ff       	jmp    32f5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    3d8d:	49 83 ff 0f          	cmp    r15,0xf
    3d91:	0f 86 d3 f2 ff ff    	jbe    306a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x109a>
    3d97:	4c 39 f8             	cmp    rax,r15
    3d9a:	0f 82 e4 05 00 00    	jb     4384 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23b4>
    3da0:	49 83 ff 1d          	cmp    r15,0x1d
    3da4:	0f 87 5c 02 00 00    	ja     4006 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2036>
    3daa:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3db1:	00 
    3db2:	bf 1f 00 00 00       	mov    edi,0x1f
    3db7:	e9 e3 fc ff ff       	jmp    3a9f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    3dbc:	49 83 f8 10          	cmp    r8,0x10
    3dc0:	0f 85 71 eb ff ff    	jne    2937 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x967>
    3dc6:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3dcd:	00 
    3dce:	bf 1f 00 00 00       	mov    edi,0x1f
    3dd3:	e9 b4 fd ff ff       	jmp    3b8c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    3dd8:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    3ddc:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    3de1:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3de6:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3deb:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    3df0:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3df5:	e8 76 d2 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3dfa:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    3dfe:	49 89 c1             	mov    r9,rax
    3e01:	e9 0a fb ff ff       	jmp    3910 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1940>
    3e06:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3e0a:	88 07                	mov    BYTE PTR [rdi],al
    3e0c:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    3e11:	e9 ca e8 ff ff       	jmp    26e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    3e16:	48 83 c2 02          	add    rdx,0x2
    3e1a:	83 e2 3f             	and    edx,0x3f
    3e1d:	74 15                	je     3e34 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e64>
    3e1f:	31 c0                	xor    eax,eax
    3e21:	89 c1                	mov    ecx,eax
    3e23:	83 c0 01             	add    eax,0x1
    3e26:	41 0f b6 34 0e       	movzx  esi,BYTE PTR [r14+rcx*1]
    3e2b:	41 88 74 0d 00       	mov    BYTE PTR [r13+rcx*1+0x0],sil
    3e30:	39 d0                	cmp    eax,edx
    3e32:	72 ed                	jb     3e21 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e51>
    3e34:	4c 89 44 24 78       	mov    QWORD PTR [rsp+0x78],r8
    3e39:	e9 3a e2 ff ff       	jmp    2078 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa8>
    3e3e:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    3e42:	49 8d 7f 04          	lea    rdi,[r15+0x4]
    3e46:	e9 a9 f6 ff ff       	jmp    34f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    3e4b:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3e4f:	88 07                	mov    BYTE PTR [rdi],al
    3e51:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    3e56:	e9 55 e9 ff ff       	jmp    27b0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    3e5b:	49 8d 7f 02          	lea    rdi,[r15+0x2]
    3e5f:	49 89 ed             	mov    r13,rbp
    3e62:	e9 53 f7 ff ff       	jmp    35ba <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    3e67:	41 be 1e 00 00 00    	mov    r14d,0x1e
    3e6d:	bf 1f 00 00 00       	mov    edi,0x1f
    3e72:	e9 7b f2 ff ff       	jmp    30f2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    3e77:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3e7b:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3e7f:	e9 cd f7 ff ff       	jmp    3651 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3e84:	4d 85 c0             	test   r8,r8
    3e87:	41 0f 95 c3          	setne  r11b
    3e8b:	41 21 c3             	and    r11d,eax
    3e8e:	48 83 fa 01          	cmp    rdx,0x1
    3e92:	0f 84 0d 02 00 00    	je     40a5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x20d5>
    3e98:	48 89 ce             	mov    rsi,rcx
    3e9b:	48 89 ef             	mov    rdi,rbp
    3e9e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3ea3:	44 88 5c 24 10       	mov    BYTE PTR [rsp+0x10],r11b
    3ea8:	4c 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],r9
    3ead:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    3eb2:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    3eb7:	e8 a4 d1 ff ff       	call   1060 <memcpy@plt>
    3ebc:	80 7c 24 10 00       	cmp    BYTE PTR [rsp+0x10],0x0
    3ec1:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3ec6:	0f 84 3d fc ff ff    	je     3b09 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3ecc:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    3ed1:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    3ed6:	4c 8b 4c 24 28       	mov    r9,QWORD PTR [rsp+0x28]
    3edb:	49 83 f8 01          	cmp    r8,0x1
    3edf:	48 8d 7c 15 00       	lea    rdi,[rbp+rdx*1+0x0]
    3ee4:	0f 85 0a fc ff ff    	jne    3af4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b24>
    3eea:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3eee:	88 07                	mov    BYTE PTR [rdi],al
    3ef0:	e9 14 fc ff ff       	jmp    3b09 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3ef5:	48 89 03             	mov    QWORD PTR [rbx],rax
    3ef8:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    3efc:	42 c6 04 08 00       	mov    BYTE PTR [rax+r9*1],0x0
    3f01:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    3f05:	e9 54 e2 ff ff       	jmp    215e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18e>
    3f0a:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3f0e:	41 88 06             	mov    BYTE PTR [r14],al
    3f11:	4d 85 db             	test   r11,r11
    3f14:	0f 84 f9 ea ff ff    	je     2a13 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    3f1a:	49 8d 7e 01          	lea    rdi,[r14+0x1]
    3f1e:	49 83 f8 01          	cmp    r8,0x1
    3f22:	0f 85 cc ea ff ff    	jne    29f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa24>
    3f28:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    3f2c:	41 88 46 01          	mov    BYTE PTR [r14+0x1],al
    3f30:	4d 39 cc             	cmp    r12,r9
    3f33:	0f 85 df ea ff ff    	jne    2a18 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa48>
    3f39:	e9 f4 ea ff ff       	jmp    2a32 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    3f3e:	66 90                	xchg   ax,ax
    3f40:	41 0f b6 12          	movzx  edx,BYTE PTR [r10]
    3f44:	88 10                	mov    BYTE PTR [rax],dl
    3f46:	e9 15 ee ff ff       	jmp    2d60 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    3f4b:	4c 89 2c 24          	mov    QWORD PTR [rsp],r13
    3f4f:	49 8d 7d 01          	lea    rdi,[r13+0x1]
    3f53:	e9 14 eb ff ff       	jmp    2a6c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    3f58:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3f5c:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3f60:	e9 bc f8 ff ff       	jmp    3821 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    3f65:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3f69:	88 07                	mov    BYTE PTR [rdi],al
    3f6b:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    3f70:	e9 1b f1 ff ff       	jmp    3090 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    3f75:	41 bf 01 00 00 00    	mov    r15d,0x1
    3f7b:	e9 ac ec ff ff       	jmp    2c2c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc5c>
    3f80:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3f84:	88 02                	mov    BYTE PTR [rdx],al
    3f86:	e9 01 f5 ff ff       	jmp    348c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    3f8b:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3f8f:	41 88 07             	mov    BYTE PTR [r15],al
    3f92:	4d 85 c0             	test   r8,r8
    3f95:	0f 84 16 f7 ff ff    	je     36b1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3f9b:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    3f9f:	48 83 fd 01          	cmp    rbp,0x1
    3fa3:	0f 85 e9 f6 ff ff    	jne    3692 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16c2>
    3fa9:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3fad:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    3fb1:	4d 39 d4             	cmp    r12,r10
    3fb4:	0f 85 fc f6 ff ff    	jne    36b6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e6>
    3fba:	e9 11 f7 ff ff       	jmp    36d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    3fbf:	90                   	nop
    3fc0:	48 83 c7 01          	add    rdi,0x1
    3fc4:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    3fc9:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    3fce:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    3fd3:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    3fd8:	e8 93 d0 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3fdd:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    3fe2:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    3fe7:	49 89 c1             	mov    r9,rax
    3fea:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    3fef:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    3ff4:	4d 85 d2             	test   r10,r10
    3ff7:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    3ffc:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    4001:	e9 db ec ff ff       	jmp    2ce1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    4006:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    400a:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    400e:	e9 8c fa ff ff       	jmp    3a9f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    4013:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    4017:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    401b:	e9 6c fb ff ff       	jmp    3b8c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    4020:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    4024:	41 88 07             	mov    BYTE PTR [r15],al
    4027:	45 84 db             	test   r11b,r11b
    402a:	0f 84 a6 ea ff ff    	je     2ad6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    4030:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    4034:	48 83 f9 01          	cmp    rcx,0x1
    4038:	0f 85 83 ea ff ff    	jne    2ac1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xaf1>
    403e:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    4042:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    4046:	4d 39 f0             	cmp    r8,r14
    4049:	0f 85 8c ea ff ff    	jne    2adb <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb0b>
    404f:	e9 98 ea ff ff       	jmp    2aec <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    4054:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    4058:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    405c:	41 88 07             	mov    BYTE PTR [r15],al
    405f:	40 84 f6             	test   sil,sil
    4062:	0f 84 37 f8 ff ff    	je     389f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    4068:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    406c:	49 83 f9 01          	cmp    r9,0x1
    4070:	0f 85 0a f8 ff ff    	jne    3880 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b0>
    4076:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    407a:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    407e:	4d 39 f0             	cmp    r8,r14
    4081:	0f 85 1d f8 ff ff    	jne    38a4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18d4>
    4087:	e9 33 f8 ff ff       	jmp    38bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    408c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    4090:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    4094:	41 88 06             	mov    BYTE PTR [r14],al
    4097:	4d 39 cc             	cmp    r12,r9
    409a:	0f 85 78 e9 ff ff    	jne    2a18 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa48>
    40a0:	e9 8d e9 ff ff       	jmp    2a32 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    40a5:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    40a8:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    40ab:	45 84 db             	test   r11b,r11b
    40ae:	0f 84 55 fa ff ff    	je     3b09 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    40b4:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    40b8:	49 83 f8 01          	cmp    r8,0x1
    40bc:	0f 85 32 fa ff ff    	jne    3af4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b24>
    40c2:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    40c6:	88 45 01             	mov    BYTE PTR [rbp+0x1],al
    40c9:	4c 39 f1             	cmp    rcx,r14
    40cc:	0f 85 3c fa ff ff    	jne    3b0e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3e>
    40d2:	e9 48 fa ff ff       	jmp    3b1f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    40d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    40de:	00 00 
    40e0:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    40e4:	41 88 07             	mov    BYTE PTR [r15],al
    40e7:	4d 39 d4             	cmp    r12,r10
    40ea:	0f 85 c6 f5 ff ff    	jne    36b6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e6>
    40f0:	e9 db f5 ff ff       	jmp    36d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    40f5:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    40f9:	41 88 07             	mov    BYTE PTR [r15],al
    40fc:	4d 39 f0             	cmp    r8,r14
    40ff:	0f 85 d6 e9 ff ff    	jne    2adb <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb0b>
    4105:	e9 e2 e9 ff ff       	jmp    2aec <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    410a:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    410e:	41 88 07             	mov    BYTE PTR [r15],al
    4111:	4d 39 f0             	cmp    r8,r14
    4114:	0f 85 8a f7 ff ff    	jne    38a4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18d4>
    411a:	e9 a0 f7 ff ff       	jmp    38bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    411f:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    4123:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    4128:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    412d:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    4132:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    4136:	e8 35 cf ff ff       	call   1070 <operator new(unsigned long)@plt>
    413b:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    413f:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    4144:	49 89 c7             	mov    r15,rax
    4147:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    414c:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    4151:	e9 6a f0 ff ff       	jmp    31c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    4156:	48 83 c7 01          	add    rdi,0x1
    415a:	e9 8a f2 ff ff       	jmp    33e9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1419>
    415f:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    4163:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    4166:	4c 39 f1             	cmp    rcx,r14
    4169:	0f 85 9f f9 ff ff    	jne    3b0e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3e>
    416f:	e9 ab f9 ff ff       	jmp    3b1f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    4174:	48 83 c7 01          	add    rdi,0x1
    4178:	e9 ef e8 ff ff       	jmp    2a6c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    417d:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    4182:	41 b8 01 00 00 00    	mov    r8d,0x1
    4188:	b9 01 00 00 00       	mov    ecx,0x1
    418d:	48 8d 94 24 81 00 00 	lea    rdx,[rsp+0x81]
    4194:	00 
    4195:	e9 6e e2 ff ff       	jmp    2408 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x438>
    419a:	48 83 c7 01          	add    rdi,0x1
    419e:	e9 7e f6 ff ff       	jmp    3821 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    41a3:	48 83 c7 01          	add    rdi,0x1
    41a7:	e9 f3 f8 ff ff       	jmp    3a9f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    41ac:	48 83 c7 01          	add    rdi,0x1
    41b0:	e9 d7 f9 ff ff       	jmp    3b8c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    41b5:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    41ba:	e8 f1 ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    41bf:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    41c4:	e8 e7 ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    41c9:	48 89 df             	mov    rdi,rbx
    41cc:	e8 df ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    41d1:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    41d8:	00 
    41d9:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    41e0:	00 00 
    41e2:	74 67                	je     424b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x227b>
    41e4:	e8 a7 ce ff ff       	call   1090 <__stack_chk_fail@plt>
    41e9:	48 89 c5             	mov    rbp,rax
    41ec:	eb c7                	jmp    41b5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21e5>
    41ee:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    41f5:	00 
    41f6:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    41fd:	00 00 
    41ff:	75 e3                	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4201:	48 8d 3d fc 0d 00 00 	lea    rdi,[rip+0xdfc]        # 5004 <_IO_stdin_used+0x4>
    4208:	e8 33 ce ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    420d:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4214:	00 
    4215:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    421c:	00 00 
    421e:	75 c4                	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4220:	48 8d 3d dd 0d 00 00 	lea    rdi,[rip+0xddd]        # 5004 <_IO_stdin_used+0x4>
    4227:	e8 14 ce ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    422c:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4233:	00 
    4234:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    423b:	00 00 
    423d:	75 a5                	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    423f:	48 8d 3d be 0d 00 00 	lea    rdi,[rip+0xdbe]        # 5004 <_IO_stdin_used+0x4>
    4246:	e8 f5 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    424b:	48 89 ef             	mov    rdi,rbp
    424e:	e8 6d ce ff ff       	call   10c0 <_Unwind_Resume@plt>
    4253:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    425a:	00 
    425b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4262:	00 00 
    4264:	0f 85 7a ff ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    426a:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    426f:	48 8d 3d 8e 0d 00 00 	lea    rdi,[rip+0xd8e]        # 5004 <_IO_stdin_used+0x4>
    4276:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    427b:	e8 c0 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4280:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4287:	00 
    4288:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    428f:	00 00 
    4291:	0f 85 4d ff ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4297:	48 8d 3d 66 0d 00 00 	lea    rdi,[rip+0xd66]        # 5004 <_IO_stdin_used+0x4>
    429e:	e8 9d cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    42a3:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42aa:	00 
    42ab:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42b2:	00 00 
    42b4:	0f 85 2a ff ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    42ba:	48 8d 3d 43 0d 00 00 	lea    rdi,[rip+0xd43]        # 5004 <_IO_stdin_used+0x4>
    42c1:	e8 7a cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    42c6:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42cd:	00 
    42ce:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42d5:	00 00 
    42d7:	0f 85 07 ff ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    42dd:	48 8d 3d 20 0d 00 00 	lea    rdi,[rip+0xd20]        # 5004 <_IO_stdin_used+0x4>
    42e4:	e8 57 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    42e9:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42f0:	00 
    42f1:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42f8:	00 00 
    42fa:	0f 85 e4 fe ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4300:	48 8d 3d fd 0c 00 00 	lea    rdi,[rip+0xcfd]        # 5004 <_IO_stdin_used+0x4>
    4307:	e8 34 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    430c:	48 89 c5             	mov    rbp,rax
    430f:	eb 28                	jmp    4339 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2369>
    4311:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4318:	00 
    4319:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4320:	00 00 
    4322:	0f 85 bc fe ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4328:	48 8d 3d ea 0c 00 00 	lea    rdi,[rip+0xcea]        # 5019 <_IO_stdin_used+0x19>
    432f:	e8 0c cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4334:	48 89 c5             	mov    rbp,rax
    4337:	eb 0f                	jmp    4348 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2378>
    4339:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    433e:	e8 6d cd ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    4343:	e9 81 fe ff ff       	jmp    41c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>
    4348:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    434d:	e8 5e cd ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    4352:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    4357:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    435c:	e9 5e fe ff ff       	jmp    41bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    4361:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4368:	00 
    4369:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4370:	00 00 
    4372:	0f 85 6c fe ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4378:	48 8d 3d 85 0c 00 00 	lea    rdi,[rip+0xc85]        # 5004 <_IO_stdin_used+0x4>
    437f:	e8 bc cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4384:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    438b:	00 
    438c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4393:	00 00 
    4395:	0f 85 49 fe ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    439b:	48 8d 3d 77 0c 00 00 	lea    rdi,[rip+0xc77]        # 5019 <_IO_stdin_used+0x19>
    43a2:	e8 99 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    43a7:	48 89 c5             	mov    rbp,rax
    43aa:	eb 08                	jmp    43b4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23e4>
    43ac:	48 89 c5             	mov    rbp,rax
    43af:	e9 0b fe ff ff       	jmp    41bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    43b4:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    43b9:	e8 f2 cc ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    43be:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    43c3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    43c8:	e9 f2 fd ff ff       	jmp    41bf <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    43cd:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    43d4:	00 
    43d5:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    43dc:	00 00 
    43de:	0f 85 00 fe ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    43e4:	48 8d 3d 2e 0c 00 00 	lea    rdi,[rip+0xc2e]        # 5019 <_IO_stdin_used+0x19>
    43eb:	e8 50 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    43f0:	eb b5                	jmp    43a7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23d7>
    43f2:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    43f9:	00 
    43fa:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4401:	00 00 
    4403:	0f 85 db fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4409:	48 8d 3d f4 0b 00 00 	lea    rdi,[rip+0xbf4]        # 5004 <_IO_stdin_used+0x4>
    4410:	e8 2b cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4415:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    441c:	00 
    441d:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4424:	00 00 
    4426:	0f 85 b8 fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    442c:	48 8d 3d e6 0b 00 00 	lea    rdi,[rip+0xbe6]        # 5019 <_IO_stdin_used+0x19>
    4433:	e8 08 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4438:	e9 ac fd ff ff       	jmp    41e9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2219>
    443d:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4444:	00 
    4445:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    444c:	00 00 
    444e:	0f 85 90 fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4454:	48 8d 3d be 0b 00 00 	lea    rdi,[rip+0xbbe]        # 5019 <_IO_stdin_used+0x19>
    445b:	e8 e0 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4460:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4467:	00 
    4468:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    446f:	00 00 
    4471:	0f 85 6d fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4477:	48 8d 3d 86 0b 00 00 	lea    rdi,[rip+0xb86]        # 5004 <_IO_stdin_used+0x4>
    447e:	e8 bd cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4483:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    448a:	00 
    448b:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4492:	00 00 
    4494:	0f 85 4a fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    449a:	48 8d 3d 78 0b 00 00 	lea    rdi,[rip+0xb78]        # 5019 <_IO_stdin_used+0x19>
    44a1:	e8 9a cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44a6:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44ad:	00 
    44ae:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    44b5:	00 00 
    44b7:	0f 85 27 fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    44bd:	48 8d 3d 40 0b 00 00 	lea    rdi,[rip+0xb40]        # 5004 <_IO_stdin_used+0x4>
    44c4:	e8 77 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44c9:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44d0:	00 
    44d1:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    44d8:	00 00 
    44da:	0f 85 04 fd ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    44e0:	48 8d 3d 32 0b 00 00 	lea    rdi,[rip+0xb32]        # 5019 <_IO_stdin_used+0x19>
    44e7:	e8 54 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44ec:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44f3:	00 
    44f4:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    44fb:	00 00 
    44fd:	0f 85 e1 fc ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4503:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    4508:	48 8d 3d f5 0a 00 00 	lea    rdi,[rip+0xaf5]        # 5004 <_IO_stdin_used+0x4>
    450f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    4514:	e8 27 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4519:	e9 8e fe ff ff       	jmp    43ac <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23dc>
    451e:	e9 e9 fd ff ff       	jmp    430c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x233c>
    4523:	48 89 c5             	mov    rbp,rax
    4526:	e9 9e fc ff ff       	jmp    41c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>
    452b:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4532:	00 
    4533:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    453a:	00 00 
    453c:	0f 85 a2 fc ff ff    	jne    41e4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4542:	48 8d 3d bb 0a 00 00 	lea    rdi,[rip+0xabb]        # 5004 <_IO_stdin_used+0x4>
    4549:	e8 f2 ca ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    454e:	48 89 c5             	mov    rbp,rax
    4551:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    4556:	e8 55 cb ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    455b:	e9 69 fc ff ff       	jmp    41c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>

Disassembly of section .fini:

0000000000004560 <_fini>:
    4560:	f3 0f 1e fa          	endbr64
    4564:	48 83 ec 08          	sub    rsp,0x8
    4568:	48 83 c4 08          	add    rsp,0x8
    456c:	c3                   	ret
