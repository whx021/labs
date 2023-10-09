
b:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 97 00 00 00       	call   80490a0 <__x86.get_pc_thunk.bx>
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

08049040 <strcpy@plt>:
 8049040:	ff 25 04 c0 04 08    	jmp    *0x804c004
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <_init+0x20>

08049050 <puts@plt>:
 8049050:	ff 25 08 c0 04 08    	jmp    *0x804c008
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <_init+0x20>

Disassembly of section .text:

08049060 <_start>:
 8049060:	31 ed                	xor    %ebp,%ebp
 8049062:	5e                   	pop    %esi
 8049063:	89 e1                	mov    %esp,%ecx
 8049065:	83 e4 f0             	and    $0xfffffff0,%esp
 8049068:	50                   	push   %eax
 8049069:	54                   	push   %esp
 804906a:	52                   	push   %edx
 804906b:	e8 19 00 00 00       	call   8049089 <_start+0x29>
 8049070:	81 c3 84 2f 00 00    	add    $0x2f84,%ebx
 8049076:	6a 00                	push   $0x0
 8049078:	6a 00                	push   $0x0
 804907a:	51                   	push   %ecx
 804907b:	56                   	push   %esi
 804907c:	c7 c0 a5 91 04 08    	mov    $0x80491a5,%eax
 8049082:	50                   	push   %eax
 8049083:	e8 a8 ff ff ff       	call   8049030 <__libc_start_main@plt>
 8049088:	f4                   	hlt
 8049089:	8b 1c 24             	mov    (%esp),%ebx
 804908c:	c3                   	ret
 804908d:	66 90                	xchg   %ax,%ax
 804908f:	90                   	nop

08049090 <_dl_relocate_static_pie>:
 8049090:	c3                   	ret
 8049091:	66 90                	xchg   %ax,%ax
 8049093:	66 90                	xchg   %ax,%ax
 8049095:	66 90                	xchg   %ax,%ax
 8049097:	66 90                	xchg   %ax,%ax
 8049099:	66 90                	xchg   %ax,%ax
 804909b:	66 90                	xchg   %ax,%ax
 804909d:	66 90                	xchg   %ax,%ax
 804909f:	90                   	nop

080490a0 <__x86.get_pc_thunk.bx>:
 80490a0:	8b 1c 24             	mov    (%esp),%ebx
 80490a3:	c3                   	ret
 80490a4:	66 90                	xchg   %ax,%ax
 80490a6:	66 90                	xchg   %ax,%ax
 80490a8:	66 90                	xchg   %ax,%ax
 80490aa:	66 90                	xchg   %ax,%ax
 80490ac:	66 90                	xchg   %ax,%ax
 80490ae:	66 90                	xchg   %ax,%ax

080490b0 <deregister_tm_clones>:
 80490b0:	b8 14 c0 04 08       	mov    $0x804c014,%eax
 80490b5:	3d 14 c0 04 08       	cmp    $0x804c014,%eax
 80490ba:	74 24                	je     80490e0 <deregister_tm_clones+0x30>
 80490bc:	b8 00 00 00 00       	mov    $0x0,%eax
 80490c1:	85 c0                	test   %eax,%eax
 80490c3:	74 1b                	je     80490e0 <deregister_tm_clones+0x30>
 80490c5:	55                   	push   %ebp
 80490c6:	89 e5                	mov    %esp,%ebp
 80490c8:	83 ec 14             	sub    $0x14,%esp
 80490cb:	68 14 c0 04 08       	push   $0x804c014
 80490d0:	ff d0                	call   *%eax
 80490d2:	83 c4 10             	add    $0x10,%esp
 80490d5:	c9                   	leave
 80490d6:	c3                   	ret
 80490d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490de:	66 90                	xchg   %ax,%ax
 80490e0:	c3                   	ret
 80490e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490ef:	90                   	nop

080490f0 <register_tm_clones>:
 80490f0:	b8 14 c0 04 08       	mov    $0x804c014,%eax
 80490f5:	2d 14 c0 04 08       	sub    $0x804c014,%eax
 80490fa:	89 c2                	mov    %eax,%edx
 80490fc:	c1 e8 1f             	shr    $0x1f,%eax
 80490ff:	c1 fa 02             	sar    $0x2,%edx
 8049102:	01 d0                	add    %edx,%eax
 8049104:	d1 f8                	sar    %eax
 8049106:	74 20                	je     8049128 <register_tm_clones+0x38>
 8049108:	ba 00 00 00 00       	mov    $0x0,%edx
 804910d:	85 d2                	test   %edx,%edx
 804910f:	74 17                	je     8049128 <register_tm_clones+0x38>
 8049111:	55                   	push   %ebp
 8049112:	89 e5                	mov    %esp,%ebp
 8049114:	83 ec 10             	sub    $0x10,%esp
 8049117:	50                   	push   %eax
 8049118:	68 14 c0 04 08       	push   $0x804c014
 804911d:	ff d2                	call   *%edx
 804911f:	83 c4 10             	add    $0x10,%esp
 8049122:	c9                   	leave
 8049123:	c3                   	ret
 8049124:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049128:	c3                   	ret
 8049129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049130 <__do_global_dtors_aux>:
 8049130:	80 3d 14 c0 04 08 00 	cmpb   $0x0,0x804c014
 8049137:	75 17                	jne    8049150 <__do_global_dtors_aux+0x20>
 8049139:	55                   	push   %ebp
 804913a:	89 e5                	mov    %esp,%ebp
 804913c:	83 ec 08             	sub    $0x8,%esp
 804913f:	e8 6c ff ff ff       	call   80490b0 <deregister_tm_clones>
 8049144:	c6 05 14 c0 04 08 01 	movb   $0x1,0x804c014
 804914b:	c9                   	leave
 804914c:	c3                   	ret
 804914d:	8d 76 00             	lea    0x0(%esi),%esi
 8049150:	c3                   	ret
 8049151:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049158:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804915f:	90                   	nop

08049160 <frame_dummy>:
 8049160:	eb 8e                	jmp    80490f0 <register_tm_clones>

08049162 <outputs>:
#include <stdio.h>
#include <string.h>

void outputs(char *str) {
 8049162:	55                   	push   %ebp
 8049163:	89 e5                	mov    %esp,%ebp
 8049165:	83 ec 18             	sub    $0x18,%esp
    char buffer[16];
    strcpy(buffer, str);
 8049168:	83 ec 08             	sub    $0x8,%esp
 804916b:	ff 75 08             	push   0x8(%ebp)
 804916e:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049171:	50                   	push   %eax
 8049172:	e8 c9 fe ff ff       	call   8049040 <strcpy@plt>
 8049177:	83 c4 10             	add    $0x10,%esp
    printf("%s\n", buffer);
 804917a:	83 ec 0c             	sub    $0xc,%esp
 804917d:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049180:	50                   	push   %eax
 8049181:	e8 ca fe ff ff       	call   8049050 <puts@plt>
 8049186:	83 c4 10             	add    $0x10,%esp
}
 8049189:	90                   	nop
 804918a:	c9                   	leave
 804918b:	c3                   	ret

0804918c <hack>:

void hack(void) {
 804918c:	55                   	push   %ebp
 804918d:	89 e5                	mov    %esp,%ebp
 804918f:	83 ec 08             	sub    $0x8,%esp
    printf("being hacked\n");
 8049192:	83 ec 0c             	sub    $0xc,%esp
 8049195:	68 08 a0 04 08       	push   $0x804a008
 804919a:	e8 b1 fe ff ff       	call   8049050 <puts@plt>
 804919f:	83 c4 10             	add    $0x10,%esp
}
 80491a2:	90                   	nop
 80491a3:	c9                   	leave
 80491a4:	c3                   	ret

080491a5 <main>:

int main(int argc, char **argv) {
 80491a5:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80491a9:	83 e4 f0             	and    $0xfffffff0,%esp
 80491ac:	ff 71 fc             	push   -0x4(%ecx)
 80491af:	55                   	push   %ebp
 80491b0:	89 e5                	mov    %esp,%ebp
 80491b2:	51                   	push   %ecx
 80491b3:	83 ec 04             	sub    $0x4,%esp
 80491b6:	89 c8                	mov    %ecx,%eax
    outputs(argv[1]);
 80491b8:	8b 40 04             	mov    0x4(%eax),%eax
 80491bb:	83 c0 04             	add    $0x4,%eax
 80491be:	8b 00                	mov    (%eax),%eax
 80491c0:	83 ec 0c             	sub    $0xc,%esp
 80491c3:	50                   	push   %eax
 80491c4:	e8 99 ff ff ff       	call   8049162 <outputs>
 80491c9:	83 c4 10             	add    $0x10,%esp
    printf("yes\n");
 80491cc:	83 ec 0c             	sub    $0xc,%esp
 80491cf:	68 15 a0 04 08       	push   $0x804a015
 80491d4:	e8 77 fe ff ff       	call   8049050 <puts@plt>
 80491d9:	83 c4 10             	add    $0x10,%esp
    return 0;
 80491dc:	b8 00 00 00 00       	mov    $0x0,%eax
}
 80491e1:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 80491e4:	c9                   	leave
 80491e5:	8d 61 fc             	lea    -0x4(%ecx),%esp
 80491e8:	c3                   	ret

Disassembly of section .fini:

080491ec <_fini>:
 80491ec:	53                   	push   %ebx
 80491ed:	83 ec 08             	sub    $0x8,%esp
 80491f0:	e8 ab fe ff ff       	call   80490a0 <__x86.get_pc_thunk.bx>
 80491f5:	81 c3 ff 2d 00 00    	add    $0x2dff,%ebx
 80491fb:	83 c4 08             	add    $0x8,%esp
 80491fe:	5b                   	pop    %ebx
 80491ff:	c3                   	ret
