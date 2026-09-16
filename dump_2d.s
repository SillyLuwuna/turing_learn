
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

00000000000010d0 <main.cold>:
    10d0:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    10d5:	e8 d6 ff ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    10da:	48 89 e7             	mov    rdi,rsp
    10dd:	e8 ce ff ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    10e2:	48 8b 84 24 68 50 00 	mov    rax,QWORD PTR [rsp+0x5068]
    10e9:	00 
    10ea:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    10f1:	00 00 
    10f3:	75 08                	jne    10fd <main.cold+0x2d>
    10f5:	48 89 df             	mov    rdi,rbx
    10f8:	e8 c3 ff ff ff       	call   10c0 <_Unwind_Resume@plt>
    10fd:	e8 8e ff ff ff       	call   1090 <__stack_chk_fail@plt>
    1102:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1109:	00 00 00 
    110c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001110 <main>:
    1110:	53                   	push   rbx
    1111:	48 81 ec 70 50 00 00 	sub    rsp,0x5070
    1118:	64 48 8b 3c 25 28 00 	mov    rdi,QWORD PTR fs:0x28
    111f:	00 00 
    1121:	48 89 bc 24 68 50 00 	mov    QWORD PTR [rsp+0x5068],rdi
    1128:	00 
    1129:	bf b4 1b 00 00       	mov    edi,0x1bb4
    112e:	e8 3d ff ff ff       	call   1070 <operator new(unsigned long)@plt>
    1133:	ba b3 1b 00 00       	mov    edx,0x1bb3
    1138:	48 8d 35 01 3f 00 00 	lea    rsi,[rip+0x3f01]        # 5040 <_IO_stdin_used+0x40>
    113f:	48 c7 44 24 10 b3 1b 	mov    QWORD PTR [rsp+0x10],0x1bb3
    1146:	00 00 
    1148:	48 89 c3             	mov    rbx,rax
    114b:	48 89 c7             	mov    rdi,rax
    114e:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    1152:	e8 09 ff ff ff       	call   1060 <memcpy@plt>
    1157:	c6 83 b3 1b 00 00 00 	mov    BYTE PTR [rbx+0x1bb3],0x0
    115e:	31 f6                	xor    esi,esi
    1160:	ba 10 27 00 00       	mov    edx,0x2710
    1165:	48 8d bc 24 08 02 00 	lea    rdi,[rsp+0x208]
    116c:	00 
    116d:	48 c7 44 24 08 b3 1b 	mov    QWORD PTR [rsp+0x8],0x1bb3
    1174:	00 00 
    1176:	e8 d5 fe ff ff       	call   1050 <memset@plt>
    117b:	be 10 00 00 00       	mov    esi,0x10
    1180:	b9 11 00 00 00       	mov    ecx,0x11
    1185:	c7 84 24 18 29 00 00 	mov    DWORD PTR [rsp+0x2918],0x100011
    118c:	11 00 10 00 
    1190:	b8 10 00 00 00       	mov    eax,0x10
    1195:	41 b8 01 00 00 00    	mov    r8d,0x1
    119b:	eb 52                	jmp    11ef <main+0xdf>
    119d:	0f 1f 00             	nop    DWORD PTR [rax]
    11a0:	66 39 c1             	cmp    cx,ax
    11a3:	0f 82 8f 00 00 00    	jb     1238 <main+0x128>
    11a9:	66 39 f0             	cmp    ax,si
    11ac:	72 72                	jb     1220 <main+0x110>
    11ae:	44 89 84 24 18 29 00 	mov    DWORD PTR [rsp+0x2918],r8d
    11b5:	00 
    11b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    11bd:	00 00 00 
    11c0:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
    11c7:	00 
    11c8:	48 83 c0 01          	add    rax,0x1
    11cc:	48 c1 e9 03          	shr    rcx,0x3
    11d0:	88 94 0c 08 02 00 00 	mov    BYTE PTR [rsp+rcx*1+0x208],dl
    11d7:	0f b7 8c 24 18 29 00 	movzx  ecx,WORD PTR [rsp+0x2918]
    11de:	00 
    11df:	0f b7 b4 24 1a 29 00 	movzx  esi,WORD PTR [rsp+0x291a]
    11e6:	00 
    11e7:	48 3d c3 1b 00 00    	cmp    rax,0x1bc3
    11ed:	74 61                	je     1250 <main+0x140>
    11ef:	0f b6 54 03 f0       	movzx  edx,BYTE PTR [rbx+rax*1-0x10]
    11f4:	89 c7                	mov    edi,eax
    11f6:	80 ea 2f             	sub    dl,0x2f
    11f9:	74 a5                	je     11a0 <main+0x90>
    11fb:	66 39 c8             	cmp    ax,cx
    11fe:	73 08                	jae    1208 <main+0xf8>
    1200:	66 89 84 24 18 29 00 	mov    WORD PTR [rsp+0x2918],ax
    1207:	00 
    1208:	66 39 fe             	cmp    si,di
    120b:	73 b3                	jae    11c0 <main+0xb0>
    120d:	66 89 bc 24 1a 29 00 	mov    WORD PTR [rsp+0x291a],di
    1214:	00 
    1215:	eb a9                	jmp    11c0 <main+0xb0>
    1217:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    121e:	00 00 
    1220:	66 39 c1             	cmp    cx,ax
    1223:	75 9b                	jne    11c0 <main+0xb0>
    1225:	83 c1 01             	add    ecx,0x1
    1228:	66 89 8c 24 18 29 00 	mov    WORD PTR [rsp+0x2918],cx
    122f:	00 
    1230:	eb 8e                	jmp    11c0 <main+0xb0>
    1232:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1238:	66 39 f0             	cmp    ax,si
    123b:	75 83                	jne    11c0 <main+0xb0>
    123d:	83 ee 01             	sub    esi,0x1
    1240:	66 89 b4 24 1a 29 00 	mov    WORD PTR [rsp+0x291a],si
    1247:	00 
    1248:	e9 73 ff ff ff       	jmp    11c0 <main+0xb0>
    124d:	0f 1f 00             	nop    DWORD PTR [rax]
    1250:	f3 0f 7e 05 d8 7a 00 	movq   xmm0,QWORD PTR [rip+0x7ad8]        # 8d30 <vtable for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x28>
    1257:	00 
    1258:	48 8d 05 69 7a 00 00 	lea    rax,[rip+0x7a69]        # 8cc8 <vtable for turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x10>
    125f:	66 89 b4 24 42 50 00 	mov    WORD PTR [rsp+0x5042],si
    1266:	00 
    1267:	48 8d bc 24 30 29 00 	lea    rdi,[rsp+0x2930]
    126e:	00 
    126f:	66 48 0f 6e c8       	movq   xmm1,rax
    1274:	ba 10 27 00 00       	mov    edx,0x2710
    1279:	48 8d b4 24 08 02 00 	lea    rsi,[rsp+0x208]
    1280:	00 
    1281:	66 89 8c 24 40 50 00 	mov    WORD PTR [rsp+0x5040],cx
    1288:	00 
    1289:	66 0f 6c c1          	punpcklqdq xmm0,xmm1
    128d:	0f 29 84 24 20 29 00 	movaps XMMWORD PTR [rsp+0x2920],xmm0
    1294:	00 
    1295:	e8 c6 fd ff ff       	call   1060 <memcpy@plt>
    129a:	ba 00 01 00 00       	mov    edx,0x100
    129f:	48 8d 84 24 28 29 00 	lea    rax,[rsp+0x2928]
    12a6:	00 
    12a7:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
    12ac:	48 89 84 24 48 50 00 	mov    QWORD PTR [rsp+0x5048],rax
    12b3:	00 
    12b4:	b8 10 00 00 00       	mov    eax,0x10
    12b9:	66 89 84 24 50 50 00 	mov    WORD PTR [rsp+0x5050],ax
    12c0:	00 
    12c1:	66 89 94 24 58 50 00 	mov    WORD PTR [rsp+0x5058],dx
    12c8:	00 
    12c9:	c6 84 24 5a 50 00 00 	mov    BYTE PTR [rsp+0x505a],0x0
    12d0:	00 
    12d1:	e8 aa 0a 00 00       	call   1d80 <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()>
    12d6:	ba a7 40 79 01       	mov    edx,0x17940a7
    12db:	b8 01 00 00 00       	mov    eax,0x1
    12e0:	48 83 ea 01          	sub    rdx,0x1
    12e4:	0f 84 f6 00 00 00    	je     13e0 <main+0x2d0>
    12ea:	84 c0                	test   al,al
    12ec:	0f 84 ee 00 00 00    	je     13e0 <main+0x2d0>
    12f2:	48 8b bc 24 48 50 00 	mov    rdi,QWORD PTR [rsp+0x5048]
    12f9:	00 
    12fa:	44 0f b7 8c 24 50 50 	movzx  r9d,WORD PTR [rsp+0x5050]
    1301:	00 00 
    1303:	42 0f b6 74 0f 08    	movzx  esi,BYTE PTR [rdi+r9*1+0x8]
    1309:	0f b7 9f 1a 27 00 00 	movzx  ebx,WORD PTR [rdi+0x271a]
    1310:	4d 89 c8             	mov    r8,r9
    1313:	4c 8d 14 76          	lea    r10,[rsi+rsi*2]
    1317:	48 89 f1             	mov    rcx,rsi
    131a:	0f b6 f0             	movzx  esi,al
    131d:	48 8d 34 f6          	lea    rsi,[rsi+rsi*8]
    1321:	48 c1 e6 03          	shl    rsi,0x3
    1325:	4a 8d 74 d6 08       	lea    rsi,[rsi+r10*8+0x8]
    132a:	4c 8d 5c 34 40       	lea    r11,[rsp+rsi*1+0x40]
    132f:	48 8d 34 c0          	lea    rsi,[rax+rax*8]
    1333:	48 c1 e6 03          	shl    rsi,0x3
    1337:	4a 8d 34 d6          	lea    rsi,[rsi+r10*8]
    133b:	44 0f b7 97 18 27 00 	movzx  r10d,WORD PTR [rdi+0x2718]
    1342:	00 
    1343:	0f b6 74 34 58       	movzx  esi,BYTE PTR [rsp+rsi*1+0x58]
    1348:	40 84 f6             	test   sil,sil
    134b:	75 2b                	jne    1378 <main+0x268>
    134d:	66 45 39 ca          	cmp    r10w,r9w
    1351:	0f 82 3e 01 00 00    	jb     1495 <main+0x385>
    1357:	66 41 39 d9          	cmp    r9w,bx
    135b:	0f 83 25 01 00 00    	jae    1486 <main+0x376>
    1361:	66 45 39 ca          	cmp    r10w,r9w
    1365:	75 2d                	jne    1394 <main+0x284>
    1367:	41 83 c2 01          	add    r10d,0x1
    136b:	66 44 89 97 18 27 00 	mov    WORD PTR [rdi+0x2718],r10w
    1372:	00 
    1373:	eb 1f                	jmp    1394 <main+0x284>
    1375:	0f 1f 00             	nop    DWORD PTR [rax]
    1378:	66 45 39 d1          	cmp    r9w,r10w
    137c:	73 08                	jae    1386 <main+0x276>
    137e:	66 44 89 8f 18 27 00 	mov    WORD PTR [rdi+0x2718],r9w
    1385:	00 
    1386:	66 44 39 c3          	cmp    bx,r8w
    138a:	73 08                	jae    1394 <main+0x284>
    138c:	66 44 89 87 1a 27 00 	mov    WORD PTR [rdi+0x271a],r8w
    1393:	00 
    1394:	42 88 74 0f 08       	mov    BYTE PTR [rdi+r9*1+0x8],sil
    1399:	41 0f b6 73 12       	movzx  esi,BYTE PTR [r11+0x12]
    139e:	83 e6 03             	and    esi,0x3
    13a1:	0f 84 d1 00 00 00    	je     1478 <main+0x368>
    13a7:	40 80 fe 02          	cmp    sil,0x2
    13ab:	75 09                	jne    13b6 <main+0x2a6>
    13ad:	66 83 84 24 50 50 00 	add    WORD PTR [rsp+0x5050],0x1
    13b4:	00 01 
    13b6:	48 8d 04 c0          	lea    rax,[rax+rax*8]
    13ba:	48 8d 0c 49          	lea    rcx,[rcx+rcx*2]
    13be:	48 c1 e0 03          	shl    rax,0x3
    13c2:	48 8d 04 c8          	lea    rax,[rax+rcx*8]
    13c6:	0f b6 44 04 59       	movzx  eax,BYTE PTR [rsp+rax*1+0x59]
    13cb:	88 84 24 59 50 00 00 	mov    BYTE PTR [rsp+0x5059],al
    13d2:	80 bc 24 5a 50 00 00 	cmp    BYTE PTR [rsp+0x505a],0x0
    13d9:	00 
    13da:	0f 84 00 ff ff ff    	je     12e0 <main+0x1d0>
    13e0:	48 8d b4 24 20 29 00 	lea    rsi,[rsp+0x2920]
    13e7:	00 
    13e8:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    13ed:	e8 2e 0c 00 00       	call   2020 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const>
    13f2:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    13f7:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
    13fc:	48 8d 3d 7d 7c 00 00 	lea    rdi,[rip+0x7c7d]        # 9080 <std::cout@GLIBCXX_3.4>
    1403:	e8 98 fc ff ff       	call   10a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
    1408:	ba 01 00 00 00       	mov    edx,0x1
    140d:	48 8d 35 25 3c 00 00 	lea    rsi,[rip+0x3c25]        # 5039 <_IO_stdin_used+0x39>
    1414:	48 89 c7             	mov    rdi,rax
    1417:	e8 84 fc ff ff       	call   10a0 <std::basic_ostream<char, std::char_traits<char> >& std::__ostream_insert<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*, long)@plt>
    141c:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    1421:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
    1426:	48 39 c7             	cmp    rdi,rax
    1429:	74 0e                	je     1439 <main+0x329>
    142b:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    1430:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1434:	e8 47 fc ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    1439:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    143d:	48 8d 44 24 10       	lea    rax,[rsp+0x10]
    1442:	48 39 c7             	cmp    rdi,rax
    1445:	74 0e                	je     1455 <main+0x345>
    1447:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    144c:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1450:	e8 2b fc ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    1455:	48 8b 84 24 68 50 00 	mov    rax,QWORD PTR [rsp+0x5068]
    145c:	00 
    145d:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1464:	00 00 
    1466:	75 48                	jne    14b0 <main+0x3a0>
    1468:	48 81 c4 70 50 00 00 	add    rsp,0x5070
    146f:	31 c0                	xor    eax,eax
    1471:	5b                   	pop    rbx
    1472:	c3                   	ret
    1473:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1478:	66 83 ac 24 50 50 00 	sub    WORD PTR [rsp+0x5050],0x1
    147f:	00 01 
    1481:	e9 30 ff ff ff       	jmp    13b6 <main+0x2a6>
    1486:	c7 87 18 27 00 00 01 	mov    DWORD PTR [rdi+0x2718],0x1
    148d:	00 00 00 
    1490:	e9 ff fe ff ff       	jmp    1394 <main+0x284>
    1495:	66 41 39 d9          	cmp    r9w,bx
    1499:	0f 85 f5 fe ff ff    	jne    1394 <main+0x284>
    149f:	41 83 e8 01          	sub    r8d,0x1
    14a3:	66 44 89 87 1a 27 00 	mov    WORD PTR [rdi+0x271a],r8w
    14aa:	00 
    14ab:	e9 e4 fe ff ff       	jmp    1394 <main+0x284>
    14b0:	e8 db fb ff ff       	call   1090 <__stack_chk_fail@plt>
    14b5:	48 89 c3             	mov    rbx,rax
    14b8:	e9 13 fc ff ff       	jmp    10d0 <main.cold>
    14bd:	48 89 c3             	mov    rbx,rax
    14c0:	e9 15 fc ff ff       	jmp    10da <main.cold+0xa>
    14c5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    14cc:	00 00 00 
    14cf:	90                   	nop

00000000000014d0 <_start>:
    14d0:	f3 0f 1e fa          	endbr64
    14d4:	31 ed                	xor    ebp,ebp
    14d6:	49 89 d1             	mov    r9,rdx
    14d9:	5e                   	pop    rsi
    14da:	48 89 e2             	mov    rdx,rsp
    14dd:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    14e1:	50                   	push   rax
    14e2:	54                   	push   rsp
    14e3:	45 31 c0             	xor    r8d,r8d
    14e6:	31 c9                	xor    ecx,ecx
    14e8:	48 8d 3d 21 fc ff ff 	lea    rdi,[rip+0xfffffffffffffc21]        # 1110 <main>
    14ef:	ff 15 d3 7a 00 00    	call   QWORD PTR [rip+0x7ad3]        # 8fc8 <__libc_start_main@GLIBC_2.34>
    14f5:	f4                   	hlt
    14f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    14fd:	00 00 00 

0000000000001500 <deregister_tm_clones>:
    1500:	48 8d 3d 61 7b 00 00 	lea    rdi,[rip+0x7b61]        # 9068 <__TMC_END__>
    1507:	48 8d 05 5a 7b 00 00 	lea    rax,[rip+0x7b5a]        # 9068 <__TMC_END__>
    150e:	48 39 f8             	cmp    rax,rdi
    1511:	74 15                	je     1528 <deregister_tm_clones+0x28>
    1513:	48 8b 05 b6 7a 00 00 	mov    rax,QWORD PTR [rip+0x7ab6]        # 8fd0 <_ITM_deregisterTMCloneTable>
    151a:	48 85 c0             	test   rax,rax
    151d:	74 09                	je     1528 <deregister_tm_clones+0x28>
    151f:	ff e0                	jmp    rax
    1521:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1528:	c3                   	ret
    1529:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001530 <register_tm_clones>:
    1530:	48 8d 3d 31 7b 00 00 	lea    rdi,[rip+0x7b31]        # 9068 <__TMC_END__>
    1537:	48 8d 35 2a 7b 00 00 	lea    rsi,[rip+0x7b2a]        # 9068 <__TMC_END__>
    153e:	48 29 fe             	sub    rsi,rdi
    1541:	48 89 f0             	mov    rax,rsi
    1544:	48 c1 ee 3f          	shr    rsi,0x3f
    1548:	48 c1 f8 03          	sar    rax,0x3
    154c:	48 01 c6             	add    rsi,rax
    154f:	48 d1 fe             	sar    rsi,1
    1552:	74 14                	je     1568 <register_tm_clones+0x38>
    1554:	48 8b 05 85 7a 00 00 	mov    rax,QWORD PTR [rip+0x7a85]        # 8fe0 <_ITM_registerTMCloneTable>
    155b:	48 85 c0             	test   rax,rax
    155e:	74 08                	je     1568 <register_tm_clones+0x38>
    1560:	ff e0                	jmp    rax
    1562:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1568:	c3                   	ret
    1569:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001570 <__do_global_dtors_aux>:
    1570:	f3 0f 1e fa          	endbr64
    1574:	80 3d 15 7c 00 00 00 	cmp    BYTE PTR [rip+0x7c15],0x0        # 9190 <completed.0>
    157b:	75 33                	jne    15b0 <__do_global_dtors_aux+0x40>
    157d:	55                   	push   rbp
    157e:	48 83 3d 3a 7a 00 00 	cmp    QWORD PTR [rip+0x7a3a],0x0        # 8fc0 <__cxa_finalize@GLIBC_2.2.5>
    1585:	00 
    1586:	48 89 e5             	mov    rbp,rsp
    1589:	74 0d                	je     1598 <__do_global_dtors_aux+0x28>
    158b:	48 8b 3d c6 7a 00 00 	mov    rdi,QWORD PTR [rip+0x7ac6]        # 9058 <__dso_handle>
    1592:	ff 15 28 7a 00 00    	call   QWORD PTR [rip+0x7a28]        # 8fc0 <__cxa_finalize@GLIBC_2.2.5>
    1598:	e8 63 ff ff ff       	call   1500 <deregister_tm_clones>
    159d:	c6 05 ec 7b 00 00 01 	mov    BYTE PTR [rip+0x7bec],0x1        # 9190 <completed.0>
    15a4:	5d                   	pop    rbp
    15a5:	c3                   	ret
    15a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15ad:	00 00 00 
    15b0:	c3                   	ret
    15b1:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    15b5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    15bc:	00 00 00 00 

00000000000015c0 <frame_dummy>:
    15c0:	f3 0f 1e fa          	endbr64
    15c4:	e9 67 ff ff ff       	jmp    1530 <register_tm_clones>
    15c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000015d0 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Tape()>:
    15d0:	c3                   	ret
    15d1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15d8:	00 00 00 
    15db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Memory()>:
    15e0:	c3                   	ret
    15e1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15e8:	00 00 00 
    15eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000015f0 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Program()>:
    15f0:	c3                   	ret
    15f1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    15f8:	00 00 00 
    15fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001600 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Utm()>:
    1600:	c3                   	ret
    1601:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1608:	00 00 00 
    160b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001610 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1610:	b8 b8 01 00 00       	mov    eax,0x1b8
    1615:	c3                   	ret
    1616:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    161d:	00 00 00 

0000000000001620 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1620:	b8 30 4e 00 00       	mov    eax,0x4e30
    1625:	c3                   	ret
    1626:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    162d:	00 00 00 

0000000000001630 <turing_learning::utm::Tape<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Tape()>:
    1630:	be 20 27 00 00       	mov    esi,0x2720
    1635:	e9 46 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    163a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001640 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Memory()>:
    1640:	be 40 27 00 00       	mov    esi,0x2740
    1645:	e9 36 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    164a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001650 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Program()>:
    1650:	be b8 01 00 00       	mov    esi,0x1b8
    1655:	e9 26 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    165a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001660 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::~Utm()>:
    1660:	be 28 00 00 00       	mov    esi,0x28
    1665:	e9 16 fa ff ff       	jmp    1080 <operator delete(void*, unsigned long)@plt>
    166a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001670 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1670:	b8 80 75 00 00       	mov    eax,0x7580
    1675:	c3                   	ret
    1676:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    167d:	00 00 00 

0000000000001680 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>:
    1680:	48 83 ec 18          	sub    rsp,0x18
    1684:	48 89 fa             	mov    rdx,rdi
    1687:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
    168b:	48 8d 35 7e ff ff ff 	lea    rsi,[rip+0xffffffffffffff7e]        # 1610 <turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>
    1692:	b9 e0 01 00 00       	mov    ecx,0x1e0
    1697:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    169a:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
    169e:	48 39 f0             	cmp    rax,rsi
    16a1:	75 2d                	jne    16d0 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x50>
    16a3:	48 8b 7a 10          	mov    rdi,QWORD PTR [rdx+0x10]
    16a7:	48 8d 35 c2 ff ff ff 	lea    rsi,[rip+0xffffffffffffffc2]        # 1670 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const>
    16ae:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    16b1:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
    16b5:	b8 80 75 00 00       	mov    eax,0x7580
    16ba:	48 39 f2             	cmp    rdx,rsi
    16bd:	75 29                	jne    16e8 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x68>
    16bf:	48 01 c8             	add    rax,rcx
    16c2:	48 83 c4 18          	add    rsp,0x18
    16c6:	c3                   	ret
    16c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    16ce:	00 00 
    16d0:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    16d5:	ff d0                	call   rax
    16d7:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    16dc:	48 8d 48 28          	lea    rcx,[rax+0x28]
    16e0:	eb c1                	jmp    16a3 <turing_learning::utm::Utm<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::num_bytes() const+0x23>
    16e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    16e8:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    16ed:	ff d2                	call   rdx
    16ef:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    16f4:	48 83 c4 18          	add    rsp,0x18
    16f8:	48 01 c8             	add    rax,rcx
    16fb:	c3                   	ret
    16fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001700 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>:
    1700:	41 56                	push   r14
    1702:	41 54                	push   r12
    1704:	49 89 f4             	mov    r12,rsi
    1707:	55                   	push   rbp
    1708:	53                   	push   rbx
    1709:	48 89 fb             	mov    rbx,rdi
    170c:	48 89 f7             	mov    rdi,rsi
    170f:	48 83 ec 28          	sub    rsp,0x28
    1713:	e8 18 f9 ff ff       	call   1030 <strlen@plt>
    1718:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    171c:	49 89 c0             	mov    r8,rax
    171f:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    1726:	ff ff 7f 
    1729:	48 89 c1             	mov    rcx,rax
    172c:	48 29 d1             	sub    rcx,rdx
    172f:	4c 39 c1             	cmp    rcx,r8
    1732:	0f 82 32 03 00 00    	jb     1a6a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x36a>
    1738:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    173b:	4c 8d 4b 10          	lea    r9,[rbx+0x10]
    173f:	49 8d 2c 10          	lea    rbp,[r8+rdx*1]
    1743:	4c 39 c9             	cmp    rcx,r9
    1746:	0f 84 94 01 00 00    	je     18e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x1e0>
    174c:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
    1750:	48 39 ee             	cmp    rsi,rbp
    1753:	72 3b                	jb     1790 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x90>
    1755:	4d 85 c0             	test   r8,r8
    1758:	74 1c                	je     1776 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    175a:	48 8d 3c 11          	lea    rdi,[rcx+rdx*1]
    175e:	49 83 f8 01          	cmp    r8,0x1
    1762:	0f 84 48 02 00 00    	je     19b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2b0>
    1768:	4c 89 c2             	mov    rdx,r8
    176b:	4c 89 e6             	mov    rsi,r12
    176e:	e8 ed f8 ff ff       	call   1060 <memcpy@plt>
    1773:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    1776:	c6 04 29 00          	mov    BYTE PTR [rcx+rbp*1],0x0
    177a:	48 89 6b 08          	mov    QWORD PTR [rbx+0x8],rbp
    177e:	48 83 c4 28          	add    rsp,0x28
    1782:	5b                   	pop    rbx
    1783:	5d                   	pop    rbp
    1784:	41 5c                	pop    r12
    1786:	41 5e                	pop    r14
    1788:	c3                   	ret
    1789:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1790:	48 39 e8             	cmp    rax,rbp
    1793:	0f 82 c5 02 00 00    	jb     1a5e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x35e>
    1799:	48 8d 3c 36          	lea    rdi,[rsi+rsi*1]
    179d:	49 89 fe             	mov    r14,rdi
    17a0:	48 39 fd             	cmp    rbp,rdi
    17a3:	0f 83 c7 00 00 00    	jae    1870 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x170>
    17a9:	48 8d 7f 01          	lea    rdi,[rdi+0x1]
    17ad:	4c 39 f0             	cmp    rax,r14
    17b0:	73 0d                	jae    17bf <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xbf>
    17b2:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    17b9:	ff ff 7f 
    17bc:	49 89 c6             	mov    r14,rax
    17bf:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    17c4:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    17c9:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    17ce:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    17d2:	e8 99 f8 ff ff       	call   1070 <operator new(unsigned long)@plt>
    17d7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    17db:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    17e0:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    17e5:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    17ea:	49 89 c2             	mov    r10,rax
    17ed:	48 85 d2             	test   rdx,rdx
    17f0:	0f 84 ca 01 00 00    	je     19c0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2c0>
    17f6:	48 83 fa 01          	cmp    rdx,0x1
    17fa:	0f 84 10 02 00 00    	je     1a10 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x310>
    1800:	48 89 ce             	mov    rsi,rcx
    1803:	4c 89 d7             	mov    rdi,r10
    1806:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    180b:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    1810:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1815:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    1819:	e8 42 f8 ff ff       	call   1060 <memcpy@plt>
    181e:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1823:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    1827:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    182c:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    1831:	49 89 c2             	mov    r10,rax
    1834:	4d 85 c0             	test   r8,r8
    1837:	0f 85 3c 01 00 00    	jne    1979 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x279>
    183d:	4c 39 c9             	cmp    rcx,r9
    1840:	0f 84 fa 01 00 00    	je     1a40 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x340>
    1846:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    184a:	48 89 cf             	mov    rdi,rcx
    184d:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    1851:	48 8d 70 01          	lea    rsi,[rax+0x1]
    1855:	e8 26 f8 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    185a:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    185e:	4c 89 d1             	mov    rcx,r10
    1861:	4c 89 13             	mov    QWORD PTR [rbx],r10
    1864:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    1868:	e9 09 ff ff ff       	jmp    1776 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    186d:	0f 1f 00             	nop    DWORD PTR [rax]
    1870:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    1874:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1879:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    187e:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    1883:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    1887:	e8 e4 f7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    188c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    1890:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    1895:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    189a:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    189f:	49 89 c2             	mov    r10,rax
    18a2:	48 85 d2             	test   rdx,rdx
    18a5:	0f 85 45 01 00 00    	jne    19f0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2f0>
    18ab:	4c 89 d7             	mov    rdi,r10
    18ae:	4c 89 c2             	mov    rdx,r8
    18b1:	4c 89 e6             	mov    rsi,r12
    18b4:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    18b8:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    18bd:	e8 9e f7 ff ff       	call   1060 <memcpy@plt>
    18c2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    18c6:	49 89 c2             	mov    r10,rax
    18c9:	48 3b 4c 24 08       	cmp    rcx,QWORD PTR [rsp+0x8]
    18ce:	0f 84 74 01 00 00    	je     1a48 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x348>
    18d4:	49 89 ee             	mov    r14,rbp
    18d7:	e9 6a ff ff ff       	jmp    1846 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x146>
    18dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    18e0:	48 83 fd 0f          	cmp    rbp,0xf
    18e4:	0f 86 6b fe ff ff    	jbe    1755 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x55>
    18ea:	48 39 e8             	cmp    rax,rbp
    18ed:	0f 82 6b 01 00 00    	jb     1a5e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x35e>
    18f3:	48 83 fd 1d          	cmp    rbp,0x1d
    18f7:	0f 86 e3 00 00 00    	jbe    19e0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x2e0>
    18fd:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    1901:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1906:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    190b:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    1910:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    1914:	e8 57 f7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    1919:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    191d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    1922:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    1927:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    192c:	49 89 c2             	mov    r10,rax
    192f:	48 85 d2             	test   rdx,rdx
    1932:	0f 84 73 ff ff ff    	je     18ab <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x1ab>
    1938:	48 83 fa 01          	cmp    rdx,0x1
    193c:	0f 84 11 01 00 00    	je     1a53 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x353>
    1942:	48 89 ce             	mov    rsi,rcx
    1945:	48 89 c7             	mov    rdi,rax
    1948:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    194d:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    1952:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    1957:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    195b:	e8 00 f7 ff ff       	call   1060 <memcpy@plt>
    1960:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1965:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    196a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    196f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    1973:	49 89 c2             	mov    r10,rax
    1976:	49 89 ee             	mov    r14,rbp
    1979:	49 8d 3c 12          	lea    rdi,[r10+rdx*1]
    197d:	49 83 f8 01          	cmp    r8,0x1
    1981:	74 7d                	je     1a00 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x300>
    1983:	4c 89 c2             	mov    rdx,r8
    1986:	4c 89 e6             	mov    rsi,r12
    1989:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    198e:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    1993:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    1997:	e8 c4 f6 ff ff       	call   1060 <memcpy@plt>
    199c:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    19a1:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    19a6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    19aa:	e9 8e fe ff ff       	jmp    183d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    19af:	90                   	nop
    19b0:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    19b5:	88 07                	mov    BYTE PTR [rdi],al
    19b7:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    19ba:	e9 b7 fd ff ff       	jmp    1776 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x76>
    19bf:	90                   	nop
    19c0:	48 89 c7             	mov    rdi,rax
    19c3:	49 83 f8 01          	cmp    r8,0x1
    19c7:	75 ba                	jne    1983 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x283>
    19c9:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    19ce:	41 88 02             	mov    BYTE PTR [r10],al
    19d1:	e9 67 fe ff ff       	jmp    183d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    19d6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    19dd:	00 00 00 
    19e0:	41 be 1e 00 00 00    	mov    r14d,0x1e
    19e6:	bf 1f 00 00 00       	mov    edi,0x1f
    19eb:	e9 cf fd ff ff       	jmp    17bf <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xbf>
    19f0:	49 89 ee             	mov    r14,rbp
    19f3:	e9 fe fd ff ff       	jmp    17f6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0xf6>
    19f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    19ff:	00 
    1a00:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    1a05:	88 07                	mov    BYTE PTR [rdi],al
    1a07:	e9 31 fe ff ff       	jmp    183d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    1a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    1a10:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    1a13:	41 88 02             	mov    BYTE PTR [r10],al
    1a16:	4d 85 c0             	test   r8,r8
    1a19:	0f 84 1e fe ff ff    	je     183d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    1a1f:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    1a23:	49 83 f8 01          	cmp    r8,0x1
    1a27:	0f 85 56 ff ff ff    	jne    1983 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x283>
    1a2d:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    1a32:	41 88 42 01          	mov    BYTE PTR [r10+0x1],al
    1a36:	e9 02 fe ff ff       	jmp    183d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x13d>
    1a3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1a40:	4c 89 d1             	mov    rcx,r10
    1a43:	e9 19 fe ff ff       	jmp    1861 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x161>
    1a48:	4c 89 d1             	mov    rcx,r10
    1a4b:	49 89 ee             	mov    r14,rbp
    1a4e:	e9 0e fe ff ff       	jmp    1861 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x161>
    1a53:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    1a56:	41 88 02             	mov    BYTE PTR [r10],al
    1a59:	e9 18 ff ff ff       	jmp    1976 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]+0x276>
    1a5e:	48 8d 3d b4 35 00 00 	lea    rdi,[rip+0x35b4]        # 5019 <_IO_stdin_used+0x19>
    1a65:	e8 d6 f5 ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    1a6a:	48 8d 3d 93 35 00 00 	lea    rdi,[rip+0x3593]        # 5004 <_IO_stdin_used+0x4>
    1a71:	e8 ca f5 ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    1a76:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1a7d:	00 00 00 

0000000000001a80 <std::__cxx11::to_string(int)>:
    1a80:	48 81 ec 18 01 00 00 	sub    rsp,0x118
    1a87:	41 89 f1             	mov    r9d,esi
    1a8a:	41 89 f2             	mov    r10d,esi
    1a8d:	41 89 f3             	mov    r11d,esi
    1a90:	41 f7 d9             	neg    r9d
    1a93:	48 89 9c 24 08 01 00 	mov    QWORD PTR [rsp+0x108],rbx
    1a9a:	00 
    1a9b:	48 8d 5f 10          	lea    rbx,[rdi+0x10]
    1a9f:	44 0f 48 ce          	cmovs  r9d,esi
    1aa3:	41 c1 ea 1f          	shr    r10d,0x1f
    1aa7:	41 c1 eb 1f          	shr    r11d,0x1f
    1aab:	64 4c 8b 04 25 28 00 	mov    r8,QWORD PTR fs:0x28
    1ab2:	00 00 
    1ab4:	4c 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r8
    1abb:	00 
    1abc:	49 89 f8             	mov    r8,rdi
    1abf:	41 83 f9 09          	cmp    r9d,0x9
    1ac3:	0f 86 87 02 00 00    	jbe    1d50 <std::__cxx11::to_string(int)+0x2d0>
    1ac9:	44 89 c9             	mov    ecx,r9d
    1acc:	be 01 00 00 00       	mov    esi,0x1
    1ad1:	48 bf 4b 59 86 38 d6 	movabs rdi,0x346dc5d63886594b
    1ad8:	c5 6d 34 
    1adb:	eb 37                	jmp    1b14 <std::__cxx11::to_string(int)+0x94>
    1add:	0f 1f 00             	nop    DWORD PTR [rax]
    1ae0:	81 f9 e7 03 00 00    	cmp    ecx,0x3e7
    1ae6:	0f 86 24 02 00 00    	jbe    1d10 <std::__cxx11::to_string(int)+0x290>
    1aec:	81 f9 0f 27 00 00    	cmp    ecx,0x270f
    1af2:	0f 86 28 02 00 00    	jbe    1d20 <std::__cxx11::to_string(int)+0x2a0>
    1af8:	89 c8                	mov    eax,ecx
    1afa:	48 f7 e7             	mul    rdi
    1afd:	8d 46 04             	lea    eax,[rsi+0x4]
    1b00:	48 c1 ea 0b          	shr    rdx,0xb
    1b04:	81 f9 9f 86 01 00    	cmp    ecx,0x1869f
    1b0a:	0f 86 20 02 00 00    	jbe    1d30 <std::__cxx11::to_string(int)+0x2b0>
    1b10:	89 c6                	mov    esi,eax
    1b12:	89 d1                	mov    ecx,edx
    1b14:	83 f9 63             	cmp    ecx,0x63
    1b17:	77 c7                	ja     1ae0 <std::__cxx11::to_string(int)+0x60>
    1b19:	8d 46 01             	lea    eax,[rsi+0x1]
    1b1c:	41 01 c2             	add    r10d,eax
    1b1f:	49 89 18             	mov    QWORD PTR [r8],rbx
    1b22:	45 89 d2             	mov    r10d,r10d
    1b25:	41 c6 40 10 00       	mov    BYTE PTR [r8+0x10],0x0
    1b2a:	49 83 fa 0f          	cmp    r10,0xf
    1b2e:	76 61                	jbe    1b91 <std::__cxx11::to_string(int)+0x111>
    1b30:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
    1b37:	00 
    1b38:	49 83 fa 1d          	cmp    r10,0x1d
    1b3c:	0f 86 fe 01 00 00    	jbe    1d40 <std::__cxx11::to_string(int)+0x2c0>
    1b42:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    1b46:	4d 89 d6             	mov    r14,r10
    1b49:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    1b4e:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
    1b53:	44 89 4c 24 0c       	mov    DWORD PTR [rsp+0xc],r9d
    1b58:	89 74 24 08          	mov    DWORD PTR [rsp+0x8],esi
    1b5c:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    1b60:	e8 0b f5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    1b65:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    1b6a:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
    1b6f:	44 8b 4c 24 0c       	mov    r9d,DWORD PTR [rsp+0xc]
    1b74:	8b 74 24 08          	mov    esi,DWORD PTR [rsp+0x8]
    1b78:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1b7b:	48 89 c3             	mov    rbx,rax
    1b7e:	49 89 00             	mov    QWORD PTR [r8],rax
    1b81:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    1b85:	4d 89 70 10          	mov    QWORD PTR [r8+0x10],r14
    1b89:	4c 8b b4 24 10 01 00 	mov    r14,QWORD PTR [rsp+0x110]
    1b90:	00 
    1b91:	66 0f 6f 05 c7 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51c7]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    1b98:	00 
    1b99:	c6 03 2d             	mov    BYTE PTR [rbx],0x2d
    1b9c:	4a 8d 0c 1b          	lea    rcx,[rbx+r11*1]
    1ba0:	0f 29 44 24 20       	movaps XMMWORD PTR [rsp+0x20],xmm0
    1ba5:	66 0f 6f 05 c3 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51c3]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    1bac:	00 
    1bad:	0f 29 44 24 30       	movaps XMMWORD PTR [rsp+0x30],xmm0
    1bb2:	66 0f 6f 05 c6 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51c6]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    1bb9:	00 
    1bba:	0f 29 44 24 40       	movaps XMMWORD PTR [rsp+0x40],xmm0
    1bbf:	66 0f 6f 05 c9 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51c9]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    1bc6:	00 
    1bc7:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
    1bcc:	66 0f 6f 05 cc 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51cc]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    1bd3:	00 
    1bd4:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
    1bd9:	66 0f 6f 05 cf 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51cf]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    1be0:	00 
    1be1:	0f 29 44 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm0
    1be6:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    1bed:	00 
    1bee:	0f 29 84 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm0
    1bf5:	00 
    1bf6:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    1bfd:	00 
    1bfe:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    1c05:	00 
    1c06:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    1c0d:	00 
    1c0e:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    1c15:	00 
    1c16:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    1c1d:	00 
    1c1e:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    1c25:	00 
    1c26:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    1c2d:	00 
    1c2e:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    1c35:	00 
    1c36:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    1c3d:	00 
    1c3e:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    1c45:	00 
    1c46:	66 0f 6f 05 d2 51 00 	movdqa xmm0,XMMWORD PTR [rip+0x51d2]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    1c4d:	00 
    1c4e:	0f 11 84 24 d9 00 00 	movups XMMWORD PTR [rsp+0xd9],xmm0
    1c55:	00 
    1c56:	41 83 f9 63          	cmp    r9d,0x63
    1c5a:	0f 86 90 00 00 00    	jbe    1cf0 <std::__cxx11::to_string(int)+0x270>
    1c60:	44 89 ca             	mov    edx,r9d
    1c63:	44 89 c8             	mov    eax,r9d
    1c66:	48 69 d2 1f 85 eb 51 	imul   rdx,rdx,0x51eb851f
    1c6d:	48 c1 ea 25          	shr    rdx,0x25
    1c71:	6b fa 64             	imul   edi,edx,0x64
    1c74:	29 f8                	sub    eax,edi
    1c76:	44 89 cf             	mov    edi,r9d
    1c79:	41 89 d1             	mov    r9d,edx
    1c7c:	89 f2                	mov    edx,esi
    1c7e:	01 c0                	add    eax,eax
    1c80:	44 8d 58 01          	lea    r11d,[rax+0x1]
    1c84:	0f b6 44 04 20       	movzx  eax,BYTE PTR [rsp+rax*1+0x20]
    1c89:	46 0f b6 5c 1c 20    	movzx  r11d,BYTE PTR [rsp+r11*1+0x20]
    1c8f:	44 88 1c 11          	mov    BYTE PTR [rcx+rdx*1],r11b
    1c93:	8d 56 ff             	lea    edx,[rsi-0x1]
    1c96:	83 ee 02             	sub    esi,0x2
    1c99:	88 04 11             	mov    BYTE PTR [rcx+rdx*1],al
    1c9c:	81 ff 0f 27 00 00    	cmp    edi,0x270f
    1ca2:	77 bc                	ja     1c60 <std::__cxx11::to_string(int)+0x1e0>
    1ca4:	81 ff e7 03 00 00    	cmp    edi,0x3e7
    1caa:	77 44                	ja     1cf0 <std::__cxx11::to_string(int)+0x270>
    1cac:	41 83 c1 30          	add    r9d,0x30
    1cb0:	44 88 09             	mov    BYTE PTR [rcx],r9b
    1cb3:	49 8b 00             	mov    rax,QWORD PTR [r8]
    1cb6:	42 c6 04 10 00       	mov    BYTE PTR [rax+r10*1],0x0
    1cbb:	4d 89 50 08          	mov    QWORD PTR [r8+0x8],r10
    1cbf:	48 8b 84 24 f8 00 00 	mov    rax,QWORD PTR [rsp+0xf8]
    1cc6:	00 
    1cc7:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    1cce:	00 00 
    1cd0:	0f 85 8f 00 00 00    	jne    1d65 <std::__cxx11::to_string(int)+0x2e5>
    1cd6:	48 8b 9c 24 08 01 00 	mov    rbx,QWORD PTR [rsp+0x108]
    1cdd:	00 
    1cde:	4c 89 c0             	mov    rax,r8
    1ce1:	48 81 c4 18 01 00 00 	add    rsp,0x118
    1ce8:	c3                   	ret
    1ce9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1cf0:	45 01 c9             	add    r9d,r9d
    1cf3:	41 8d 41 01          	lea    eax,[r9+0x1]
    1cf7:	46 0f b6 4c 0c 20    	movzx  r9d,BYTE PTR [rsp+r9*1+0x20]
    1cfd:	0f b6 44 04 20       	movzx  eax,BYTE PTR [rsp+rax*1+0x20]
    1d02:	88 41 01             	mov    BYTE PTR [rcx+0x1],al
    1d05:	eb a9                	jmp    1cb0 <std::__cxx11::to_string(int)+0x230>
    1d07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    1d0e:	00 00 
    1d10:	8d 46 02             	lea    eax,[rsi+0x2]
    1d13:	83 c6 01             	add    esi,0x1
    1d16:	e9 01 fe ff ff       	jmp    1b1c <std::__cxx11::to_string(int)+0x9c>
    1d1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1d20:	8d 46 03             	lea    eax,[rsi+0x3]
    1d23:	83 c6 02             	add    esi,0x2
    1d26:	e9 f1 fd ff ff       	jmp    1b1c <std::__cxx11::to_string(int)+0x9c>
    1d2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1d30:	83 c6 03             	add    esi,0x3
    1d33:	e9 e4 fd ff ff       	jmp    1b1c <std::__cxx11::to_string(int)+0x9c>
    1d38:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    1d3f:	00 
    1d40:	41 be 1e 00 00 00    	mov    r14d,0x1e
    1d46:	bf 1f 00 00 00       	mov    edi,0x1f
    1d4b:	e9 f9 fd ff ff       	jmp    1b49 <std::__cxx11::to_string(int)+0xc9>
    1d50:	49 89 18             	mov    QWORD PTR [r8],rbx
    1d53:	41 83 c2 01          	add    r10d,0x1
    1d57:	4a 8d 0c 1b          	lea    rcx,[rbx+r11*1]
    1d5b:	41 c6 40 10 2d       	mov    BYTE PTR [r8+0x10],0x2d
    1d60:	e9 47 ff ff ff       	jmp    1cac <std::__cxx11::to_string(int)+0x22c>
    1d65:	4c 89 b4 24 10 01 00 	mov    QWORD PTR [rsp+0x110],r14
    1d6c:	00 
    1d6d:	e8 1e f3 ff ff       	call   1090 <__stack_chk_fail@plt>
    1d72:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    1d79:	00 00 00 
    1d7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001d80 <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()>:
    1d80:	48 83 ec 28          	sub    rsp,0x28
    1d84:	ba 01 01 00 00       	mov    edx,0x101
    1d89:	b8 02 01 00 00       	mov    eax,0x102
    1d8e:	41 b8 01 03 00 00    	mov    r8d,0x301
    1d94:	64 48 8b 34 25 28 00 	mov    rsi,QWORD PTR fs:0x28
    1d9b:	00 00 
    1d9d:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
    1da2:	48 8d 35 6f 6f 00 00 	lea    rsi,[rip+0x6f6f]        # 8d18 <vtable for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x10>
    1da9:	66 89 57 70          	mov    WORD PTR [rdi+0x70],dx
    1dad:	41 b9 03 01 00 00    	mov    r9d,0x103
    1db3:	41 ba 04 01 00 00    	mov    r10d,0x104
    1db9:	66 89 57 78          	mov    WORD PTR [rdi+0x78],dx
    1dbd:	ba 01 02 00 00       	mov    edx,0x201
    1dc2:	41 bb 01 04 00 00    	mov    r11d,0x401
    1dc8:	66 89 97 88 00 00 00 	mov    WORD PTR [rdi+0x88],dx
    1dcf:	66 89 97 90 00 00 00 	mov    WORD PTR [rdi+0x90],dx
    1dd6:	48 c7 47 08 ff ff ff 	mov    QWORD PTR [rdi+0x8],0xffffffffffffffff
    1ddd:	ff 
    1dde:	c6 47 1a 00          	mov    BYTE PTR [rdi+0x1a],0x0
    1de2:	48 89 37             	mov    QWORD PTR [rdi],rsi
    1de5:	be 03 02 00 00       	mov    esi,0x203
    1dea:	48 c7 47 20 ff ff ff 	mov    QWORD PTR [rdi+0x20],0xffffffffffffffff
    1df1:	ff 
    1df2:	c6 47 32 00          	mov    BYTE PTR [rdi+0x32],0x0
    1df6:	48 c7 47 38 ff ff ff 	mov    QWORD PTR [rdi+0x38],0xffffffffffffffff
    1dfd:	ff 
    1dfe:	c6 47 4a 00          	mov    BYTE PTR [rdi+0x4a],0x0
    1e02:	c6 47 62 00          	mov    BYTE PTR [rdi+0x62],0x0
    1e06:	c6 87 92 00 00 00 00 	mov    BYTE PTR [rdi+0x92],0x0
    1e0d:	c6 87 aa 00 00 00 00 	mov    BYTE PTR [rdi+0xaa],0x0
    1e14:	c6 87 c2 00 00 00 00 	mov    BYTE PTR [rdi+0xc2],0x0
    1e1b:	48 c7 87 c8 00 00 00 	mov    QWORD PTR [rdi+0xc8],0xffffffffffffffff
    1e22:	ff ff ff ff 
    1e26:	c6 87 da 00 00 00 00 	mov    BYTE PTR [rdi+0xda],0x0
    1e2d:	c6 87 22 01 00 00 00 	mov    BYTE PTR [rdi+0x122],0x0
    1e34:	48 c7 87 58 01 00 00 	mov    QWORD PTR [rdi+0x158],0xffffffffffffffff
    1e3b:	ff ff ff ff 
    1e3f:	c6 87 6a 01 00 00 00 	mov    BYTE PTR [rdi+0x16a],0x0
    1e46:	c6 87 82 01 00 00 00 	mov    BYTE PTR [rdi+0x182],0x0
    1e4d:	c6 87 9a 01 00 00 00 	mov    BYTE PTR [rdi+0x19a],0x0
    1e54:	48 c7 87 a0 01 00 00 	mov    QWORD PTR [rdi+0x1a0],0xffffffffffffffff
    1e5b:	ff ff ff ff 
    1e5f:	c6 87 b2 01 00 00 00 	mov    BYTE PTR [rdi+0x1b2],0x0
    1e66:	48 c7 47 68 ff ff ff 	mov    QWORD PTR [rdi+0x68],0xffffffffffffffff
    1e6d:	ff 
    1e6e:	c6 47 7a 02          	mov    BYTE PTR [rdi+0x7a],0x2
    1e72:	48 c7 87 80 00 00 00 	mov    QWORD PTR [rdi+0x80],0xffffffffffffffff
    1e79:	ff ff ff ff 
    1e7d:	48 c7 44 24 09 00 00 	mov    QWORD PTR [rsp+0x9],0x0
    1e84:	00 00 
    1e86:	48 c7 04 24 ff ff ff 	mov    QWORD PTR [rsp],0xffffffffffffffff
    1e8d:	ff 
    1e8e:	c6 44 24 08 01       	mov    BYTE PTR [rsp+0x8],0x1
    1e93:	0f b7 4c 24 08       	movzx  ecx,WORD PTR [rsp+0x8]
    1e98:	66 89 97 c0 00 00 00 	mov    WORD PTR [rdi+0xc0],dx
    1e9f:	c6 44 24 08 02       	mov    BYTE PTR [rsp+0x8],0x2
    1ea4:	0f b7 54 24 08       	movzx  edx,WORD PTR [rsp+0x8]
    1ea9:	c6 44 24 08 03       	mov    BYTE PTR [rsp+0x8],0x3
    1eae:	66 89 97 a0 00 00 00 	mov    WORD PTR [rdi+0xa0],dx
    1eb5:	ba 00 03 00 00       	mov    edx,0x300
    1eba:	66 89 97 a8 00 00 00 	mov    WORD PTR [rdi+0xa8],dx
    1ec1:	0f b7 54 24 08       	movzx  edx,WORD PTR [rsp+0x8]
    1ec6:	66 89 4f 58          	mov    WORD PTR [rdi+0x58],cx
    1eca:	b9 00 05 00 00       	mov    ecx,0x500
    1ecf:	66 89 97 e8 00 00 00 	mov    WORD PTR [rdi+0xe8],dx
    1ed6:	ba 02 04 00 00       	mov    edx,0x402
    1edb:	66 89 87 b8 00 00 00 	mov    WORD PTR [rdi+0xb8],ax
    1ee2:	b8 00 01 00 00       	mov    eax,0x100
    1ee7:	48 c7 47 50 ff ff ff 	mov    QWORD PTR [rdi+0x50],0xffffffffffffffff
    1eee:	ff 
    1eef:	66 89 4f 60          	mov    WORD PTR [rdi+0x60],cx
    1ef3:	48 c7 87 b0 00 00 00 	mov    QWORD PTR [rdi+0xb0],0xffffffffffffffff
    1efa:	ff ff ff ff 
    1efe:	48 c7 87 98 00 00 00 	mov    QWORD PTR [rdi+0x98],0xffffffffffffffff
    1f05:	ff ff ff ff 
    1f09:	48 c7 87 10 01 00 00 	mov    QWORD PTR [rdi+0x110],0xffffffffffffffff
    1f10:	ff ff ff ff 
    1f14:	66 89 b7 18 01 00 00 	mov    WORD PTR [rdi+0x118],si
    1f1b:	66 44 89 87 20 01 00 	mov    WORD PTR [rdi+0x120],r8w
    1f22:	00 
    1f23:	48 c7 87 e0 00 00 00 	mov    QWORD PTR [rdi+0xe0],0xffffffffffffffff
    1f2a:	ff ff ff ff 
    1f2e:	66 89 97 f0 00 00 00 	mov    WORD PTR [rdi+0xf0],dx
    1f35:	c6 87 f2 00 00 00 02 	mov    BYTE PTR [rdi+0xf2],0x2
    1f3c:	48 c7 87 f8 00 00 00 	mov    QWORD PTR [rdi+0xf8],0xffffffffffffffff
    1f43:	ff ff ff ff 
    1f47:	66 44 89 8f 00 01 00 	mov    WORD PTR [rdi+0x100],r9w
    1f4e:	00 
    1f4f:	66 89 97 08 01 00 00 	mov    WORD PTR [rdi+0x108],dx
    1f56:	c6 87 0a 01 00 00 02 	mov    BYTE PTR [rdi+0x10a],0x2
    1f5d:	48 c7 87 40 01 00 00 	mov    QWORD PTR [rdi+0x140],0xffffffffffffffff
    1f64:	ff ff ff ff 
    1f68:	66 44 89 97 48 01 00 	mov    WORD PTR [rdi+0x148],r10w
    1f6f:	00 
    1f70:	66 44 89 9f 50 01 00 	mov    WORD PTR [rdi+0x150],r11w
    1f77:	00 
    1f78:	c6 87 52 01 00 00 02 	mov    BYTE PTR [rdi+0x152],0x2
    1f7f:	c6 44 24 08 04       	mov    BYTE PTR [rsp+0x8],0x4
    1f84:	48 c7 87 28 01 00 00 	mov    QWORD PTR [rdi+0x128],0xffffffffffffffff
    1f8b:	ff ff ff ff 
    1f8f:	0f b7 54 24 08       	movzx  edx,WORD PTR [rsp+0x8]
    1f94:	66 89 87 38 01 00 00 	mov    WORD PTR [rdi+0x138],ax
    1f9b:	b8 05 01 00 00       	mov    eax,0x105
    1fa0:	66 89 97 30 01 00 00 	mov    WORD PTR [rdi+0x130],dx
    1fa7:	c6 44 24 08 05       	mov    BYTE PTR [rsp+0x8],0x5
    1fac:	0f b7 54 24 08       	movzx  edx,WORD PTR [rsp+0x8]
    1fb1:	66 89 87 90 01 00 00 	mov    WORD PTR [rdi+0x190],ax
    1fb8:	31 c0                	xor    eax,eax
    1fba:	c6 87 3a 01 00 00 02 	mov    BYTE PTR [rdi+0x13a],0x2
    1fc1:	48 c7 87 88 01 00 00 	mov    QWORD PTR [rdi+0x188],0xffffffffffffffff
    1fc8:	ff ff ff ff 
    1fcc:	66 89 8f 98 01 00 00 	mov    WORD PTR [rdi+0x198],cx
    1fd3:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
    1fda:	00 00 
    1fdc:	48 c7 87 70 01 00 00 	mov    QWORD PTR [rdi+0x170],0xffffffffffffffff
    1fe3:	ff ff ff ff 
    1fe7:	66 89 97 78 01 00 00 	mov    WORD PTR [rdi+0x178],dx
    1fee:	66 89 87 80 01 00 00 	mov    WORD PTR [rdi+0x180],ax
    1ff5:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    1ffa:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    2001:	00 00 
    2003:	75 08                	jne    200d <turing_learning::utm::synthesis::datasets::CountDataset<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::gen_solution()+0x28d>
    2005:	48 89 f8             	mov    rax,rdi
    2008:	48 83 c4 28          	add    rsp,0x28
    200c:	c3                   	ret
    200d:	e8 7e f0 ff ff       	call   1090 <__stack_chk_fail@plt>
    2012:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    2019:	00 00 00 
    201c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002020 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const>:
    2020:	41 57                	push   r15
    2022:	41 56                	push   r14
    2024:	41 55                	push   r13
    2026:	41 bd 3a 20 00 00    	mov    r13d,0x203a
    202c:	41 54                	push   r12
    202e:	4c 8d 67 10          	lea    r12,[rdi+0x10]
    2032:	55                   	push   rbp
    2033:	53                   	push   rbx
    2034:	48 89 fb             	mov    rbx,rdi
    2037:	48 81 ec 78 01 00 00 	sub    rsp,0x178
    203e:	64 48 8b 2c 25 28 00 	mov    rbp,QWORD PTR fs:0x28
    2045:	00 00 
    2047:	48 89 ac 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rbp
    204e:	00 
    204f:	48 89 f5             	mov    rbp,rsi
    2052:	c7 47 10 74 61 70 65 	mov    DWORD PTR [rdi+0x10],0x65706174
    2059:	c6 47 14 30          	mov    BYTE PTR [rdi+0x14],0x30
    205d:	66 44 89 6f 15       	mov    WORD PTR [rdi+0x15],r13w
    2062:	4c 89 27             	mov    QWORD PTR [rdi],r12
    2065:	41 c6 44 24 07 00    	mov    BYTE PTR [r12+0x7],0x0
    206b:	0f b7 b6 20 27 00 00 	movzx  esi,WORD PTR [rsi+0x2720]
    2072:	48 c7 47 08 07 00 00 	mov    QWORD PTR [rdi+0x8],0x7
    2079:	00 
    207a:	66 39 b5 22 27 00 00 	cmp    WORD PTR [rbp+0x2722],si
    2081:	0f 83 09 06 00 00    	jae    2690 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x670>
    2087:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    208e:	00 
    208f:	41 b8 0b 00 00 00    	mov    r8d,0xb
    2095:	48 b8 5b 2d 5d 20 28 	movabs rax,0x706d6528205d2d5b
    209c:	65 6d 70 
    209f:	c6 84 24 8b 00 00 00 	mov    BYTE PTR [rsp+0x8b],0x0
    20a6:	00 
    20a7:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    20ae:	00 
    20af:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    20b4:	c7 84 24 87 00 00 00 	mov    DWORD PTR [rsp+0x87],0x29797470
    20bb:	70 74 79 29 
    20bf:	48 c7 44 24 78 0b 00 	mov    QWORD PTR [rsp+0x78],0xb
    20c6:	00 00 
    20c8:	4c 8b 7b 08          	mov    r15,QWORD PTR [rbx+0x8]
    20cc:	4c 8b 5c 24 70       	mov    r11,QWORD PTR [rsp+0x70]
    20d1:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    20d8:	ff ff 7f 
    20db:	48 89 c2             	mov    rdx,rax
    20de:	4c 29 fa             	sub    rdx,r15
    20e1:	4c 39 c2             	cmp    rdx,r8
    20e4:	0f 82 0c 24 00 00    	jb     44f6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24d6>
    20ea:	4c 8b 0b             	mov    r9,QWORD PTR [rbx]
    20ed:	4b 8d 0c 07          	lea    rcx,[r15+r8*1]
    20f1:	4d 39 cc             	cmp    r12,r9
    20f4:	0f 84 96 16 00 00    	je     3790 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1770>
    20fa:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    20fe:	49 39 ce             	cmp    r14,rcx
    2101:	0f 82 c1 08 00 00    	jb     29c8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9a8>
    2107:	4b 8d 3c 39          	lea    rdi,[r9+r15*1]
    210b:	49 83 f8 01          	cmp    r8,0x1
    210f:	0f 84 42 19 00 00    	je     3a57 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a37>
    2115:	4c 89 c2             	mov    rdx,r8
    2118:	4c 89 de             	mov    rsi,r11
    211b:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    211f:	e8 3c ef ff ff       	call   1060 <memcpy@plt>
    2124:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    2127:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    212b:	41 c6 04 0e 00       	mov    BYTE PTR [r14+rcx*1],0x0
    2130:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    2135:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    2139:	4c 39 ef             	cmp    rdi,r13
    213c:	74 15                	je     2153 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x133>
    213e:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    2145:	00 
    2146:	48 8d 70 01          	lea    rsi,[rax+0x1]
    214a:	e8 31 ef ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    214f:	48 8b 4b 08          	mov    rcx,QWORD PTR [rbx+0x8]
    2153:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    215a:	ff ff 7f 
    215d:	48 39 c1             	cmp    rcx,rax
    2160:	0f 84 15 24 00 00    	je     457b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x255b>
    2166:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    2169:	4c 8d 49 01          	lea    r9,[rcx+0x1]
    216d:	4d 39 fc             	cmp    r12,r15
    2170:	0f 84 ba 15 00 00    	je     3730 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1710>
    2176:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    217a:	4d 39 ce             	cmp    r14,r9
    217d:	0f 82 9d 0f 00 00    	jb     3120 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1100>
    2183:	41 c6 04 0f 0a       	mov    BYTE PTR [r15+rcx*1],0xa
    2188:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    218b:	c6 44 08 01 00       	mov    BYTE PTR [rax+rcx*1+0x1],0x0
    2190:	48 b8 06 00 00 00 00 	movabs rax,0x8000000000000006
    2197:	00 00 80 
    219a:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    219e:	48 01 c8             	add    rax,rcx
    21a1:	48 83 f8 03          	cmp    rax,0x3
    21a5:	0f 86 97 22 00 00    	jbe    4442 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2422>
    21ab:	4c 8b 03             	mov    r8,QWORD PTR [rbx]
    21ae:	4c 8d 71 05          	lea    r14,[rcx+0x5]
    21b2:	4d 39 c4             	cmp    r12,r8
    21b5:	0f 84 95 15 00 00    	je     3750 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1730>
    21bb:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    21bf:	4c 39 f0             	cmp    rax,r14
    21c2:	0f 82 f0 0f 00 00    	jb     31b8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1198>
    21c8:	43 c7 04 08 68 65 61 	mov    DWORD PTR [r8+r9*1],0x64616568
    21cf:	64 
    21d0:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    21d3:	41 ba 30 00 00 00    	mov    r10d,0x30
    21d9:	43 c6 04 37 00       	mov    BYTE PTR [r15+r14*1],0x0
    21de:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    21e5:	ff ff 7f 
    21e8:	4c 89 73 08          	mov    QWORD PTR [rbx+0x8],r14
    21ec:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    21f1:	66 44 89 94 24 80 00 	mov    WORD PTR [rsp+0x80],r10w
    21f8:	00 00 
    21fa:	48 c7 44 24 78 01 00 	mov    QWORD PTR [rsp+0x78],0x1
    2201:	00 00 
    2203:	49 39 c6             	cmp    r14,rax
    2206:	0f 84 a4 22 00 00    	je     44b0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2490>
    220c:	4c 8b 0b             	mov    r9,QWORD PTR [rbx]
    220f:	4c 8d 41 06          	lea    r8,[rcx+0x6]
    2213:	4d 39 cc             	cmp    r12,r9
    2216:	0f 84 a4 15 00 00    	je     37c0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17a0>
    221c:	4c 8b 7b 10          	mov    r15,QWORD PTR [rbx+0x10]
    2220:	4d 39 c7             	cmp    r15,r8
    2223:	0f 82 57 10 00 00    	jb     3280 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1260>
    2229:	43 c6 04 31 30       	mov    BYTE PTR [r9+r14*1],0x30
    222e:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    2231:	43 c6 04 07 00       	mov    BYTE PTR [r15+r8*1],0x0
    2236:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    223b:	4c 89 43 08          	mov    QWORD PTR [rbx+0x8],r8
    223f:	4c 39 ef             	cmp    rdi,r13
    2242:	74 15                	je     2259 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x239>
    2244:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    224b:	00 
    224c:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2250:	e8 2b ee ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2255:	4c 8b 43 08          	mov    r8,QWORD PTR [rbx+0x8]
    2259:	48 b8 03 00 00 00 00 	movabs rax,0x8000000000000003
    2260:	00 00 80 
    2263:	4c 01 c0             	add    rax,r8
    2266:	48 83 f8 01          	cmp    rax,0x1
    226a:	0f 86 41 21 00 00    	jbe    43b1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2391>
    2270:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
    2273:	4d 8d 78 02          	lea    r15,[r8+0x2]
    2277:	49 39 cc             	cmp    r12,rcx
    227a:	0f 84 60 15 00 00    	je     37e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17c0>
    2280:	4c 8b 73 10          	mov    r14,QWORD PTR [rbx+0x10]
    2284:	4d 39 fe             	cmp    r14,r15
    2287:	0f 82 83 10 00 00    	jb     3310 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x12f0>
    228d:	41 b9 3a 20 00 00    	mov    r9d,0x203a
    2293:	66 46 89 0c 01       	mov    WORD PTR [rcx+r8*1],r9w
    2298:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    229b:	43 c6 04 3e 00       	mov    BYTE PTR [r14+r15*1],0x0
    22a0:	be 5b 00 00 00       	mov    esi,0x5b
    22a5:	4c 8d 74 24 60       	lea    r14,[rsp+0x60]
    22aa:	0f b7 85 30 27 00 00 	movzx  eax,WORD PTR [rbp+0x2730]
    22b1:	4c 89 7b 08          	mov    QWORD PTR [rbx+0x8],r15
    22b5:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
    22ba:	66 89 74 24 60       	mov    WORD PTR [rsp+0x60],si
    22bf:	48 c7 44 24 58 01 00 	mov    QWORD PTR [rsp+0x58],0x1
    22c6:	00 00 
    22c8:	83 f8 09             	cmp    eax,0x9
    22cb:	0f 86 fc 1e 00 00    	jbe    41cd <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ad>
    22d1:	83 f8 63             	cmp    eax,0x63
    22d4:	0f 86 76 0c 00 00    	jbe    2f50 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xf30>
    22da:	3d e7 03 00 00       	cmp    eax,0x3e7
    22df:	0f 86 eb 12 00 00    	jbe    35d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15b0>
    22e5:	3d 0f 27 00 00       	cmp    eax,0x270f
    22ea:	be 03 00 00 00       	mov    esi,0x3
    22ef:	ba 04 00 00 00       	mov    edx,0x4
    22f4:	b9 05 00 00 00       	mov    ecx,0x5
    22f9:	0f 46 d6             	cmovbe edx,esi
    22fc:	41 b8 05 00 00 00    	mov    r8d,0x5
    2302:	be 04 00 00 00       	mov    esi,0x4
    2307:	48 0f 46 ce          	cmovbe rcx,rsi
    230b:	44 0f 46 c6          	cmovbe r8d,esi
    230f:	66 0f 6f 05 49 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a49]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2316:	00 
    2317:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    231c:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    2323:	00 
    2324:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    232b:	00 
    232c:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    2333:	00 
    2334:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    233b:	00 
    233c:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2343:	00 
    2344:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    234b:	00 
    234c:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2353:	00 
    2354:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    235b:	00 
    235c:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2363:	00 
    2364:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    236b:	00 
    236c:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2373:	00 
    2374:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    237b:	00 
    237c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2383:	00 
    2384:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    238b:	00 
    238c:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2393:	00 
    2394:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    239b:	00 
    239c:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    23a3:	00 
    23a4:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    23ab:	00 
    23ac:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    23b3:	00 
    23b4:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    23bb:	00 
    23bc:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    23c3:	00 
    23c4:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    23cb:	00 
    23cc:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    23d3:	00 
    23d4:	66 0f 6f 05 44 4a 00 	movdqa xmm0,XMMWORD PTR [rip+0x4a44]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    23db:	00 
    23dc:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    23e3:	00 
    23e4:	90                   	nop
    23e5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    23ec:	00 00 00 00 
    23f0:	89 c7                	mov    edi,eax
    23f2:	89 c6                	mov    esi,eax
    23f4:	48 69 ff 1f 85 eb 51 	imul   rdi,rdi,0x51eb851f
    23fb:	48 c1 ef 25          	shr    rdi,0x25
    23ff:	44 6b cf 64          	imul   r9d,edi,0x64
    2403:	44 29 ce             	sub    esi,r9d
    2406:	41 89 c1             	mov    r9d,eax
    2409:	89 f8                	mov    eax,edi
    240b:	89 d7                	mov    edi,edx
    240d:	01 f6                	add    esi,esi
    240f:	44 8d 56 01          	lea    r10d,[rsi+0x1]
    2413:	0f b6 b4 34 90 00 00 	movzx  esi,BYTE PTR [rsp+rsi*1+0x90]
    241a:	00 
    241b:	46 0f b6 94 14 90 00 	movzx  r10d,BYTE PTR [rsp+r10*1+0x90]
    2422:	00 00 
    2424:	44 88 94 3c 80 00 00 	mov    BYTE PTR [rsp+rdi*1+0x80],r10b
    242b:	00 
    242c:	8d 7a ff             	lea    edi,[rdx-0x1]
    242f:	83 ea 02             	sub    edx,0x2
    2432:	40 88 b4 3c 80 00 00 	mov    BYTE PTR [rsp+rdi*1+0x80],sil
    2439:	00 
    243a:	41 81 f9 0f 27 00 00 	cmp    r9d,0x270f
    2441:	77 ad                	ja     23f0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x3d0>
    2443:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    2448:	48 01 ca             	add    rdx,rcx
    244b:	41 81 f9 e7 03 00 00 	cmp    r9d,0x3e7
    2452:	0f 87 e0 0b 00 00    	ja     3038 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1018>
    2458:	83 c0 30             	add    eax,0x30
    245b:	88 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],al
    2462:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2469:	ff ff 7f 
    246c:	c6 02 00             	mov    BYTE PTR [rdx],0x0
    246f:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2474:	48 89 c6             	mov    rsi,rax
    2477:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
    247c:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    2481:	48 29 d6             	sub    rsi,rdx
    2484:	48 39 ce             	cmp    rsi,rcx
    2487:	0f 82 ef 1d 00 00    	jb     427c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x225c>
    248d:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    2492:	4c 8d 3c 0a          	lea    r15,[rdx+rcx*1]
    2496:	4d 39 f3             	cmp    r11,r14
    2499:	0f 84 89 14 00 00    	je     3928 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1908>
    249f:	48 8b 74 24 60       	mov    rsi,QWORD PTR [rsp+0x60]
    24a4:	4c 39 fe             	cmp    rsi,r15
    24a7:	0f 82 5b 0f 00 00    	jb     3408 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x13e8>
    24ad:	4c 01 da             	add    rdx,r11
    24b0:	41 83 f8 01          	cmp    r8d,0x1
    24b4:	0f 84 a9 17 00 00    	je     3c63 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c43>
    24ba:	89 ce                	mov    esi,ecx
    24bc:	85 c9                	test   ecx,ecx
    24be:	74 19                	je     24d9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4b9>
    24c0:	31 c0                	xor    eax,eax
    24c2:	89 c1                	mov    ecx,eax
    24c4:	83 c0 01             	add    eax,0x1
    24c7:	41 0f b6 3c 0a       	movzx  edi,BYTE PTR [r10+rcx*1]
    24cc:	40 88 3c 0a          	mov    BYTE PTR [rdx+rcx*1],dil
    24d0:	39 f0                	cmp    eax,esi
    24d2:	72 ee                	jb     24c2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4a2>
    24d4:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    24d9:	4d 89 d9             	mov    r9,r11
    24dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    24e0:	43 c6 04 39 00       	mov    BYTE PTR [r9+r15*1],0x0
    24e5:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    24ea:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
    24ef:	4c 39 ef             	cmp    rdi,r13
    24f2:	74 16                	je     250a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4ea>
    24f4:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    24fb:	00 
    24fc:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2500:	e8 7b eb ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2505:	4c 8b 7c 24 58       	mov    r15,QWORD PTR [rsp+0x58]
    250a:	48 b8 04 00 00 00 00 	movabs rax,0x8000000000000004
    2511:	00 00 80 
    2514:	4c 01 f8             	add    rax,r15
    2517:	48 83 f8 02          	cmp    rax,0x2
    251b:	0f 86 82 1d 00 00    	jbe    42a3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2283>
    2521:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    2526:	4d 8d 47 03          	lea    r8,[r15+0x3]
    252a:	4c 39 f1             	cmp    rcx,r14
    252d:	0f 84 4d 14 00 00    	je     3980 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1960>
    2533:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2538:	4c 39 c0             	cmp    rax,r8
    253b:	0f 82 cf 0f 00 00    	jb     3510 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14f0>
    2541:	ba 5d 20 00 00       	mov    edx,0x205d
    2546:	42 c6 44 39 02 28    	mov    BYTE PTR [rcx+r15*1+0x2],0x28
    254c:	66 42 89 14 39       	mov    WORD PTR [rcx+r15*1],dx
    2551:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    2556:	43 c6 04 01 00       	mov    BYTE PTR [r9+r8*1],0x0
    255b:	0f b7 85 30 27 00 00 	movzx  eax,WORD PTR [rbp+0x2730]
    2562:	48 8b 95 28 27 00 00 	mov    rdx,QWORD PTR [rbp+0x2728]
    2569:	4c 89 44 24 58       	mov    QWORD PTR [rsp+0x58],r8
    256e:	0f b6 44 02 08       	movzx  eax,BYTE PTR [rdx+rax*1+0x8]
    2573:	84 c0                	test   al,al
    2575:	0f 85 e5 0a 00 00    	jne    3060 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1040>
    257b:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    2580:	48 8d 35 b0 2a 00 00 	lea    rsi,[rip+0x2ab0]        # 5037 <_IO_stdin_used+0x37>
    2587:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    258c:	e8 6f f1 ff ff       	call   1700 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    2591:	4c 8b 7c 24 58       	mov    r15,QWORD PTR [rsp+0x58]
    2596:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    259d:	ff ff 7f 
    25a0:	49 39 c7             	cmp    r15,rax
    25a3:	0f 84 93 1f 00 00    	je     453c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x251c>
    25a9:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    25ae:	49 8d 6f 01          	lea    rbp,[r15+0x1]
    25b2:	4c 39 f1             	cmp    rcx,r14
    25b5:	0f 84 4d 14 00 00    	je     3a08 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x19e8>
    25bb:	4c 8b 6c 24 60       	mov    r13,QWORD PTR [rsp+0x60]
    25c0:	49 39 ed             	cmp    r13,rbp
    25c3:	0f 82 1f 10 00 00    	jb     35e8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15c8>
    25c9:	42 c6 04 39 29       	mov    BYTE PTR [rcx+r15*1],0x29
    25ce:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
    25d3:	c6 04 28 00          	mov    BYTE PTR [rax+rbp*1],0x0
    25d7:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    25dc:	48 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],rbp
    25e1:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    25e8:	ff ff 7f 
    25eb:	4c 8b 6b 08          	mov    r13,QWORD PTR [rbx+0x8]
    25ef:	48 89 c2             	mov    rdx,rax
    25f2:	4c 29 ea             	sub    rdx,r13
    25f5:	48 39 ea             	cmp    rdx,rbp
    25f8:	0f 82 d2 1c 00 00    	jb     42d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22b0>
    25fe:	4c 8b 13             	mov    r10,QWORD PTR [rbx]
    2601:	4a 8d 4c 2d 00       	lea    rcx,[rbp+r13*1+0x0]
    2606:	4d 39 d4             	cmp    r12,r10
    2609:	0f 84 19 14 00 00    	je     3a28 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a08>
    260f:	4c 8b 7b 10          	mov    r15,QWORD PTR [rbx+0x10]
    2613:	49 39 cf             	cmp    r15,rcx
    2616:	0f 82 54 10 00 00    	jb     3670 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1650>
    261c:	4b 8d 3c 2a          	lea    rdi,[r10+r13*1]
    2620:	48 83 fd 01          	cmp    rbp,0x1
    2624:	0f 84 43 17 00 00    	je     3d6d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d4d>
    262a:	48 89 ea             	mov    rdx,rbp
    262d:	4c 89 c6             	mov    rsi,r8
    2630:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    2634:	e8 27 ea ff ff       	call   1060 <memcpy@plt>
    2639:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    263c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    2640:	41 c6 04 0f 00       	mov    BYTE PTR [r15+rcx*1],0x0
    2645:	48 8b 7c 24 50       	mov    rdi,QWORD PTR [rsp+0x50]
    264a:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
    264e:	4c 39 f7             	cmp    rdi,r14
    2651:	74 0e                	je     2661 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x641>
    2653:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2658:	48 8d 70 01          	lea    rsi,[rax+0x1]
    265c:	e8 1f ea ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2661:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    2668:	00 
    2669:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    2670:	00 00 
    2672:	0f 85 bc 1b 00 00    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    2678:	48 81 c4 78 01 00 00 	add    rsp,0x178
    267f:	48 89 d8             	mov    rax,rbx
    2682:	5b                   	pop    rbx
    2683:	5d                   	pop    rbp
    2684:	41 5c                	pop    r12
    2686:	41 5d                	pop    r13
    2688:	41 5e                	pop    r14
    268a:	41 5f                	pop    r15
    268c:	c3                   	ret
    268d:	0f 1f 00             	nop    DWORD PTR [rax]
    2690:	41 bb 5b 00 00 00    	mov    r11d,0x5b
    2696:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    269b:	4c 8d 74 24 60       	lea    r14,[rsp+0x60]
    26a0:	48 c7 44 24 58 01 00 	mov    QWORD PTR [rsp+0x58],0x1
    26a7:	00 00 
    26a9:	4c 89 74 24 50       	mov    QWORD PTR [rsp+0x50],r14
    26ae:	66 44 89 5c 24 60    	mov    WORD PTR [rsp+0x60],r11w
    26b4:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    26b9:	e8 c2 f3 ff ff       	call   1a80 <std::__cxx11::to_string(int)>
    26be:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    26c3:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
    26c8:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    26cf:	ff ff 7f 
    26d2:	48 89 c6             	mov    rsi,rax
    26d5:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
    26da:	48 29 d6             	sub    rsi,rdx
    26dd:	48 39 ce             	cmp    rsi,rcx
    26e0:	0f 82 53 1c 00 00    	jb     4339 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2319>
    26e6:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    26eb:	4c 8d 2c 11          	lea    r13,[rcx+rdx*1]
    26ef:	4d 39 f0             	cmp    r8,r14
    26f2:	0f 84 9a 03 00 00    	je     2a92 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa72>
    26f8:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    26fd:	4d 39 ef             	cmp    r15,r13
    2700:	0f 82 fa 10 00 00    	jb     3800 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x17e0>
    2706:	48 85 c9             	test   rcx,rcx
    2709:	74 25                	je     2730 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    270b:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
    270f:	48 83 f9 01          	cmp    rcx,0x1
    2713:	0f 84 3d 17 00 00    	je     3e56 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e36>
    2719:	48 89 ca             	mov    rdx,rcx
    271c:	4c 89 ce             	mov    rsi,r9
    271f:	e8 3c e9 ff ff       	call   1060 <memcpy@plt>
    2724:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    2729:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    2730:	43 c6 04 28 00       	mov    BYTE PTR [r8+r13*1],0x0
    2735:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    273a:	4c 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],r13
    273f:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    2746:	00 
    2747:	4c 39 ef             	cmp    rdi,r13
    274a:	74 11                	je     275d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x73d>
    274c:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    2753:	00 
    2754:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2758:	e8 23 e9 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    275d:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    2762:	48 8d 35 c8 28 00 00 	lea    rsi,[rip+0x28c8]        # 5031 <_IO_stdin_used+0x31>
    2769:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    276e:	e8 8d ef ff ff       	call   1700 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    2773:	0f b7 b5 22 27 00 00 	movzx  esi,WORD PTR [rbp+0x2722]
    277a:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    277f:	e8 fc f2 ff ff       	call   1a80 <std::__cxx11::to_string(int)>
    2784:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    2789:	4c 8b 4c 24 78       	mov    r9,QWORD PTR [rsp+0x78]
    278e:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2795:	ff ff 7f 
    2798:	48 89 c1             	mov    rcx,rax
    279b:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    27a0:	48 29 d1             	sub    rcx,rdx
    27a3:	4c 39 c9             	cmp    rcx,r9
    27a6:	0f 82 92 1a 00 00    	jb     423e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x221e>
    27ac:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    27b1:	49 8d 0c 11          	lea    rcx,[r9+rdx*1]
    27b5:	4d 39 f0             	cmp    r8,r14
    27b8:	0f 84 c7 13 00 00    	je     3b85 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b65>
    27be:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    27c3:	49 39 cf             	cmp    r15,rcx
    27c6:	0f 82 74 10 00 00    	jb     3840 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1820>
    27cc:	4d 85 c9             	test   r9,r9
    27cf:	74 2f                	je     2800 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    27d1:	49 8d 3c 10          	lea    rdi,[r8+rdx*1]
    27d5:	49 83 f9 01          	cmp    r9,0x1
    27d9:	0f 84 bc 16 00 00    	je     3e9b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e7b>
    27df:	4c 89 ca             	mov    rdx,r9
    27e2:	4c 89 d6             	mov    rsi,r10
    27e5:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    27e9:	e8 72 e8 ff ff       	call   1060 <memcpy@plt>
    27ee:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    27f3:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    27f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    27fe:	00 00 
    2800:	41 c6 04 08 00       	mov    BYTE PTR [r8+rcx*1],0x0
    2805:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    280a:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
    280f:	4c 39 ef             	cmp    rdi,r13
    2812:	74 11                	je     2825 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x805>
    2814:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    281b:	00 
    281c:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2820:	e8 5b e8 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2825:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    282a:	48 8d 35 02 28 00 00 	lea    rsi,[rip+0x2802]        # 5033 <_IO_stdin_used+0x33>
    2831:	e8 ca ee ff ff       	call   1700 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::append(char const*) [clone .isra.0]>
    2836:	44 0f b7 85 20 27 00 	movzx  r8d,WORD PTR [rbp+0x2720]
    283d:	00 
    283e:	66 44 39 85 22 27 00 	cmp    WORD PTR [rbp+0x2722],r8w
    2845:	00 
    2846:	0f 82 03 01 00 00    	jb     294f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x92f>
    284c:	48 8d 45 10          	lea    rax,[rbp+0x10]
    2850:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    2855:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    285c:	00 00 00 00 
    2860:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2865:	41 0f b7 c0          	movzx  eax,r8w
    2869:	0f b6 04 01          	movzx  eax,BYTE PTR [rcx+rax*1]
    286d:	84 c0                	test   al,al
    286f:	0f 85 e3 02 00 00    	jne    2b58 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb38>
    2875:	b8 5f 00 00 00       	mov    eax,0x5f
    287a:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    287f:	4c 8d ac 24 80 00 00 	lea    r13,[rsp+0x80]
    2886:	00 
    2887:	41 bf 01 00 00 00    	mov    r15d,0x1
    288d:	66 89 84 24 80 00 00 	mov    WORD PTR [rsp+0x80],ax
    2894:	00 
    2895:	4d 89 ea             	mov    r10,r13
    2898:	48 c7 44 24 78 01 00 	mov    QWORD PTR [rsp+0x78],0x1
    289f:	00 00 
    28a1:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    28a8:	ff ff 7f 
    28ab:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    28b0:	48 29 d0             	sub    rax,rdx
    28b3:	4c 39 f8             	cmp    rax,r15
    28b6:	0f 82 a1 19 00 00    	jb     425d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x223d>
    28bc:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    28c1:	49 8d 0c 17          	lea    rcx,[r15+rdx*1]
    28c5:	4d 39 f3             	cmp    r11,r14
    28c8:	0f 84 22 06 00 00    	je     2ef0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xed0>
    28ce:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    28d3:	48 39 c8             	cmp    rax,rcx
    28d6:	0f 82 c4 03 00 00    	jb     2ca0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc80>
    28dc:	49 8d 04 13          	lea    rax,[r11+rdx*1]
    28e0:	49 83 ff 01          	cmp    r15,0x1
    28e4:	0f 84 26 08 00 00    	je     3110 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10f0>
    28ea:	44 89 ff             	mov    edi,r15d
    28ed:	45 85 ff             	test   r15d,r15d
    28f0:	74 19                	je     290b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8eb>
    28f2:	31 d2                	xor    edx,edx
    28f4:	89 d6                	mov    esi,edx
    28f6:	83 c2 01             	add    edx,0x1
    28f9:	45 0f b6 0c 32       	movzx  r9d,BYTE PTR [r10+rsi*1]
    28fe:	44 88 0c 30          	mov    BYTE PTR [rax+rsi*1],r9b
    2902:	39 fa                	cmp    edx,edi
    2904:	72 ee                	jb     28f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8d4>
    2906:	4c 8b 5c 24 50       	mov    r11,QWORD PTR [rsp+0x50]
    290b:	4d 89 d9             	mov    r9,r11
    290e:	66 90                	xchg   ax,ax
    2910:	41 c6 04 09 00       	mov    BYTE PTR [r9+rcx*1],0x0
    2915:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    291a:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
    291f:	4c 39 ef             	cmp    rdi,r13
    2922:	74 19                	je     293d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x91d>
    2924:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    292b:	00 
    292c:	44 89 04 24          	mov    DWORD PTR [rsp],r8d
    2930:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2934:	e8 47 e7 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2939:	44 8b 04 24          	mov    r8d,DWORD PTR [rsp]
    293d:	41 83 c0 01          	add    r8d,0x1
    2941:	66 44 39 85 22 27 00 	cmp    WORD PTR [rbp+0x2722],r8w
    2948:	00 
    2949:	0f 83 11 ff ff ff    	jae    2860 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x840>
    294f:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2956:	ff ff 7f 
    2959:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    295e:	48 39 c2             	cmp    rdx,rax
    2961:	0f 84 af 19 00 00    	je     4316 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22f6>
    2967:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    296c:	4c 8d 42 01          	lea    r8,[rdx+0x1]
    2970:	4c 39 f1             	cmp    rcx,r14
    2973:	0f 84 93 14 00 00    	je     3e0c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1dec>
    2979:	4c 8b 7c 24 60       	mov    r15,QWORD PTR [rsp+0x60]
    297e:	4d 39 c7             	cmp    r15,r8
    2981:	0f 82 2d 12 00 00    	jb     3bb4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b94>
    2987:	c6 04 11 29          	mov    BYTE PTR [rcx+rdx*1],0x29
    298b:	4c 8b 7c 24 50       	mov    r15,QWORD PTR [rsp+0x50]
    2990:	43 c6 04 07 00       	mov    BYTE PTR [r15+r8*1],0x0
    2995:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
    299a:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    299f:	4c 39 f0             	cmp    rax,r14
    29a2:	0f 84 be 14 00 00    	je     3e66 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e46>
    29a8:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    29ad:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    29b2:	4c 89 44 24 78       	mov    QWORD PTR [rsp+0x78],r8
    29b7:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
    29be:	00 
    29bf:	e9 04 f7 ff ff       	jmp    20c8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa8>
    29c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    29c8:	48 39 c8             	cmp    rax,rcx
    29cb:	0f 82 02 1b 00 00    	jb     44d3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24b3>
    29d1:	4b 8d 14 36          	lea    rdx,[r14+r14*1]
    29d5:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    29d9:	48 39 d1             	cmp    rcx,rdx
    29dc:	0f 83 ce 13 00 00    	jae    3db0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d90>
    29e2:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    29e6:	48 39 d0             	cmp    rax,rdx
    29e9:	73 0e                	jae    29f9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    29eb:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    29f2:	ff ff 7f 
    29f5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    29f9:	4c 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],r9
    29fe:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    2a03:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    2a08:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
    2a0d:	e8 5e e6 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2a12:	4d 85 ff             	test   r15,r15
    2a15:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    2a1a:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    2a1f:	49 89 c6             	mov    r14,rax
    2a22:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    2a27:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    2a2c:	0f 85 6e 0f 00 00    	jne    39a0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1980>
    2a32:	4d 85 db             	test   r11,r11
    2a35:	74 2c                	je     2a63 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    2a37:	48 89 c7             	mov    rdi,rax
    2a3a:	49 83 f8 01          	cmp    r8,0x1
    2a3e:	0f 84 9c 16 00 00    	je     40e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x20c0>
    2a44:	4c 89 c2             	mov    rdx,r8
    2a47:	4c 89 de             	mov    rsi,r11
    2a4a:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    2a4f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2a54:	e8 07 e6 ff ff       	call   1060 <memcpy@plt>
    2a59:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    2a5e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2a63:	4d 39 cc             	cmp    r12,r9
    2a66:	74 1a                	je     2a82 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    2a68:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    2a6c:	4c 89 cf             	mov    rdi,r9
    2a6f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2a74:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2a78:	e8 03 e6 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2a7d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2a82:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2a86:	4c 89 33             	mov    QWORD PTR [rbx],r14
    2a89:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    2a8d:	e9 99 f6 ff ff       	jmp    212b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10b>
    2a92:	49 83 fd 0f          	cmp    r13,0xf
    2a96:	0f 86 6a fc ff ff    	jbe    2706 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x6e6>
    2a9c:	4c 39 e8             	cmp    rax,r13
    2a9f:	0f 82 c0 19 00 00    	jb     4465 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2445>
    2aa5:	49 83 fd 1d          	cmp    r13,0x1d
    2aa9:	0f 87 ec 14 00 00    	ja     3f9b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f7b>
    2aaf:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    2ab6:	00 
    2ab7:	bf 1f 00 00 00       	mov    edi,0x1f
    2abc:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
    2ac1:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    2ac6:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    2acb:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    2ad0:	e8 9b e5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2ad5:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    2ada:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    2adf:	49 89 c7             	mov    r15,rax
    2ae2:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    2ae7:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
    2aec:	4d 85 c9             	test   r9,r9
    2aef:	0f 95 c0             	setne  al
    2af2:	48 85 d2             	test   rdx,rdx
    2af5:	0f 85 78 11 00 00    	jne    3c73 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c53>
    2afb:	4d 85 ed             	test   r13,r13
    2afe:	74 26                	je     2b26 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    2b00:	84 c0                	test   al,al
    2b02:	74 22                	je     2b26 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    2b04:	4c 89 ff             	mov    rdi,r15
    2b07:	48 83 f9 01          	cmp    rcx,0x1
    2b0b:	0f 84 34 16 00 00    	je     4145 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2125>
    2b11:	48 89 ca             	mov    rdx,rcx
    2b14:	4c 89 ce             	mov    rsi,r9
    2b17:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    2b1c:	e8 3f e5 ff ff       	call   1060 <memcpy@plt>
    2b21:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    2b26:	4d 39 f0             	cmp    r8,r14
    2b29:	74 11                	je     2b3c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    2b2b:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2b30:	4c 89 c7             	mov    rdi,r8
    2b33:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2b37:	e8 44 e5 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2b3c:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2b40:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    2b45:	4d 89 f8             	mov    r8,r15
    2b48:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    2b4d:	e9 de fb ff ff       	jmp    2730 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    2b52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2b58:	83 e8 01             	sub    eax,0x1
    2b5b:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    2b60:	89 c2                	mov    edx,eax
    2b62:	83 f8 09             	cmp    eax,0x9
    2b65:	0f 8e 5a 14 00 00    	jle    3fc5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fa5>
    2b6b:	83 f8 63             	cmp    eax,0x63
    2b6e:	0f 8e 83 02 00 00    	jle    2df7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xdd7>
    2b74:	66 0f 6f 05 04 42 00 	movdqa xmm0,XMMWORD PTR [rip+0x4204]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2b7b:	00 
    2b7c:	89 c0                	mov    eax,eax
    2b7e:	66 0f 6f 0d da 41 00 	movdqa xmm1,XMMWORD PTR [rip+0x41da]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2b85:	00 
    2b86:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
    2b8d:	00 
    2b8e:	48 69 c0 1f 85 eb 51 	imul   rax,rax,0x51eb851f
    2b95:	66 0f 6f 15 d3 41 00 	movdqa xmm2,XMMWORD PTR [rip+0x41d3]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2b9c:	00 
    2b9d:	41 bf 03 00 00 00    	mov    r15d,0x3
    2ba3:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2baa:	00 
    2bab:	66 0f 6f 05 dd 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41dd]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2bb2:	00 
    2bb3:	0f 29 8c 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm1
    2bba:	00 
    2bbb:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2bc2:	00 
    2bc3:	66 0f 6f 05 d5 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41d5]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2bca:	00 
    2bcb:	48 c1 e8 25          	shr    rax,0x25
    2bcf:	6b f0 64             	imul   esi,eax,0x64
    2bd2:	0f 29 94 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm2
    2bd9:	00 
    2bda:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2be1:	00 
    2be2:	66 0f 6f 05 c6 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41c6]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2be9:	00 
    2bea:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2bf1:	00 
    2bf2:	66 0f 6f 05 c6 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41c6]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2bf9:	00 
    2bfa:	29 f2                	sub    edx,esi
    2bfc:	89 d1                	mov    ecx,edx
    2bfe:	89 c2                	mov    edx,eax
    2c00:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2c07:	00 
    2c08:	66 0f 6f 05 c0 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41c0]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2c0f:	00 
    2c10:	8d 44 09 01          	lea    eax,[rcx+rcx*1+0x1]
    2c14:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2c1b:	00 
    2c1c:	66 0f 6f 05 bc 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41bc]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2c23:	00 
    2c24:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2c2b:	00 
    2c2c:	66 0f 6f 05 bc 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41bc]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2c33:	00 
    2c34:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2c3b:	00 
    2c3c:	66 0f 6f 05 bc 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41bc]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    2c43:	00 
    2c44:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2c4b:	00 
    2c4c:	66 0f 6f 05 bc 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41bc]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    2c53:	00 
    2c54:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2c5b:	00 
    2c5c:	66 0f 6f 05 bc 41 00 	movdqa xmm0,XMMWORD PTR [rip+0x41bc]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    2c63:	00 
    2c64:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2c6b:	00 
    2c6c:	0f b7 84 04 8f 00 00 	movzx  eax,WORD PTR [rsp+rax*1+0x8f]
    2c73:	00 
    2c74:	66 89 84 24 81 00 00 	mov    WORD PTR [rsp+0x81],ax
    2c7b:	00 
    2c7c:	83 c2 30             	add    edx,0x30
    2c7f:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
    2c84:	88 94 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],dl
    2c8b:	42 c6 04 38 00       	mov    BYTE PTR [rax+r15*1],0x0
    2c90:	4c 8b 54 24 70       	mov    r10,QWORD PTR [rsp+0x70]
    2c95:	4c 89 7c 24 78       	mov    QWORD PTR [rsp+0x78],r15
    2c9a:	e9 02 fc ff ff       	jmp    28a1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x881>
    2c9f:	90                   	nop
    2ca0:	48 bf fe ff ff ff ff 	movabs rdi,0x7ffffffffffffffe
    2ca7:	ff ff 7f 
    2caa:	48 39 cf             	cmp    rdi,rcx
    2cad:	0f 82 6a 17 00 00    	jb     441d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23fd>
    2cb3:	48 01 c0             	add    rax,rax
    2cb6:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    2cba:	48 39 c1             	cmp    rcx,rax
    2cbd:	0f 83 f5 06 00 00    	jae    33b8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1398>
    2cc3:	48 89 c7             	mov    rdi,rax
    2cc6:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
    2ccb:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2cd2:	ff ff 7f 
    2cd5:	48 39 f8             	cmp    rax,rdi
    2cd8:	0f 83 32 13 00 00    	jae    4010 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ff0>
    2cde:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    2ce5:	ff ff 7f 
    2ce8:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    2cec:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2cf1:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    2cf6:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    2cfb:	e8 70 e3 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2d00:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    2d04:	49 89 c1             	mov    r9,rax
    2d07:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    2d0c:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    2d13:	ff ff 7f 
    2d16:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2d1b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    2d20:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    2d24:	4d 85 d2             	test   r10,r10
    2d27:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    2d2c:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    2d31:	4c 89 de             	mov    rsi,r11
    2d34:	4c 89 cf             	mov    rdi,r9
    2d37:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2d3c:	44 89 44 24 30       	mov    DWORD PTR [rsp+0x30],r8d
    2d41:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    2d46:	4c 89 54 24 48       	mov    QWORD PTR [rsp+0x48],r10
    2d4b:	48 89 54 24 40       	mov    QWORD PTR [rsp+0x40],rdx
    2d50:	e8 0b e3 ff ff       	call   1060 <memcpy@plt>
    2d55:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
    2d5a:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    2d5f:	44 8b 44 24 30       	mov    r8d,DWORD PTR [rsp+0x30]
    2d64:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2d69:	49 89 c1             	mov    r9,rax
    2d6c:	74 42                	je     2db0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    2d6e:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    2d73:	49 83 ff 01          	cmp    r15,0x1
    2d77:	4c 8b 54 24 48       	mov    r10,QWORD PTR [rsp+0x48]
    2d7c:	48 8d 04 10          	lea    rax,[rax+rdx*1]
    2d80:	0f 84 0a 12 00 00    	je     3f90 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f70>
    2d86:	44 89 ff             	mov    edi,r15d
    2d89:	45 85 ff             	test   r15d,r15d
    2d8c:	74 22                	je     2db0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    2d8e:	31 d2                	xor    edx,edx
    2d90:	89 d6                	mov    esi,edx
    2d92:	83 c2 01             	add    edx,0x1
    2d95:	45 0f b6 3c 32       	movzx  r15d,BYTE PTR [r10+rsi*1]
    2d9a:	44 88 3c 30          	mov    BYTE PTR [rax+rsi*1],r15b
    2d9e:	39 fa                	cmp    edx,edi
    2da0:	72 ee                	jb     2d90 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd70>
    2da2:	0f 1f 00             	nop    DWORD PTR [rax]
    2da5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    2dac:	00 00 00 00 
    2db0:	4d 39 f3             	cmp    r11,r14
    2db3:	74 2f                	je     2de4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xdc4>
    2db5:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    2dba:	4c 89 df             	mov    rdi,r11
    2dbd:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    2dc2:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    2dc7:	48 8d 70 01          	lea    rsi,[rax+0x1]
    2dcb:	44 89 44 24 20       	mov    DWORD PTR [rsp+0x20],r8d
    2dd0:	e8 ab e2 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    2dd5:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    2dda:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    2ddf:	44 8b 44 24 20       	mov    r8d,DWORD PTR [rsp+0x20]
    2de4:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    2de8:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    2ded:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    2df2:	e9 19 fb ff ff       	jmp    2910 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8f0>
    2df7:	66 0f 6f 05 81 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f81]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2dfe:	00 
    2dff:	01 c0                	add    eax,eax
    2e01:	66 0f 6f 1d 57 3f 00 	movdqa xmm3,XMMWORD PTR [rip+0x3f57]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2e08:	00 
    2e09:	41 bf 02 00 00 00    	mov    r15d,0x2
    2e0f:	66 0f 6f 25 59 3f 00 	movdqa xmm4,XMMWORD PTR [rip+0x3f59]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2e16:	00 
    2e17:	8d 50 01             	lea    edx,[rax+0x1]
    2e1a:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2e21:	00 
    2e22:	66 0f 6f 05 66 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f66]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2e29:	00 
    2e2a:	0f 29 9c 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm3
    2e31:	00 
    2e32:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2e39:	00 
    2e3a:	66 0f 6f 05 5e 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f5e]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2e41:	00 
    2e42:	0f 29 a4 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm4
    2e49:	00 
    2e4a:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2e51:	00 
    2e52:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2e59:	00 
    2e5a:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2e61:	00 
    2e62:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2e69:	00 
    2e6a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2e71:	00 
    2e72:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2e79:	00 
    2e7a:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2e81:	00 
    2e82:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2e89:	00 
    2e8a:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2e91:	00 
    2e92:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2e99:	00 
    2e9a:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    2ea1:	00 
    2ea2:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    2ea9:	00 
    2eaa:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    2eb1:	00 
    2eb2:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    2eb9:	00 
    2eba:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    2ec1:	00 
    2ec2:	66 0f 6f 05 56 3f 00 	movdqa xmm0,XMMWORD PTR [rip+0x3f56]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    2ec9:	00 
    2eca:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    2ed1:	00 
    2ed2:	0f b6 94 14 90 00 00 	movzx  edx,BYTE PTR [rsp+rdx*1+0x90]
    2ed9:	00 
    2eda:	88 94 24 81 00 00 00 	mov    BYTE PTR [rsp+0x81],dl
    2ee1:	0f b6 94 04 90 00 00 	movzx  edx,BYTE PTR [rsp+rax*1+0x90]
    2ee8:	00 
    2ee9:	e9 91 fd ff ff       	jmp    2c7f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc5f>
    2eee:	66 90                	xchg   ax,ax
    2ef0:	48 83 f9 0f          	cmp    rcx,0xf
    2ef4:	0f 86 e2 f9 ff ff    	jbe    28dc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8bc>
    2efa:	bf 1f 00 00 00       	mov    edi,0x1f
    2eff:	4c 89 5c 24 40       	mov    QWORD PTR [rsp+0x40],r11
    2f04:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    2f08:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    2f0d:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    2f12:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    2f17:	e8 54 e1 ff ff       	call   1070 <operator new(unsigned long)@plt>
    2f1c:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    2f20:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    2f25:	49 89 c1             	mov    r9,rax
    2f28:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    2f2f:	00 
    2f30:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    2f35:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    2f3a:	4d 85 d2             	test   r10,r10
    2f3d:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    2f42:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    2f47:	e9 e5 fd ff ff       	jmp    2d31 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    2f4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2f50:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    2f55:	66 0f 6f 05 03 3e 00 	movdqa xmm0,XMMWORD PTR [rip+0x3e03]        # 6d60 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x60>
    2f5c:	00 
    2f5d:	41 b8 02 00 00 00    	mov    r8d,0x2
    2f63:	48 8d 94 24 82 00 00 	lea    rdx,[rsp+0x82]
    2f6a:	00 
    2f6b:	b9 02 00 00 00       	mov    ecx,0x2
    2f70:	0f 29 84 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm0
    2f77:	00 
    2f78:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6d70 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x70>
    2f7f:	00 
    2f80:	0f 29 84 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm0
    2f87:	00 
    2f88:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6d80 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x80>
    2f8f:	00 
    2f90:	0f 29 84 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm0
    2f97:	00 
    2f98:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6d90 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x90>
    2f9f:	00 
    2fa0:	0f 29 84 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm0
    2fa7:	00 
    2fa8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6da0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xa0>
    2faf:	00 
    2fb0:	0f 29 84 24 d0 00 00 	movaps XMMWORD PTR [rsp+0xd0],xmm0
    2fb7:	00 
    2fb8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6db0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xb0>
    2fbf:	00 
    2fc0:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
    2fc7:	00 
    2fc8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6dc0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xc0>
    2fcf:	00 
    2fd0:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
    2fd7:	00 
    2fd8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6dd0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xd0>
    2fdf:	00 
    2fe0:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
    2fe7:	00 
    2fe8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6de0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xe0>
    2fef:	00 
    2ff0:	0f 29 84 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm0
    2ff7:	00 
    2ff8:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6df0 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0xf0>
    2fff:	00 
    3000:	0f 29 84 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm0
    3007:	00 
    3008:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6e00 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x100>
    300f:	00 
    3010:	0f 29 84 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm0
    3017:	00 
    3018:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6e10 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x110>
    301f:	00 
    3020:	0f 29 84 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm0
    3027:	00 
    3028:	66 0f 6f 05 f0 3d 00 	movdqa xmm0,XMMWORD PTR [rip+0x3df0]        # 6e20 <typeinfo name for turing_learning::utm::Program<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >+0x120>
    302f:	00 
    3030:	0f 11 84 24 49 01 00 	movups XMMWORD PTR [rsp+0x149],xmm0
    3037:	00 
    3038:	01 c0                	add    eax,eax
    303a:	8d 70 01             	lea    esi,[rax+0x1]
    303d:	0f b6 84 04 90 00 00 	movzx  eax,BYTE PTR [rsp+rax*1+0x90]
    3044:	00 
    3045:	0f b6 b4 34 90 00 00 	movzx  esi,BYTE PTR [rsp+rsi*1+0x90]
    304c:	00 
    304d:	40 88 b4 24 81 00 00 	mov    BYTE PTR [rsp+0x81],sil
    3054:	00 
    3055:	e9 01 f4 ff ff       	jmp    245b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x43b>
    305a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3060:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    3065:	8d 70 ff             	lea    esi,[rax-0x1]
    3068:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    306d:	e8 0e ea ff ff       	call   1a80 <std::__cxx11::to_string(int)>
    3072:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    3077:	4c 8b 44 24 78       	mov    r8,QWORD PTR [rsp+0x78]
    307c:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    3083:	ff ff 7f 
    3086:	48 89 c1             	mov    rcx,rax
    3089:	4c 8b 4c 24 70       	mov    r9,QWORD PTR [rsp+0x70]
    308e:	48 29 d1             	sub    rcx,rdx
    3091:	4c 39 c1             	cmp    rcx,r8
    3094:	0f 82 59 12 00 00    	jb     42f3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x22d3>
    309a:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    309f:	4d 8d 3c 10          	lea    r15,[r8+rdx*1]
    30a3:	4c 39 f1             	cmp    rcx,r14
    30a6:	0f 84 31 0d 00 00    	je     3ddd <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1dbd>
    30ac:	48 8b 6c 24 60       	mov    rbp,QWORD PTR [rsp+0x60]
    30b1:	4c 39 fd             	cmp    rbp,r15
    30b4:	0f 82 03 0a 00 00    	jb     3abd <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a9d>
    30ba:	4d 85 c0             	test   r8,r8
    30bd:	74 21                	je     30e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    30bf:	48 8d 3c 11          	lea    rdi,[rcx+rdx*1]
    30c3:	49 83 f8 01          	cmp    r8,0x1
    30c7:	0f 84 e8 0e 00 00    	je     3fb5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f95>
    30cd:	4c 89 c2             	mov    rdx,r8
    30d0:	4c 89 ce             	mov    rsi,r9
    30d3:	e8 88 df ff ff       	call   1060 <memcpy@plt>
    30d8:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    30dd:	0f 1f 00             	nop    DWORD PTR [rax]
    30e0:	42 c6 04 39 00       	mov    BYTE PTR [rcx+r15*1],0x0
    30e5:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    30ea:	4c 89 7c 24 58       	mov    QWORD PTR [rsp+0x58],r15
    30ef:	4c 39 ef             	cmp    rdi,r13
    30f2:	0f 84 9e f4 ff ff    	je     2596 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x576>
    30f8:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
    30ff:	00 
    3100:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3104:	e8 77 df ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3109:	e9 83 f4 ff ff       	jmp    2591 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x571>
    310e:	66 90                	xchg   ax,ax
    3110:	41 0f b6 12          	movzx  edx,BYTE PTR [r10]
    3114:	88 10                	mov    BYTE PTR [rax],dl
    3116:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    311b:	e9 f0 f7 ff ff       	jmp    2910 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x8f0>
    3120:	4d 01 f6             	add    r14,r14
    3123:	4d 39 f1             	cmp    r9,r14
    3126:	0f 83 bc 0b 00 00    	jae    3ce8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1cc8>
    312c:	49 8d 7e 01          	lea    rdi,[r14+0x1]
    3130:	4c 39 f0             	cmp    rax,r14
    3133:	73 0d                	jae    3142 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    3135:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    313c:	ff ff 7f 
    313f:	49 89 c6             	mov    r14,rax
    3142:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3147:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    314b:	e8 20 df ff ff       	call   1070 <operator new(unsigned long)@plt>
    3150:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
    3154:	4c 89 fe             	mov    rsi,r15
    3157:	48 89 c7             	mov    rdi,rax
    315a:	e8 01 df ff ff       	call   1060 <memcpy@plt>
    315f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3163:	4d 39 fc             	cmp    r12,r15
    3166:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    316b:	49 89 c0             	mov    r8,rax
    316e:	c6 04 08 0a          	mov    BYTE PTR [rax+rcx*1],0xa
    3172:	0f 84 cd 0d 00 00    	je     3f45 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f25>
    3178:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    317d:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3181:	4c 89 ff             	mov    rdi,r15
    3184:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3189:	48 8d 70 01          	lea    rsi,[rax+0x1]
    318d:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3191:	e8 ea de ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3196:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    319b:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    31a0:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    31a4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    31a8:	4c 89 03             	mov    QWORD PTR [rbx],r8
    31ab:	43 c6 04 08 00       	mov    BYTE PTR [r8+r9*1],0x0
    31b0:	e9 db ef ff ff       	jmp    2190 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x170>
    31b5:	0f 1f 00             	nop    DWORD PTR [rax]
    31b8:	4c 8d 14 00          	lea    r10,[rax+rax*1]
    31bc:	4d 39 d6             	cmp    r14,r10
    31bf:	0f 83 bb 0b 00 00    	jae    3d80 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d60>
    31c5:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    31cc:	ff ff 7f 
    31cf:	4c 39 d0             	cmp    rax,r10
    31d2:	0f 83 97 0f 00 00    	jae    416f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x214f>
    31d8:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    31df:	ff ff 7f 
    31e2:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    31e7:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    31ec:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    31f0:	e8 7b de ff ff       	call   1070 <operator new(unsigned long)@plt>
    31f5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    31f9:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    31fe:	49 89 c7             	mov    r15,rax
    3201:	49 ba fe ff ff ff ff 	movabs r10,0x7ffffffffffffffe
    3208:	ff ff 7f 
    320b:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3210:	4c 89 ca             	mov    rdx,r9
    3213:	4c 89 c6             	mov    rsi,r8
    3216:	4c 89 ff             	mov    rdi,r15
    3219:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
    321e:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    3223:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3228:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    322c:	e8 2f de ff ff       	call   1060 <memcpy@plt>
    3231:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
    3235:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    323a:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    323f:	4c 8b 54 24 18       	mov    r10,QWORD PTR [rsp+0x18]
    3244:	4d 39 c4             	cmp    r12,r8
    3247:	43 c7 04 0f 68 65 61 	mov    DWORD PTR [r15+r9*1],0x64616568
    324e:	64 
    324f:	74 22                	je     3273 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1253>
    3251:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3255:	4c 89 c7             	mov    rdi,r8
    3258:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    325d:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3261:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3265:	e8 16 de ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    326a:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    326f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3273:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    3276:	4c 89 53 10          	mov    QWORD PTR [rbx+0x10],r10
    327a:	e9 54 ef ff ff       	jmp    21d3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3>
    327f:	90                   	nop
    3280:	4b 8d 14 3f          	lea    rdx,[r15+r15*1]
    3284:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    3288:	49 39 d0             	cmp    r8,rdx
    328b:	0f 83 2f 0b 00 00    	jae    3dc0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1da0>
    3291:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    3295:	48 39 d0             	cmp    rax,rdx
    3298:	73 0e                	jae    32a8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    329a:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    32a1:	ff ff 7f 
    32a4:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    32a8:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    32ad:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    32b2:	e8 b9 dd ff ff       	call   1070 <operator new(unsigned long)@plt>
    32b7:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    32bc:	4c 89 f2             	mov    rdx,r14
    32bf:	48 89 c7             	mov    rdi,rax
    32c2:	49 89 c7             	mov    r15,rax
    32c5:	e8 96 dd ff ff       	call   1060 <memcpy@plt>
    32ca:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    32cf:	43 c6 04 37 30       	mov    BYTE PTR [r15+r14*1],0x30
    32d4:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    32d9:	4d 39 cc             	cmp    r12,r9
    32dc:	74 1a                	je     32f8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x12d8>
    32de:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    32e2:	4c 89 cf             	mov    rdi,r9
    32e5:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    32ea:	48 8d 70 01          	lea    rsi,[rax+0x1]
    32ee:	e8 8d dd ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    32f3:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    32f8:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    32fc:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    32ff:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    3303:	e9 29 ef ff ff       	jmp    2231 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x211>
    3308:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    330f:	00 
    3310:	4b 8d 04 36          	lea    rax,[r14+r14*1]
    3314:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3318:	49 39 c7             	cmp    r15,rax
    331b:	0f 83 af 0a 00 00    	jae    3dd0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1db0>
    3321:	48 89 c2             	mov    rdx,rax
    3324:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    332b:	ff ff 7f 
    332e:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    3332:	48 39 d0             	cmp    rax,rdx
    3335:	73 0e                	jae    3345 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    3337:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    333e:	ff ff 7f 
    3341:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3345:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    334a:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    334f:	e8 1c dd ff ff       	call   1070 <operator new(unsigned long)@plt>
    3354:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3359:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    335e:	48 89 c7             	mov    rdi,rax
    3361:	49 89 c6             	mov    r14,rax
    3364:	4c 89 c2             	mov    rdx,r8
    3367:	48 89 ce             	mov    rsi,rcx
    336a:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    336f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3374:	e8 e7 dc ff ff       	call   1060 <memcpy@plt>
    3379:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    337e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3383:	bf 3a 20 00 00       	mov    edi,0x203a
    3388:	66 43 89 3c 06       	mov    WORD PTR [r14+r8*1],di
    338d:	49 39 cc             	cmp    r12,rcx
    3390:	74 10                	je     33a2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1382>
    3392:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    3396:	48 89 cf             	mov    rdi,rcx
    3399:	48 8d 70 01          	lea    rsi,[rax+0x1]
    339d:	e8 de dc ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    33a2:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    33a6:	4c 89 33             	mov    QWORD PTR [rbx],r14
    33a9:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    33ad:	e9 e9 ee ff ff       	jmp    229b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x27b>
    33b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    33b8:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    33bc:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
    33c1:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    33c6:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    33cb:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    33d0:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    33d4:	e8 97 dc ff ff       	call   1070 <operator new(unsigned long)@plt>
    33d9:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    33de:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    33e2:	49 89 c1             	mov    r9,rax
    33e5:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    33ea:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    33ef:	4d 85 d2             	test   r10,r10
    33f2:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
    33f7:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    33fc:	e9 30 f9 ff ff       	jmp    2d31 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    3401:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3408:	4c 39 f8             	cmp    rax,r15
    340b:	0f 82 7c 10 00 00    	jb     448d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x246d>
    3411:	48 8d 3c 36          	lea    rdi,[rsi+rsi*1]
    3415:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3419:	49 39 ff             	cmp    r15,rdi
    341c:	0f 83 06 0a 00 00    	jae    3e28 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e08>
    3422:	48 39 f8             	cmp    rax,rdi
    3425:	0f 83 7b 0d 00 00    	jae    41a6 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2186>
    342b:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3432:	ff ff 7f 
    3435:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3439:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    343e:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3443:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3448:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    344d:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3452:	e8 19 dc ff ff       	call   1070 <operator new(unsigned long)@plt>
    3457:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    345c:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3461:	49 89 c1             	mov    r9,rax
    3464:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    3469:	44 8b 44 24 10       	mov    r8d,DWORD PTR [rsp+0x10]
    346e:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3473:	4c 89 de             	mov    rsi,r11
    3476:	4c 89 cf             	mov    rdi,r9
    3479:	4c 89 54 24 28       	mov    QWORD PTR [rsp+0x28],r10
    347e:	4c 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],r11
    3483:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3488:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    348d:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3492:	e8 c9 db ff ff       	call   1060 <memcpy@plt>
    3497:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
    349c:	4c 8b 5c 24 20       	mov    r11,QWORD PTR [rsp+0x20]
    34a1:	49 89 c1             	mov    r9,rax
    34a4:	4d 85 d2             	test   r10,r10
    34a7:	74 33                	je     34dc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    34a9:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    34ae:	48 01 c2             	add    rdx,rax
    34b1:	83 7c 24 10 01       	cmp    DWORD PTR [rsp+0x10],0x1
    34b6:	0f 84 14 0b 00 00    	je     3fd0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fb0>
    34bc:	8b 4c 24 18          	mov    ecx,DWORD PTR [rsp+0x18]
    34c0:	8b 74 24 18          	mov    esi,DWORD PTR [rsp+0x18]
    34c4:	85 c9                	test   ecx,ecx
    34c6:	74 14                	je     34dc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    34c8:	31 c0                	xor    eax,eax
    34ca:	89 c1                	mov    ecx,eax
    34cc:	83 c0 01             	add    eax,0x1
    34cf:	41 0f b6 3c 0a       	movzx  edi,BYTE PTR [r10+rcx*1]
    34d4:	40 88 3c 0a          	mov    BYTE PTR [rdx+rcx*1],dil
    34d8:	39 f0                	cmp    eax,esi
    34da:	72 ee                	jb     34ca <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14aa>
    34dc:	4d 39 f3             	cmp    r11,r14
    34df:	74 1b                	je     34fc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14dc>
    34e1:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    34e6:	4c 89 df             	mov    rdi,r11
    34e9:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    34ee:	48 8d 70 01          	lea    rsi,[rax+0x1]
    34f2:	e8 89 db ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    34f7:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    34fc:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3500:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    3505:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    350a:	e9 d1 ef ff ff       	jmp    24e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4c0>
    350f:	90                   	nop
    3510:	48 01 c0             	add    rax,rax
    3513:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3517:	49 39 c0             	cmp    r8,rax
    351a:	0f 83 6e 09 00 00    	jae    3e8e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e6e>
    3520:	48 89 c2             	mov    rdx,rax
    3523:	48 b8 fe ff ff ff ff 	movabs rax,0x7ffffffffffffffe
    352a:	ff ff 7f 
    352d:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    3531:	48 39 d0             	cmp    rax,rdx
    3534:	73 0e                	jae    3544 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    3536:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    353d:	ff ff 7f 
    3540:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3544:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    3549:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    354e:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    3553:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    3558:	e8 13 db ff ff       	call   1070 <operator new(unsigned long)@plt>
    355d:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    3562:	4c 89 fa             	mov    rdx,r15
    3565:	48 89 c7             	mov    rdi,rax
    3568:	e8 f3 da ff ff       	call   1060 <memcpy@plt>
    356d:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3572:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    3577:	49 89 c1             	mov    r9,rax
    357a:	b8 5d 20 00 00       	mov    eax,0x205d
    357f:	4c 39 f1             	cmp    rcx,r14
    3582:	66 43 89 04 39       	mov    WORD PTR [r9+r15*1],ax
    3587:	43 c6 44 39 02 28    	mov    BYTE PTR [r9+r15*1+0x2],0x28
    358d:	74 25                	je     35b4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1594>
    358f:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3594:	48 89 cf             	mov    rdi,rcx
    3597:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    359c:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    35a1:	48 8d 70 01          	lea    rsi,[rax+0x1]
    35a5:	e8 d6 da ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    35aa:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    35af:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    35b4:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    35b8:	4c 89 4c 24 50       	mov    QWORD PTR [rsp+0x50],r9
    35bd:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    35c2:	e9 8f ef ff ff       	jmp    2556 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x536>
    35c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    35ce:	00 00 
    35d0:	ba 02 00 00 00       	mov    edx,0x2
    35d5:	b9 03 00 00 00       	mov    ecx,0x3
    35da:	41 b8 03 00 00 00    	mov    r8d,0x3
    35e0:	e9 2a ed ff ff       	jmp    230f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2ef>
    35e5:	0f 1f 00             	nop    DWORD PTR [rax]
    35e8:	4d 01 ed             	add    r13,r13
    35eb:	4c 39 ed             	cmp    rbp,r13
    35ee:	0f 83 b7 08 00 00    	jae    3eab <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e8b>
    35f4:	49 8d 7d 01          	lea    rdi,[r13+0x1]
    35f8:	4c 39 e8             	cmp    rax,r13
    35fb:	73 0d                	jae    360a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    35fd:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3604:	ff ff 7f 
    3607:	49 89 c5             	mov    r13,rax
    360a:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    360f:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3613:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    3618:	e8 53 da ff ff       	call   1070 <operator new(unsigned long)@plt>
    361d:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    3621:	4c 89 fa             	mov    rdx,r15
    3624:	48 89 c7             	mov    rdi,rax
    3627:	e8 34 da ff ff       	call   1060 <memcpy@plt>
    362c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3630:	42 c6 04 38 29       	mov    BYTE PTR [rax+r15*1],0x29
    3635:	49 89 c0             	mov    r8,rax
    3638:	4c 39 f1             	cmp    rcx,r14
    363b:	74 19                	je     3656 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1636>
    363d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3641:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3646:	48 89 cf             	mov    rdi,rcx
    3649:	48 8d 70 01          	lea    rsi,[rax+0x1]
    364d:	e8 2e da ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3652:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
    3656:	4c 89 44 24 50       	mov    QWORD PTR [rsp+0x50],r8
    365b:	4c 89 6c 24 60       	mov    QWORD PTR [rsp+0x60],r13
    3660:	41 c6 04 28 00       	mov    BYTE PTR [r8+rbp*1],0x0
    3665:	48 89 6c 24 58       	mov    QWORD PTR [rsp+0x58],rbp
    366a:	e9 72 ef ff ff       	jmp    25e1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5c1>
    366f:	90                   	nop
    3670:	48 39 c8             	cmp    rax,rcx
    3673:	0f 82 a0 0e 00 00    	jb     4519 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24f9>
    3679:	4b 8d 14 3f          	lea    rdx,[r15+r15*1]
    367d:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    3681:	48 39 d1             	cmp    rcx,rdx
    3684:	0f 83 3d 08 00 00    	jae    3ec7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ea7>
    368a:	48 8d 7a 01          	lea    rdi,[rdx+0x1]
    368e:	48 39 d0             	cmp    rax,rdx
    3691:	73 0e                	jae    36a1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3693:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    369a:	ff ff 7f 
    369d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    36a1:	4c 89 54 24 18       	mov    QWORD PTR [rsp+0x18],r10
    36a6:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    36ab:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    36b0:	e8 bb d9 ff ff       	call   1070 <operator new(unsigned long)@plt>
    36b5:	4d 85 ed             	test   r13,r13
    36b8:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    36bd:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    36c2:	49 89 c7             	mov    r15,rax
    36c5:	4c 8b 54 24 18       	mov    r10,QWORD PTR [rsp+0x18]
    36ca:	0f 85 95 03 00 00    	jne    3a65 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a45>
    36d0:	4d 85 c0             	test   r8,r8
    36d3:	74 2c                	je     3701 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    36d5:	48 89 c7             	mov    rdi,rax
    36d8:	48 83 fd 01          	cmp    rbp,0x1
    36dc:	0f 84 4e 0a 00 00    	je     4130 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2110>
    36e2:	48 89 ea             	mov    rdx,rbp
    36e5:	4c 89 c6             	mov    rsi,r8
    36e8:	4c 89 54 24 10       	mov    QWORD PTR [rsp+0x10],r10
    36ed:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    36f2:	e8 69 d9 ff ff       	call   1060 <memcpy@plt>
    36f7:	4c 8b 54 24 10       	mov    r10,QWORD PTR [rsp+0x10]
    36fc:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3701:	4d 39 d4             	cmp    r12,r10
    3704:	74 1a                	je     3720 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    3706:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    370a:	4c 89 d7             	mov    rdi,r10
    370d:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3712:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3716:	e8 65 d9 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    371b:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3720:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3724:	4c 89 3b             	mov    QWORD PTR [rbx],r15
    3727:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    372b:	e9 10 ef ff ff       	jmp    2640 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x620>
    3730:	49 83 f9 10          	cmp    r9,0x10
    3734:	0f 84 7d 07 00 00    	je     3eb7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e97>
    373a:	c6 44 0b 10 0a       	mov    BYTE PTR [rbx+rcx*1+0x10],0xa
    373f:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    3742:	42 c6 04 08 00       	mov    BYTE PTR [rax+r9*1],0x0
    3747:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    374b:	e9 5b ea ff ff       	jmp    21ab <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b>
    3750:	49 83 fe 0f          	cmp    r14,0xf
    3754:	0f 86 6e ea ff ff    	jbe    21c8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1a8>
    375a:	bf 1f 00 00 00       	mov    edi,0x1f
    375f:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3764:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3769:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    376d:	e8 fe d8 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3772:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3777:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    377b:	49 89 c7             	mov    r15,rax
    377e:	41 ba 1e 00 00 00    	mov    r10d,0x1e
    3784:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3789:	e9 82 fa ff ff       	jmp    3210 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    378e:	66 90                	xchg   ax,ax
    3790:	48 83 f9 0f          	cmp    rcx,0xf
    3794:	0f 86 6d e9 ff ff    	jbe    2107 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xe7>
    379a:	48 39 c8             	cmp    rax,rcx
    379d:	0f 82 30 0d 00 00    	jb     44d3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24b3>
    37a3:	48 83 f9 1d          	cmp    rcx,0x1d
    37a7:	0f 87 03 06 00 00    	ja     3db0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1d90>
    37ad:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    37b4:	00 
    37b5:	bf 1f 00 00 00       	mov    edi,0x1f
    37ba:	e9 3a f2 ff ff       	jmp    29f9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    37bf:	90                   	nop
    37c0:	49 83 f8 10          	cmp    r8,0x10
    37c4:	0f 85 5f ea ff ff    	jne    2229 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x209>
    37ca:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    37d1:	00 
    37d2:	bf 1f 00 00 00       	mov    edi,0x1f
    37d7:	e9 cc fa ff ff       	jmp    32a8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    37dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    37e0:	49 83 ff 0f          	cmp    r15,0xf
    37e4:	0f 86 a3 ea ff ff    	jbe    228d <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x26d>
    37ea:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    37f1:	00 
    37f2:	bf 1f 00 00 00       	mov    edi,0x1f
    37f7:	e9 49 fb ff ff       	jmp    3345 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    37fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3800:	4c 39 e8             	cmp    rax,r13
    3803:	0f 82 5c 0c 00 00    	jb     4465 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2445>
    3809:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    380d:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3811:	49 39 fd             	cmp    r13,rdi
    3814:	0f 83 81 07 00 00    	jae    3f9b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f7b>
    381a:	48 39 f8             	cmp    rax,rdi
    381d:	0f 83 a1 09 00 00    	jae    41c4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21a4>
    3823:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    382a:	ff ff 7f 
    382d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3831:	e9 86 f2 ff ff       	jmp    2abc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    3836:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    383d:	00 00 00 
    3840:	48 39 c8             	cmp    rax,rcx
    3843:	0f 82 18 0b 00 00    	jb     4361 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2341>
    3849:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    384d:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3851:	48 39 f9             	cmp    rcx,rdi
    3854:	0f 83 4e 07 00 00    	jae    3fa8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f88>
    385a:	48 39 f8             	cmp    rax,rdi
    385d:	0f 83 87 09 00 00    	jae    41ea <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ca>
    3863:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    386a:	ff ff 7f 
    386d:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3871:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
    3876:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
    387b:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
    3880:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    3885:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    388a:	e8 e1 d7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    388f:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    3894:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    3899:	49 89 c7             	mov    r15,rax
    389c:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    38a1:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
    38a6:	4d 85 d2             	test   r10,r10
    38a9:	4c 8b 44 24 38       	mov    r8,QWORD PTR [rsp+0x38]
    38ae:	0f 95 c0             	setne  al
    38b1:	48 85 d2             	test   rdx,rdx
    38b4:	0f 85 3a 04 00 00    	jne    3cf4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1cd4>
    38ba:	48 85 c9             	test   rcx,rcx
    38bd:	74 30                	je     38ef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    38bf:	84 c0                	test   al,al
    38c1:	74 2c                	je     38ef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    38c3:	4c 89 ff             	mov    rdi,r15
    38c6:	49 83 f9 01          	cmp    r9,0x1
    38ca:	0f 84 8a 08 00 00    	je     415a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x213a>
    38d0:	4c 89 ca             	mov    rdx,r9
    38d3:	4c 89 d6             	mov    rsi,r10
    38d6:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    38db:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    38e0:	e8 7b d7 ff ff       	call   1060 <memcpy@plt>
    38e5:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    38ea:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    38ef:	4d 39 f0             	cmp    r8,r14
    38f2:	74 1b                	je     390f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    38f4:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    38f9:	4c 89 c7             	mov    rdi,r8
    38fc:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3901:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3905:	e8 76 d7 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    390a:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    390f:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3913:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    3918:	4d 89 f8             	mov    r8,r15
    391b:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3920:	e9 db ee ff ff       	jmp    2800 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    3925:	0f 1f 00             	nop    DWORD PTR [rax]
    3928:	49 83 ff 0f          	cmp    r15,0xf
    392c:	0f 86 7b eb ff ff    	jbe    24ad <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x48d>
    3932:	bf 1f 00 00 00       	mov    edi,0x1f
    3937:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    393c:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3941:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3946:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    394b:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3950:	e8 1b d7 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3955:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    395c:	00 
    395d:	49 89 c1             	mov    r9,rax
    3960:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3965:	44 8b 44 24 10       	mov    r8d,DWORD PTR [rsp+0x10]
    396a:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    396f:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3974:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    3979:	e9 f5 fa ff ff       	jmp    3473 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1453>
    397e:	66 90                	xchg   ax,ax
    3980:	49 83 f8 0f          	cmp    r8,0xf
    3984:	0f 86 b7 eb ff ff    	jbe    2541 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x521>
    398a:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3991:	00 
    3992:	bf 1f 00 00 00       	mov    edi,0x1f
    3997:	e9 a8 fb ff ff       	jmp    3544 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    399c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    39a0:	49 83 ff 01          	cmp    r15,0x1
    39a4:	0f 84 b0 05 00 00    	je     3f5a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f3a>
    39aa:	4c 89 ce             	mov    rsi,r9
    39ad:	4c 89 fa             	mov    rdx,r15
    39b0:	48 89 c7             	mov    rdi,rax
    39b3:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    39b8:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
    39bd:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    39c2:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    39c7:	e8 94 d6 ff ff       	call   1060 <memcpy@plt>
    39cc:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
    39d1:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    39d6:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    39db:	4d 85 db             	test   r11,r11
    39de:	0f 84 7f f0 ff ff    	je     2a63 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    39e4:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    39e9:	4b 8d 3c 3e          	lea    rdi,[r14+r15*1]
    39ed:	49 83 f8 01          	cmp    r8,0x1
    39f1:	0f 85 4d f0 ff ff    	jne    2a44 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa24>
    39f7:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    39fb:	88 07                	mov    BYTE PTR [rdi],al
    39fd:	e9 61 f0 ff ff       	jmp    2a63 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    3a02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3a08:	41 bd 1e 00 00 00    	mov    r13d,0x1e
    3a0e:	bf 1f 00 00 00       	mov    edi,0x1f
    3a13:	48 83 fd 10          	cmp    rbp,0x10
    3a17:	0f 85 ac eb ff ff    	jne    25c9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5a9>
    3a1d:	e9 e8 fb ff ff       	jmp    360a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    3a22:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3a28:	48 83 f9 0f          	cmp    rcx,0xf
    3a2c:	0f 86 ea eb ff ff    	jbe    261c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x5fc>
    3a32:	48 39 c8             	cmp    rax,rcx
    3a35:	0f 82 de 0a 00 00    	jb     4519 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x24f9>
    3a3b:	48 83 f9 1d          	cmp    rcx,0x1d
    3a3f:	0f 87 82 04 00 00    	ja     3ec7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1ea7>
    3a45:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3a4c:	00 
    3a4d:	bf 1f 00 00 00       	mov    edi,0x1f
    3a52:	e9 4a fc ff ff       	jmp    36a1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3a57:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    3a5b:	88 07                	mov    BYTE PTR [rdi],al
    3a5d:	4c 8b 33             	mov    r14,QWORD PTR [rbx]
    3a60:	e9 c6 e6 ff ff       	jmp    212b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10b>
    3a65:	49 83 fd 01          	cmp    r13,0x1
    3a69:	0f 84 6c 05 00 00    	je     3fdb <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1fbb>
    3a6f:	4c 89 d6             	mov    rsi,r10
    3a72:	4c 89 ea             	mov    rdx,r13
    3a75:	48 89 c7             	mov    rdi,rax
    3a78:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3a7d:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3a82:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3a87:	e8 d4 d5 ff ff       	call   1060 <memcpy@plt>
    3a8c:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3a91:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    3a96:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    3a9b:	4d 85 c0             	test   r8,r8
    3a9e:	0f 84 5d fc ff ff    	je     3701 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3aa4:	4b 8d 3c 2f          	lea    rdi,[r15+r13*1]
    3aa8:	48 83 fd 01          	cmp    rbp,0x1
    3aac:	0f 85 30 fc ff ff    	jne    36e2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16c2>
    3ab2:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3ab6:	88 07                	mov    BYTE PTR [rdi],al
    3ab8:	e9 44 fc ff ff       	jmp    3701 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3abd:	4c 39 f8             	cmp    rax,r15
    3ac0:	0f 82 0e 09 00 00    	jb     43d4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23b4>
    3ac6:	48 8d 7c 2d 00       	lea    rdi,[rbp+rbp*1+0x0]
    3acb:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3acf:	49 39 ff             	cmp    r15,rdi
    3ad2:	0f 83 7e 05 00 00    	jae    4056 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2036>
    3ad8:	48 39 f8             	cmp    rax,rdi
    3adb:	0f 83 12 07 00 00    	jae    41f3 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21d3>
    3ae1:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3ae8:	ff ff 7f 
    3aeb:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3aef:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    3af4:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3af9:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    3afe:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3b03:	e8 68 d5 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3b08:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    3b0d:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3b12:	48 89 c5             	mov    rbp,rax
    3b15:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3b1a:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    3b1f:	4d 85 c9             	test   r9,r9
    3b22:	0f 95 c0             	setne  al
    3b25:	48 85 d2             	test   rdx,rdx
    3b28:	0f 85 a6 03 00 00    	jne    3ed4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1eb4>
    3b2e:	4d 85 ff             	test   r15,r15
    3b31:	74 26                	je     3b59 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3b33:	84 c0                	test   al,al
    3b35:	74 22                	je     3b59 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3b37:	48 89 ef             	mov    rdi,rbp
    3b3a:	49 83 f8 01          	cmp    r8,0x1
    3b3e:	0f 84 6b 06 00 00    	je     41af <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x218f>
    3b44:	4c 89 c2             	mov    rdx,r8
    3b47:	4c 89 ce             	mov    rsi,r9
    3b4a:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3b4f:	e8 0c d5 ff ff       	call   1060 <memcpy@plt>
    3b54:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3b59:	4c 39 f1             	cmp    rcx,r14
    3b5c:	74 11                	je     3b6f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    3b5e:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3b63:	48 89 cf             	mov    rdi,rcx
    3b66:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3b6a:	e8 11 d5 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3b6f:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3b73:	48 89 6c 24 50       	mov    QWORD PTR [rsp+0x50],rbp
    3b78:	48 89 e9             	mov    rcx,rbp
    3b7b:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3b80:	e9 5b f5 ff ff       	jmp    30e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    3b85:	48 83 f9 0f          	cmp    rcx,0xf
    3b89:	0f 86 3d ec ff ff    	jbe    27cc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7ac>
    3b8f:	48 39 c8             	cmp    rax,rcx
    3b92:	0f 82 c9 07 00 00    	jb     4361 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2341>
    3b98:	48 83 f9 1d          	cmp    rcx,0x1d
    3b9c:	0f 87 06 04 00 00    	ja     3fa8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1f88>
    3ba2:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3ba9:	00 
    3baa:	bf 1f 00 00 00       	mov    edi,0x1f
    3baf:	e9 bd fc ff ff       	jmp    3871 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    3bb4:	4b 8d 3c 3f          	lea    rdi,[r15+r15*1]
    3bb8:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    3bbc:	49 39 f8             	cmp    r8,rdi
    3bbf:	0f 83 9e 04 00 00    	jae    4063 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2043>
    3bc5:	48 39 f8             	cmp    rax,rdi
    3bc8:	0f 83 2e 06 00 00    	jae    41fc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21dc>
    3bce:	48 bf ff ff ff ff ff 	movabs rdi,0x7fffffffffffffff
    3bd5:	ff ff 7f 
    3bd8:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    3bdc:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
    3be1:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    3be6:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3beb:	e8 80 d4 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3bf0:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    3bf5:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    3bfa:	48 89 c7             	mov    rdi,rax
    3bfd:	49 89 c7             	mov    r15,rax
    3c00:	48 89 ce             	mov    rsi,rcx
    3c03:	48 89 54 24 10       	mov    QWORD PTR [rsp+0x10],rdx
    3c08:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3c0d:	e8 4e d4 ff ff       	call   1060 <memcpy@plt>
    3c12:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3c17:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    3c1c:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    3c21:	4c 39 f1             	cmp    rcx,r14
    3c24:	41 c6 04 17 29       	mov    BYTE PTR [r15+rdx*1],0x29
    3c29:	74 25                	je     3c50 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1c30>
    3c2b:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
    3c30:	48 89 cf             	mov    rdi,rcx
    3c33:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3c38:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    3c3d:	48 8d 70 01          	lea    rsi,[rax+0x1]
    3c41:	e8 3a d4 ff ff       	call   1080 <operator delete(void*, unsigned long)@plt>
    3c46:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3c4b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    3c50:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    3c54:	4c 89 7c 24 50       	mov    QWORD PTR [rsp+0x50],r15
    3c59:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    3c5e:	e9 2d ed ff ff       	jmp    2990 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x970>
    3c63:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3c67:	88 02                	mov    BYTE PTR [rdx],al
    3c69:	4c 8b 4c 24 50       	mov    r9,QWORD PTR [rsp+0x50]
    3c6e:	e9 6d e8 ff ff       	jmp    24e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x4c0>
    3c73:	48 85 c9             	test   rcx,rcx
    3c76:	41 0f 95 c3          	setne  r11b
    3c7a:	41 21 c3             	and    r11d,eax
    3c7d:	48 83 fa 01          	cmp    rdx,0x1
    3c81:	0f 84 e9 03 00 00    	je     4070 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2050>
    3c87:	4c 89 c6             	mov    rsi,r8
    3c8a:	4c 89 ff             	mov    rdi,r15
    3c8d:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3c92:	44 88 5c 24 10       	mov    BYTE PTR [rsp+0x10],r11b
    3c97:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    3c9c:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    3ca1:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3ca6:	e8 b5 d3 ff ff       	call   1060 <memcpy@plt>
    3cab:	80 7c 24 10 00       	cmp    BYTE PTR [rsp+0x10],0x0
    3cb0:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3cb5:	0f 84 6b ee ff ff    	je     2b26 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    3cbb:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    3cc0:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    3cc5:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    3cca:	48 83 f9 01          	cmp    rcx,0x1
    3cce:	49 8d 3c 17          	lea    rdi,[r15+rdx*1]
    3cd2:	0f 85 39 ee ff ff    	jne    2b11 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xaf1>
    3cd8:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3cdc:	88 07                	mov    BYTE PTR [rdi],al
    3cde:	e9 43 ee ff ff       	jmp    2b26 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    3ce3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3ce8:	48 8d 79 02          	lea    rdi,[rcx+0x2]
    3cec:	4d 89 ce             	mov    r14,r9
    3cef:	e9 4e f4 ff ff       	jmp    3142 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    3cf4:	4d 85 c9             	test   r9,r9
    3cf7:	40 0f 95 c6          	setne  sil
    3cfb:	21 c6                	and    esi,eax
    3cfd:	48 83 fa 01          	cmp    rdx,0x1
    3d01:	0f 84 a1 03 00 00    	je     40a8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2088>
    3d07:	40 88 74 24 28       	mov    BYTE PTR [rsp+0x28],sil
    3d0c:	4c 89 ff             	mov    rdi,r15
    3d0f:	4c 89 c6             	mov    rsi,r8
    3d12:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
    3d17:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    3d1c:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
    3d21:	4c 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],r9
    3d26:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    3d2b:	e8 30 d3 ff ff       	call   1060 <memcpy@plt>
    3d30:	80 7c 24 28 00       	cmp    BYTE PTR [rsp+0x28],0x0
    3d35:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    3d3a:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    3d3f:	0f 84 aa fb ff ff    	je     38ef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    3d45:	4c 8b 4c 24 38       	mov    r9,QWORD PTR [rsp+0x38]
    3d4a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    3d4f:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
    3d54:	49 83 f9 01          	cmp    r9,0x1
    3d58:	49 8d 3c 17          	lea    rdi,[r15+rdx*1]
    3d5c:	0f 85 6e fb ff ff    	jne    38d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b0>
    3d62:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3d66:	88 07                	mov    BYTE PTR [rdi],al
    3d68:	e9 82 fb ff ff       	jmp    38ef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    3d6d:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3d71:	88 07                	mov    BYTE PTR [rdi],al
    3d73:	4c 8b 3b             	mov    r15,QWORD PTR [rbx]
    3d76:	e9 c5 e8 ff ff       	jmp    2640 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x620>
    3d7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3d80:	48 8d 79 06          	lea    rdi,[rcx+0x6]
    3d84:	4c 89 44 24 10       	mov    QWORD PTR [rsp+0x10],r8
    3d89:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    3d8e:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3d92:	e8 d9 d2 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3d97:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    3d9b:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    3da0:	49 89 c7             	mov    r15,rax
    3da3:	4d 89 f2             	mov    r10,r14
    3da6:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    3dab:	e9 60 f4 ff ff       	jmp    3210 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    3db0:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3db4:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3db8:	e9 3c ec ff ff       	jmp    29f9 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x9d9>
    3dbd:	0f 1f 00             	nop    DWORD PTR [rax]
    3dc0:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    3dc4:	48 8d 79 07          	lea    rdi,[rcx+0x7]
    3dc8:	e9 db f4 ff ff       	jmp    32a8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1288>
    3dcd:	0f 1f 00             	nop    DWORD PTR [rax]
    3dd0:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    3dd4:	49 8d 78 03          	lea    rdi,[r8+0x3]
    3dd8:	e9 68 f5 ff ff       	jmp    3345 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1325>
    3ddd:	49 83 ff 0f          	cmp    r15,0xf
    3de1:	0f 86 d3 f2 ff ff    	jbe    30ba <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x109a>
    3de7:	4c 39 f8             	cmp    rax,r15
    3dea:	0f 82 e4 05 00 00    	jb     43d4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23b4>
    3df0:	49 83 ff 1d          	cmp    r15,0x1d
    3df4:	0f 87 5c 02 00 00    	ja     4056 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2036>
    3dfa:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3e01:	00 
    3e02:	bf 1f 00 00 00       	mov    edi,0x1f
    3e07:	e9 e3 fc ff ff       	jmp    3aef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    3e0c:	49 83 f8 10          	cmp    r8,0x10
    3e10:	0f 85 71 eb ff ff    	jne    2987 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x967>
    3e16:	48 c7 04 24 1e 00 00 	mov    QWORD PTR [rsp],0x1e
    3e1d:	00 
    3e1e:	bf 1f 00 00 00       	mov    edi,0x1f
    3e23:	e9 b4 fd ff ff       	jmp    3bdc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    3e28:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    3e2c:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    3e31:	48 89 54 24 20       	mov    QWORD PTR [rsp+0x20],rdx
    3e36:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    3e3b:	44 89 44 24 10       	mov    DWORD PTR [rsp+0x10],r8d
    3e40:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    3e45:	e8 26 d2 ff ff       	call   1070 <operator new(unsigned long)@plt>
    3e4a:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    3e4e:	49 89 c1             	mov    r9,rax
    3e51:	e9 0a fb ff ff       	jmp    3960 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1940>
    3e56:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3e5a:	88 07                	mov    BYTE PTR [rdi],al
    3e5c:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    3e61:	e9 ca e8 ff ff       	jmp    2730 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x710>
    3e66:	48 83 c2 02          	add    rdx,0x2
    3e6a:	83 e2 3f             	and    edx,0x3f
    3e6d:	74 15                	je     3e84 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e64>
    3e6f:	31 c0                	xor    eax,eax
    3e71:	89 c1                	mov    ecx,eax
    3e73:	83 c0 01             	add    eax,0x1
    3e76:	41 0f b6 34 0e       	movzx  esi,BYTE PTR [r14+rcx*1]
    3e7b:	41 88 74 0d 00       	mov    BYTE PTR [r13+rcx*1+0x0],sil
    3e80:	39 d0                	cmp    eax,edx
    3e82:	72 ed                	jb     3e71 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1e51>
    3e84:	4c 89 44 24 78       	mov    QWORD PTR [rsp+0x78],r8
    3e89:	e9 3a e2 ff ff       	jmp    20c8 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa8>
    3e8e:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    3e92:	49 8d 7f 04          	lea    rdi,[r15+0x4]
    3e96:	e9 a9 f6 ff ff       	jmp    3544 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1524>
    3e9b:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3e9f:	88 07                	mov    BYTE PTR [rdi],al
    3ea1:	4c 8b 44 24 50       	mov    r8,QWORD PTR [rsp+0x50]
    3ea6:	e9 55 e9 ff ff       	jmp    2800 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x7e0>
    3eab:	49 8d 7f 02          	lea    rdi,[r15+0x2]
    3eaf:	49 89 ed             	mov    r13,rbp
    3eb2:	e9 53 f7 ff ff       	jmp    360a <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x15ea>
    3eb7:	41 be 1e 00 00 00    	mov    r14d,0x1e
    3ebd:	bf 1f 00 00 00       	mov    edi,0x1f
    3ec2:	e9 7b f2 ff ff       	jmp    3142 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1122>
    3ec7:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3ecb:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3ecf:	e9 cd f7 ff ff       	jmp    36a1 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1681>
    3ed4:	4d 85 c0             	test   r8,r8
    3ed7:	41 0f 95 c3          	setne  r11b
    3edb:	41 21 c3             	and    r11d,eax
    3ede:	48 83 fa 01          	cmp    rdx,0x1
    3ee2:	0f 84 0d 02 00 00    	je     40f5 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x20d5>
    3ee8:	48 89 ce             	mov    rsi,rcx
    3eeb:	48 89 ef             	mov    rdi,rbp
    3eee:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    3ef3:	44 88 5c 24 10       	mov    BYTE PTR [rsp+0x10],r11b
    3ef8:	4c 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],r9
    3efd:	4c 89 44 24 20       	mov    QWORD PTR [rsp+0x20],r8
    3f02:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    3f07:	e8 54 d1 ff ff       	call   1060 <memcpy@plt>
    3f0c:	80 7c 24 10 00       	cmp    BYTE PTR [rsp+0x10],0x0
    3f11:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    3f16:	0f 84 3d fc ff ff    	je     3b59 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3f1c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    3f21:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    3f26:	4c 8b 4c 24 28       	mov    r9,QWORD PTR [rsp+0x28]
    3f2b:	49 83 f8 01          	cmp    r8,0x1
    3f2f:	48 8d 7c 15 00       	lea    rdi,[rbp+rdx*1+0x0]
    3f34:	0f 85 0a fc ff ff    	jne    3b44 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b24>
    3f3a:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3f3e:	88 07                	mov    BYTE PTR [rdi],al
    3f40:	e9 14 fc ff ff       	jmp    3b59 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    3f45:	48 89 03             	mov    QWORD PTR [rbx],rax
    3f48:	4c 89 73 10          	mov    QWORD PTR [rbx+0x10],r14
    3f4c:	42 c6 04 08 00       	mov    BYTE PTR [rax+r9*1],0x0
    3f51:	4c 89 4b 08          	mov    QWORD PTR [rbx+0x8],r9
    3f55:	e9 54 e2 ff ff       	jmp    21ae <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18e>
    3f5a:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3f5e:	41 88 06             	mov    BYTE PTR [r14],al
    3f61:	4d 85 db             	test   r11,r11
    3f64:	0f 84 f9 ea ff ff    	je     2a63 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa43>
    3f6a:	49 8d 7e 01          	lea    rdi,[r14+0x1]
    3f6e:	49 83 f8 01          	cmp    r8,0x1
    3f72:	0f 85 cc ea ff ff    	jne    2a44 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa24>
    3f78:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    3f7c:	41 88 46 01          	mov    BYTE PTR [r14+0x1],al
    3f80:	4d 39 cc             	cmp    r12,r9
    3f83:	0f 85 df ea ff ff    	jne    2a68 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa48>
    3f89:	e9 f4 ea ff ff       	jmp    2a82 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    3f8e:	66 90                	xchg   ax,ax
    3f90:	41 0f b6 12          	movzx  edx,BYTE PTR [r10]
    3f94:	88 10                	mov    BYTE PTR [rax],dl
    3f96:	e9 15 ee ff ff       	jmp    2db0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd90>
    3f9b:	4c 89 2c 24          	mov    QWORD PTR [rsp],r13
    3f9f:	49 8d 7d 01          	lea    rdi,[r13+0x1]
    3fa3:	e9 14 eb ff ff       	jmp    2abc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    3fa8:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    3fac:	48 8d 79 01          	lea    rdi,[rcx+0x1]
    3fb0:	e9 bc f8 ff ff       	jmp    3871 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    3fb5:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    3fb9:	88 07                	mov    BYTE PTR [rdi],al
    3fbb:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    3fc0:	e9 1b f1 ff ff       	jmp    30e0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x10c0>
    3fc5:	41 bf 01 00 00 00    	mov    r15d,0x1
    3fcb:	e9 ac ec ff ff       	jmp    2c7c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xc5c>
    3fd0:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3fd4:	88 02                	mov    BYTE PTR [rdx],al
    3fd6:	e9 01 f5 ff ff       	jmp    34dc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x14bc>
    3fdb:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    3fdf:	41 88 07             	mov    BYTE PTR [r15],al
    3fe2:	4d 85 c0             	test   r8,r8
    3fe5:	0f 84 16 f7 ff ff    	je     3701 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e1>
    3feb:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    3fef:	48 83 fd 01          	cmp    rbp,0x1
    3ff3:	0f 85 e9 f6 ff ff    	jne    36e2 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16c2>
    3ff9:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    3ffd:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    4001:	4d 39 d4             	cmp    r12,r10
    4004:	0f 85 fc f6 ff ff    	jne    3706 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e6>
    400a:	e9 11 f7 ff ff       	jmp    3720 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    400f:	90                   	nop
    4010:	48 83 c7 01          	add    rdi,0x1
    4014:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    4019:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
    401e:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    4023:	44 89 44 24 28       	mov    DWORD PTR [rsp+0x28],r8d
    4028:	e8 43 d0 ff ff       	call   1070 <operator new(unsigned long)@plt>
    402d:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    4032:	44 8b 44 24 28       	mov    r8d,DWORD PTR [rsp+0x28]
    4037:	49 89 c1             	mov    r9,rax
    403a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    403f:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    4044:	4d 85 d2             	test   r10,r10
    4047:	4c 8b 5c 24 40       	mov    r11,QWORD PTR [rsp+0x40]
    404c:	0f 95 44 24 20       	setne  BYTE PTR [rsp+0x20]
    4051:	e9 db ec ff ff       	jmp    2d31 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xd11>
    4056:	4c 89 3c 24          	mov    QWORD PTR [rsp],r15
    405a:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    405e:	e9 8c fa ff ff       	jmp    3aef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    4063:	4c 89 04 24          	mov    QWORD PTR [rsp],r8
    4067:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    406b:	e9 6c fb ff ff       	jmp    3bdc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    4070:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    4074:	41 88 07             	mov    BYTE PTR [r15],al
    4077:	45 84 db             	test   r11b,r11b
    407a:	0f 84 a6 ea ff ff    	je     2b26 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb06>
    4080:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    4084:	48 83 f9 01          	cmp    rcx,0x1
    4088:	0f 85 83 ea ff ff    	jne    2b11 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xaf1>
    408e:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    4092:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    4096:	4d 39 f0             	cmp    r8,r14
    4099:	0f 85 8c ea ff ff    	jne    2b2b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb0b>
    409f:	e9 98 ea ff ff       	jmp    2b3c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    40a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    40a8:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    40ac:	41 88 07             	mov    BYTE PTR [r15],al
    40af:	40 84 f6             	test   sil,sil
    40b2:	0f 84 37 f8 ff ff    	je     38ef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18cf>
    40b8:	49 8d 7f 01          	lea    rdi,[r15+0x1]
    40bc:	49 83 f9 01          	cmp    r9,0x1
    40c0:	0f 85 0a f8 ff ff    	jne    38d0 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18b0>
    40c6:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    40ca:	41 88 47 01          	mov    BYTE PTR [r15+0x1],al
    40ce:	4d 39 f0             	cmp    r8,r14
    40d1:	0f 85 1d f8 ff ff    	jne    38f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18d4>
    40d7:	e9 33 f8 ff ff       	jmp    390f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    40dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    40e0:	41 0f b6 03          	movzx  eax,BYTE PTR [r11]
    40e4:	41 88 06             	mov    BYTE PTR [r14],al
    40e7:	4d 39 cc             	cmp    r12,r9
    40ea:	0f 85 78 e9 ff ff    	jne    2a68 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa48>
    40f0:	e9 8d e9 ff ff       	jmp    2a82 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa62>
    40f5:	0f b6 01             	movzx  eax,BYTE PTR [rcx]
    40f8:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    40fb:	45 84 db             	test   r11b,r11b
    40fe:	0f 84 55 fa ff ff    	je     3b59 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b39>
    4104:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    4108:	49 83 f8 01          	cmp    r8,0x1
    410c:	0f 85 32 fa ff ff    	jne    3b44 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b24>
    4112:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    4116:	88 45 01             	mov    BYTE PTR [rbp+0x1],al
    4119:	4c 39 f1             	cmp    rcx,r14
    411c:	0f 85 3c fa ff ff    	jne    3b5e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3e>
    4122:	e9 48 fa ff ff       	jmp    3b6f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    4127:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    412e:	00 00 
    4130:	41 0f b6 00          	movzx  eax,BYTE PTR [r8]
    4134:	41 88 07             	mov    BYTE PTR [r15],al
    4137:	4d 39 d4             	cmp    r12,r10
    413a:	0f 85 c6 f5 ff ff    	jne    3706 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x16e6>
    4140:	e9 db f5 ff ff       	jmp    3720 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1700>
    4145:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    4149:	41 88 07             	mov    BYTE PTR [r15],al
    414c:	4d 39 f0             	cmp    r8,r14
    414f:	0f 85 d6 e9 ff ff    	jne    2b2b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb0b>
    4155:	e9 e2 e9 ff ff       	jmp    2b3c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xb1c>
    415a:	41 0f b6 02          	movzx  eax,BYTE PTR [r10]
    415e:	41 88 07             	mov    BYTE PTR [r15],al
    4161:	4d 39 f0             	cmp    r8,r14
    4164:	0f 85 8a f7 ff ff    	jne    38f4 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18d4>
    416a:	e9 a0 f7 ff ff       	jmp    390f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x18ef>
    416f:	49 8d 7a 01          	lea    rdi,[r10+0x1]
    4173:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
    4178:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    417d:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    4182:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    4186:	e8 e5 ce ff ff       	call   1070 <operator new(unsigned long)@plt>
    418b:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    418f:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    4194:	49 89 c7             	mov    r15,rax
    4197:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    419c:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    41a1:	e9 6a f0 ff ff       	jmp    3210 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x11f0>
    41a6:	48 83 c7 01          	add    rdi,0x1
    41aa:	e9 8a f2 ff ff       	jmp    3439 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1419>
    41af:	41 0f b6 01          	movzx  eax,BYTE PTR [r9]
    41b3:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    41b6:	4c 39 f1             	cmp    rcx,r14
    41b9:	0f 85 9f f9 ff ff    	jne    3b5e <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b3e>
    41bf:	e9 ab f9 ff ff       	jmp    3b6f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1b4f>
    41c4:	48 83 c7 01          	add    rdi,0x1
    41c8:	e9 ef e8 ff ff       	jmp    2abc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0xa9c>
    41cd:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    41d2:	41 b8 01 00 00 00    	mov    r8d,0x1
    41d8:	b9 01 00 00 00       	mov    ecx,0x1
    41dd:	48 8d 94 24 81 00 00 	lea    rdx,[rsp+0x81]
    41e4:	00 
    41e5:	e9 6e e2 ff ff       	jmp    2458 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x438>
    41ea:	48 83 c7 01          	add    rdi,0x1
    41ee:	e9 7e f6 ff ff       	jmp    3871 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1851>
    41f3:	48 83 c7 01          	add    rdi,0x1
    41f7:	e9 f3 f8 ff ff       	jmp    3aef <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1acf>
    41fc:	48 83 c7 01          	add    rdi,0x1
    4200:	e9 d7 f9 ff ff       	jmp    3bdc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x1bbc>
    4205:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    420a:	e8 a1 ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    420f:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    4214:	e8 97 ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    4219:	48 89 df             	mov    rdi,rbx
    421c:	e8 8f ce ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    4221:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4228:	00 
    4229:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4230:	00 00 
    4232:	74 67                	je     429b <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x227b>
    4234:	e8 57 ce ff ff       	call   1090 <__stack_chk_fail@plt>
    4239:	48 89 c5             	mov    rbp,rax
    423c:	eb c7                	jmp    4205 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21e5>
    423e:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4245:	00 
    4246:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    424d:	00 00 
    424f:	75 e3                	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4251:	48 8d 3d ac 0d 00 00 	lea    rdi,[rip+0xdac]        # 5004 <_IO_stdin_used+0x4>
    4258:	e8 e3 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    425d:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4264:	00 
    4265:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    426c:	00 00 
    426e:	75 c4                	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4270:	48 8d 3d 8d 0d 00 00 	lea    rdi,[rip+0xd8d]        # 5004 <_IO_stdin_used+0x4>
    4277:	e8 c4 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    427c:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4283:	00 
    4284:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    428b:	00 00 
    428d:	75 a5                	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    428f:	48 8d 3d 6e 0d 00 00 	lea    rdi,[rip+0xd6e]        # 5004 <_IO_stdin_used+0x4>
    4296:	e8 a5 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    429b:	48 89 ef             	mov    rdi,rbp
    429e:	e8 1d ce ff ff       	call   10c0 <_Unwind_Resume@plt>
    42a3:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42aa:	00 
    42ab:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42b2:	00 00 
    42b4:	0f 85 7a ff ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    42ba:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    42bf:	48 8d 3d 3e 0d 00 00 	lea    rdi,[rip+0xd3e]        # 5004 <_IO_stdin_used+0x4>
    42c6:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    42cb:	e8 70 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    42d0:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42d7:	00 
    42d8:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    42df:	00 00 
    42e1:	0f 85 4d ff ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    42e7:	48 8d 3d 16 0d 00 00 	lea    rdi,[rip+0xd16]        # 5004 <_IO_stdin_used+0x4>
    42ee:	e8 4d cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    42f3:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    42fa:	00 
    42fb:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4302:	00 00 
    4304:	0f 85 2a ff ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    430a:	48 8d 3d f3 0c 00 00 	lea    rdi,[rip+0xcf3]        # 5004 <_IO_stdin_used+0x4>
    4311:	e8 2a cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4316:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    431d:	00 
    431e:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4325:	00 00 
    4327:	0f 85 07 ff ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    432d:	48 8d 3d d0 0c 00 00 	lea    rdi,[rip+0xcd0]        # 5004 <_IO_stdin_used+0x4>
    4334:	e8 07 cd ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4339:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4340:	00 
    4341:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4348:	00 00 
    434a:	0f 85 e4 fe ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4350:	48 8d 3d ad 0c 00 00 	lea    rdi,[rip+0xcad]        # 5004 <_IO_stdin_used+0x4>
    4357:	e8 e4 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    435c:	48 89 c5             	mov    rbp,rax
    435f:	eb 28                	jmp    4389 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2369>
    4361:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4368:	00 
    4369:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4370:	00 00 
    4372:	0f 85 bc fe ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4378:	48 8d 3d 9a 0c 00 00 	lea    rdi,[rip+0xc9a]        # 5019 <_IO_stdin_used+0x19>
    437f:	e8 bc cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4384:	48 89 c5             	mov    rbp,rax
    4387:	eb 0f                	jmp    4398 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2378>
    4389:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    438e:	e8 1d cd ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    4393:	e9 81 fe ff ff       	jmp    4219 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>
    4398:	48 8d 7c 24 70       	lea    rdi,[rsp+0x70]
    439d:	e8 0e cd ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    43a2:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    43a7:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    43ac:	e9 5e fe ff ff       	jmp    420f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    43b1:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    43b8:	00 
    43b9:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    43c0:	00 00 
    43c2:	0f 85 6c fe ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    43c8:	48 8d 3d 35 0c 00 00 	lea    rdi,[rip+0xc35]        # 5004 <_IO_stdin_used+0x4>
    43cf:	e8 6c cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    43d4:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    43db:	00 
    43dc:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    43e3:	00 00 
    43e5:	0f 85 49 fe ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    43eb:	48 8d 3d 27 0c 00 00 	lea    rdi,[rip+0xc27]        # 5019 <_IO_stdin_used+0x19>
    43f2:	e8 49 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    43f7:	48 89 c5             	mov    rbp,rax
    43fa:	eb 08                	jmp    4404 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23e4>
    43fc:	48 89 c5             	mov    rbp,rax
    43ff:	e9 0b fe ff ff       	jmp    420f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    4404:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    4409:	e8 a2 cc ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    440e:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    4413:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    4418:	e9 f2 fd ff ff       	jmp    420f <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21ef>
    441d:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4424:	00 
    4425:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    442c:	00 00 
    442e:	0f 85 00 fe ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4434:	48 8d 3d de 0b 00 00 	lea    rdi,[rip+0xbde]        # 5019 <_IO_stdin_used+0x19>
    443b:	e8 00 cc ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4440:	eb b5                	jmp    43f7 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23d7>
    4442:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4449:	00 
    444a:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4451:	00 00 
    4453:	0f 85 db fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4459:	48 8d 3d a4 0b 00 00 	lea    rdi,[rip+0xba4]        # 5004 <_IO_stdin_used+0x4>
    4460:	e8 db cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4465:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    446c:	00 
    446d:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4474:	00 00 
    4476:	0f 85 b8 fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    447c:	48 8d 3d 96 0b 00 00 	lea    rdi,[rip+0xb96]        # 5019 <_IO_stdin_used+0x19>
    4483:	e8 b8 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4488:	e9 ac fd ff ff       	jmp    4239 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2219>
    448d:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4494:	00 
    4495:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    449c:	00 00 
    449e:	0f 85 90 fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    44a4:	48 8d 3d 6e 0b 00 00 	lea    rdi,[rip+0xb6e]        # 5019 <_IO_stdin_used+0x19>
    44ab:	e8 90 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44b0:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44b7:	00 
    44b8:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    44bf:	00 00 
    44c1:	0f 85 6d fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    44c7:	48 8d 3d 36 0b 00 00 	lea    rdi,[rip+0xb36]        # 5004 <_IO_stdin_used+0x4>
    44ce:	e8 6d cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44d3:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44da:	00 
    44db:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    44e2:	00 00 
    44e4:	0f 85 4a fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    44ea:	48 8d 3d 28 0b 00 00 	lea    rdi,[rip+0xb28]        # 5019 <_IO_stdin_used+0x19>
    44f1:	e8 4a cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    44f6:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    44fd:	00 
    44fe:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4505:	00 00 
    4507:	0f 85 27 fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    450d:	48 8d 3d f0 0a 00 00 	lea    rdi,[rip+0xaf0]        # 5004 <_IO_stdin_used+0x4>
    4514:	e8 27 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4519:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4520:	00 
    4521:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    4528:	00 00 
    452a:	0f 85 04 fd ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4530:	48 8d 3d e2 0a 00 00 	lea    rdi,[rip+0xae2]        # 5019 <_IO_stdin_used+0x19>
    4537:	e8 04 cb ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    453c:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4543:	00 
    4544:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    454b:	00 00 
    454d:	0f 85 e1 fc ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4553:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    4558:	48 8d 3d a5 0a 00 00 	lea    rdi,[rip+0xaa5]        # 5004 <_IO_stdin_used+0x4>
    455f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    4564:	e8 d7 ca ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    4569:	e9 8e fe ff ff       	jmp    43fc <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x23dc>
    456e:	e9 e9 fd ff ff       	jmp    435c <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x233c>
    4573:	48 89 c5             	mov    rbp,rax
    4576:	e9 9e fc ff ff       	jmp    4219 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>
    457b:	48 8b 84 24 68 01 00 	mov    rax,QWORD PTR [rsp+0x168]
    4582:	00 
    4583:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    458a:	00 00 
    458c:	0f 85 a2 fc ff ff    	jne    4234 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x2214>
    4592:	48 8d 3d 6b 0a 00 00 	lea    rdi,[rip+0xa6b]        # 5004 <_IO_stdin_used+0x4>
    4599:	e8 a2 ca ff ff       	call   1040 <std::__throw_length_error(char const*)@plt>
    459e:	48 89 c5             	mov    rbp,rax
    45a1:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
    45a6:	e8 05 cb ff ff       	call   10b0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()@plt>
    45ab:	e9 69 fc ff ff       	jmp    4219 <turing_learning::utm::Memory<turing_learning::utm::Config<1ul, 1ul, 10000ul, 3ul, 6ul, 24723622ul, true> >::to_str[abi:cxx11]() const+0x21f9>

Disassembly of section .fini:

00000000000045b0 <_fini>:
    45b0:	f3 0f 1e fa          	endbr64
    45b4:	48 83 ec 08          	sub    rsp,0x8
    45b8:	48 83 c4 08          	add    rsp,0x8
    45bc:	c3                   	ret
