
swap:     file format elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 77 00 00 00       	call   8049080 <__x86.get_pc_thunk.bx>
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

Disassembly of section .text:

08049040 <_start>:
 8049040:	31 ed                	xor    %ebp,%ebp
 8049042:	5e                   	pop    %esi
 8049043:	89 e1                	mov    %esp,%ecx
 8049045:	83 e4 f0             	and    $0xfffffff0,%esp
 8049048:	50                   	push   %eax
 8049049:	54                   	push   %esp
 804904a:	52                   	push   %edx
 804904b:	e8 19 00 00 00       	call   8049069 <_start+0x29>
 8049050:	81 c3 a4 2f 00 00    	add    $0x2fa4,%ebx
 8049056:	6a 00                	push   $0x0
 8049058:	6a 00                	push   $0x0
 804905a:	51                   	push   %ecx
 804905b:	56                   	push   %esi
 804905c:	c7 c0 65 91 04 08    	mov    $0x8049165,%eax
 8049062:	50                   	push   %eax
 8049063:	e8 c8 ff ff ff       	call   8049030 <__libc_start_main@plt>
 8049068:	f4                   	hlt
 8049069:	8b 1c 24             	mov    (%esp),%ebx
 804906c:	c3                   	ret
 804906d:	66 90                	xchg   %ax,%ax
 804906f:	90                   	nop

08049070 <_dl_relocate_static_pie>:
 8049070:	c3                   	ret
 8049071:	66 90                	xchg   %ax,%ax
 8049073:	66 90                	xchg   %ax,%ax
 8049075:	66 90                	xchg   %ax,%ax
 8049077:	66 90                	xchg   %ax,%ax
 8049079:	66 90                	xchg   %ax,%ax
 804907b:	66 90                	xchg   %ax,%ax
 804907d:	66 90                	xchg   %ax,%ax
 804907f:	90                   	nop

08049080 <__x86.get_pc_thunk.bx>:
 8049080:	8b 1c 24             	mov    (%esp),%ebx
 8049083:	c3                   	ret
 8049084:	66 90                	xchg   %ax,%ax
 8049086:	66 90                	xchg   %ax,%ax
 8049088:	66 90                	xchg   %ax,%ax
 804908a:	66 90                	xchg   %ax,%ax
 804908c:	66 90                	xchg   %ax,%ax
 804908e:	66 90                	xchg   %ax,%ax

08049090 <deregister_tm_clones>:
 8049090:	b8 0c c0 04 08       	mov    $0x804c00c,%eax
 8049095:	3d 0c c0 04 08       	cmp    $0x804c00c,%eax
 804909a:	74 24                	je     80490c0 <deregister_tm_clones+0x30>
 804909c:	b8 00 00 00 00       	mov    $0x0,%eax
 80490a1:	85 c0                	test   %eax,%eax
 80490a3:	74 1b                	je     80490c0 <deregister_tm_clones+0x30>
 80490a5:	55                   	push   %ebp
 80490a6:	89 e5                	mov    %esp,%ebp
 80490a8:	83 ec 14             	sub    $0x14,%esp
 80490ab:	68 0c c0 04 08       	push   $0x804c00c
 80490b0:	ff d0                	call   *%eax
 80490b2:	83 c4 10             	add    $0x10,%esp
 80490b5:	c9                   	leave
 80490b6:	c3                   	ret
 80490b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490be:	66 90                	xchg   %ax,%ax
 80490c0:	c3                   	ret
 80490c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80490cf:	90                   	nop

080490d0 <register_tm_clones>:
 80490d0:	b8 0c c0 04 08       	mov    $0x804c00c,%eax
 80490d5:	2d 0c c0 04 08       	sub    $0x804c00c,%eax
 80490da:	89 c2                	mov    %eax,%edx
 80490dc:	c1 e8 1f             	shr    $0x1f,%eax
 80490df:	c1 fa 02             	sar    $0x2,%edx
 80490e2:	01 d0                	add    %edx,%eax
 80490e4:	d1 f8                	sar    %eax
 80490e6:	74 20                	je     8049108 <register_tm_clones+0x38>
 80490e8:	ba 00 00 00 00       	mov    $0x0,%edx
 80490ed:	85 d2                	test   %edx,%edx
 80490ef:	74 17                	je     8049108 <register_tm_clones+0x38>
 80490f1:	55                   	push   %ebp
 80490f2:	89 e5                	mov    %esp,%ebp
 80490f4:	83 ec 10             	sub    $0x10,%esp
 80490f7:	50                   	push   %eax
 80490f8:	68 0c c0 04 08       	push   $0x804c00c
 80490fd:	ff d2                	call   *%edx
 80490ff:	83 c4 10             	add    $0x10,%esp
 8049102:	c9                   	leave
 8049103:	c3                   	ret
 8049104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049108:	c3                   	ret
 8049109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049110 <__do_global_dtors_aux>:
 8049110:	80 3d 0c c0 04 08 00 	cmpb   $0x0,0x804c00c
 8049117:	75 17                	jne    8049130 <__do_global_dtors_aux+0x20>
 8049119:	55                   	push   %ebp
 804911a:	89 e5                	mov    %esp,%ebp
 804911c:	83 ec 08             	sub    $0x8,%esp
 804911f:	e8 6c ff ff ff       	call   8049090 <deregister_tm_clones>
 8049124:	c6 05 0c c0 04 08 01 	movb   $0x1,0x804c00c
 804912b:	c9                   	leave
 804912c:	c3                   	ret
 804912d:	8d 76 00             	lea    0x0(%esi),%esi
 8049130:	c3                   	ret
 8049131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049138:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804913f:	90                   	nop

08049140 <frame_dummy>:
 8049140:	eb 8e                	jmp    80490d0 <register_tm_clones>

08049142 <swap>:
#include <stdio.h>

int swap(int *x, int *y) {
 8049142:	55                   	push   %ebp
 8049143:	89 e5                	mov    %esp,%ebp
 8049145:	83 ec 10             	sub    $0x10,%esp
    int t = *x;
 8049148:	8b 45 08             	mov    0x8(%ebp),%eax
 804914b:	8b 00                	mov    (%eax),%eax
 804914d:	89 45 fc             	mov    %eax,-0x4(%ebp)
    *x = *y;
 8049150:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049153:	8b 10                	mov    (%eax),%edx
 8049155:	8b 45 08             	mov    0x8(%ebp),%eax
 8049158:	89 10                	mov    %edx,(%eax)
    *y = t;
 804915a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804915d:	8b 55 fc             	mov    -0x4(%ebp),%edx
 8049160:	89 10                	mov    %edx,(%eax)
}
 8049162:	90                   	nop
 8049163:	c9                   	leave
 8049164:	c3                   	ret

08049165 <main>:

int main(int argc, char **argv) {
 8049165:	55                   	push   %ebp
 8049166:	89 e5                	mov    %esp,%ebp
 8049168:	83 ec 10             	sub    $0x10,%esp
    int a = 15, b = 22;
 804916b:	c7 45 fc 0f 00 00 00 	movl   $0xf,-0x4(%ebp)
 8049172:	c7 45 f8 16 00 00 00 	movl   $0x16,-0x8(%ebp)
    swap(&a, &b);
 8049179:	8d 45 f8             	lea    -0x8(%ebp),%eax
 804917c:	50                   	push   %eax
 804917d:	8d 45 fc             	lea    -0x4(%ebp),%eax
 8049180:	50                   	push   %eax
 8049181:	e8 bc ff ff ff       	call   8049142 <swap>
 8049186:	83 c4 08             	add    $0x8,%esp
    return 0;
 8049189:	b8 00 00 00 00       	mov    $0x0,%eax
}
 804918e:	c9                   	leave
 804918f:	c3                   	ret

Disassembly of section .fini:

08049190 <_fini>:
 8049190:	53                   	push   %ebx
 8049191:	83 ec 08             	sub    $0x8,%esp
 8049194:	e8 e7 fe ff ff       	call   8049080 <__x86.get_pc_thunk.bx>
 8049199:	81 c3 5b 2e 00 00    	add    $0x2e5b,%ebx
 804919f:	83 c4 08             	add    $0x8,%esp
 80491a2:	5b                   	pop    %ebx
 80491a3:	c3                   	ret
