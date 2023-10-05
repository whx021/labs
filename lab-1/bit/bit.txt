
bit:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	53                   	push   %ebx
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	e8 77 00 00 00       	call   1080 <__x86.get_pc_thunk.bx>
    1009:	81 c3 eb 2f 00 00    	add    $0x2feb,%ebx
    100f:	8b 83 f4 ff ff ff    	mov    -0xc(%ebx),%eax
    1015:	85 c0                	test   %eax,%eax
    1017:	74 02                	je     101b <_init+0x1b>
    1019:	ff d0                	call   *%eax
    101b:	83 c4 08             	add    $0x8,%esp
    101e:	5b                   	pop    %ebx
    101f:	c3                   	ret

Disassembly of section .plt:

00001020 <__libc_start_main@plt-0x10>:
    1020:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1026:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    102c:	00 00                	add    %al,(%eax)
	...

00001030 <__libc_start_main@plt>:
    1030:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00001040 <__cxa_finalize@plt>:
    1040:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001050 <_start>:
    1050:	31 ed                	xor    %ebp,%ebp
    1052:	5e                   	pop    %esi
    1053:	89 e1                	mov    %esp,%ecx
    1055:	83 e4 f0             	and    $0xfffffff0,%esp
    1058:	50                   	push   %eax
    1059:	54                   	push   %esp
    105a:	52                   	push   %edx
    105b:	e8 18 00 00 00       	call   1078 <_start+0x28>
    1060:	81 c3 94 2f 00 00    	add    $0x2f94,%ebx
    1066:	6a 00                	push   $0x0
    1068:	6a 00                	push   $0x0
    106a:	51                   	push   %ecx
    106b:	56                   	push   %esi
    106c:	ff b3 f8 ff ff ff    	push   -0x8(%ebx)
    1072:	e8 b9 ff ff ff       	call   1030 <__libc_start_main@plt>
    1077:	f4                   	hlt
    1078:	8b 1c 24             	mov    (%esp),%ebx
    107b:	c3                   	ret
    107c:	66 90                	xchg   %ax,%ax
    107e:	66 90                	xchg   %ax,%ax

00001080 <__x86.get_pc_thunk.bx>:
    1080:	8b 1c 24             	mov    (%esp),%ebx
    1083:	c3                   	ret
    1084:	66 90                	xchg   %ax,%ax
    1086:	66 90                	xchg   %ax,%ax
    1088:	66 90                	xchg   %ax,%ax
    108a:	66 90                	xchg   %ax,%ax
    108c:	66 90                	xchg   %ax,%ax
    108e:	66 90                	xchg   %ax,%ax

00001090 <deregister_tm_clones>:
    1090:	e8 e0 00 00 00       	call   1175 <__x86.get_pc_thunk.dx>
    1095:	81 c2 5f 2f 00 00    	add    $0x2f5f,%edx
    109b:	8d 8a 18 00 00 00    	lea    0x18(%edx),%ecx
    10a1:	8d 82 18 00 00 00    	lea    0x18(%edx),%eax
    10a7:	39 c8                	cmp    %ecx,%eax
    10a9:	74 1d                	je     10c8 <deregister_tm_clones+0x38>
    10ab:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10b1:	85 c0                	test   %eax,%eax
    10b3:	74 13                	je     10c8 <deregister_tm_clones+0x38>
    10b5:	55                   	push   %ebp
    10b6:	89 e5                	mov    %esp,%ebp
    10b8:	83 ec 14             	sub    $0x14,%esp
    10bb:	51                   	push   %ecx
    10bc:	ff d0                	call   *%eax
    10be:	83 c4 10             	add    $0x10,%esp
    10c1:	c9                   	leave
    10c2:	c3                   	ret
    10c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10c7:	90                   	nop
    10c8:	c3                   	ret
    10c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000010d0 <register_tm_clones>:
    10d0:	e8 a0 00 00 00       	call   1175 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 1f 2f 00 00    	add    $0x2f1f,%edx
    10db:	55                   	push   %ebp
    10dc:	89 e5                	mov    %esp,%ebp
    10de:	53                   	push   %ebx
    10df:	8d 8a 18 00 00 00    	lea    0x18(%edx),%ecx
    10e5:	8d 82 18 00 00 00    	lea    0x18(%edx),%eax
    10eb:	83 ec 04             	sub    $0x4,%esp
    10ee:	29 c8                	sub    %ecx,%eax
    10f0:	89 c3                	mov    %eax,%ebx
    10f2:	c1 e8 1f             	shr    $0x1f,%eax
    10f5:	c1 fb 02             	sar    $0x2,%ebx
    10f8:	01 d8                	add    %ebx,%eax
    10fa:	d1 f8                	sar    %eax
    10fc:	74 14                	je     1112 <register_tm_clones+0x42>
    10fe:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1104:	85 d2                	test   %edx,%edx
    1106:	74 0a                	je     1112 <register_tm_clones+0x42>
    1108:	83 ec 08             	sub    $0x8,%esp
    110b:	50                   	push   %eax
    110c:	51                   	push   %ecx
    110d:	ff d2                	call   *%edx
    110f:	83 c4 10             	add    $0x10,%esp
    1112:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1115:	c9                   	leave
    1116:	c3                   	ret
    1117:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    111e:	66 90                	xchg   %ax,%ax

00001120 <__do_global_dtors_aux>:
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	53                   	push   %ebx
    1124:	e8 57 ff ff ff       	call   1080 <__x86.get_pc_thunk.bx>
    1129:	81 c3 cb 2e 00 00    	add    $0x2ecb,%ebx
    112f:	83 ec 04             	sub    $0x4,%esp
    1132:	80 bb 18 00 00 00 00 	cmpb   $0x0,0x18(%ebx)
    1139:	75 27                	jne    1162 <__do_global_dtors_aux+0x42>
    113b:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1141:	85 c0                	test   %eax,%eax
    1143:	74 11                	je     1156 <__do_global_dtors_aux+0x36>
    1145:	83 ec 0c             	sub    $0xc,%esp
    1148:	ff b3 14 00 00 00    	push   0x14(%ebx)
    114e:	e8 ed fe ff ff       	call   1040 <__cxa_finalize@plt>
    1153:	83 c4 10             	add    $0x10,%esp
    1156:	e8 35 ff ff ff       	call   1090 <deregister_tm_clones>
    115b:	c6 83 18 00 00 00 01 	movb   $0x1,0x18(%ebx)
    1162:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1165:	c9                   	leave
    1166:	c3                   	ret
    1167:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116e:	66 90                	xchg   %ax,%ax

00001170 <frame_dummy>:
    1170:	e9 5b ff ff ff       	jmp    10d0 <register_tm_clones>

00001175 <__x86.get_pc_thunk.dx>:
    1175:	8b 14 24             	mov    (%esp),%edx
    1178:	c3                   	ret

00001179 <main>:
#include <stdio.h>

int main() {
    1179:	55                   	push   %ebp
    117a:	89 e5                	mov    %esp,%ebp
    117c:	83 ec 10             	sub    $0x10,%esp
    117f:	e8 4c 00 00 00       	call   11d0 <__x86.get_pc_thunk.ax>
    1184:	05 70 2e 00 00       	add    $0x2e70,%eax
    int a = 5;
    1189:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%ebp)
    unsigned int b = 3;
    1190:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%ebp)
    short c = 5;
    1197:	66 c7 45 f6 05 00    	movw   $0x5,-0xa(%ebp)
    int d = 0;
    119d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)

    a = ~a;
    11a4:	f7 55 fc             	notl   -0x4(%ebp)
    b = ~b;
    11a7:	f7 55 f8             	notl   -0x8(%ebp)
    c = ~c;
    11aa:	66 f7 55 f6          	notw   -0xa(%ebp)
    d = a&b;
    11ae:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11b1:	23 45 f8             	and    -0x8(%ebp),%eax
    11b4:	89 45 f0             	mov    %eax,-0x10(%ebp)
    d = a^b;
    11b7:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11ba:	33 45 f8             	xor    -0x8(%ebp),%eax
    11bd:	89 45 f0             	mov    %eax,-0x10(%ebp)
    d = a|b;
    11c0:	8b 45 fc             	mov    -0x4(%ebp),%eax
    11c3:	0b 45 f8             	or     -0x8(%ebp),%eax
    11c6:	89 45 f0             	mov    %eax,-0x10(%ebp)

    return 0;
    11c9:	b8 00 00 00 00       	mov    $0x0,%eax
}
    11ce:	c9                   	leave
    11cf:	c3                   	ret

000011d0 <__x86.get_pc_thunk.ax>:
    11d0:	8b 04 24             	mov    (%esp),%eax
    11d3:	c3                   	ret

Disassembly of section .fini:

000011d4 <_fini>:
    11d4:	53                   	push   %ebx
    11d5:	83 ec 08             	sub    $0x8,%esp
    11d8:	e8 a3 fe ff ff       	call   1080 <__x86.get_pc_thunk.bx>
    11dd:	81 c3 17 2e 00 00    	add    $0x2e17,%ebx
    11e3:	83 c4 08             	add    $0x8,%esp
    11e6:	5b                   	pop    %ebx
    11e7:	c3                   	ret
