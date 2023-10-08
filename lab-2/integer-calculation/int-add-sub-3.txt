
int-add-sub-3:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	53                   	push   %ebx
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	e8 87 00 00 00       	call   1090 <__x86.get_pc_thunk.bx>
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

00001040 <printf@plt>:
    1040:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1046:	68 08 00 00 00       	push   $0x8
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00001050 <__cxa_finalize@plt>:
    1050:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
    1056:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001060 <_start>:
    1060:	31 ed                	xor    %ebp,%ebp
    1062:	5e                   	pop    %esi
    1063:	89 e1                	mov    %esp,%ecx
    1065:	83 e4 f0             	and    $0xfffffff0,%esp
    1068:	50                   	push   %eax
    1069:	54                   	push   %esp
    106a:	52                   	push   %edx
    106b:	e8 18 00 00 00       	call   1088 <_start+0x28>
    1070:	81 c3 84 2f 00 00    	add    $0x2f84,%ebx
    1076:	6a 00                	push   $0x0
    1078:	6a 00                	push   $0x0
    107a:	51                   	push   %ecx
    107b:	56                   	push   %esi
    107c:	ff b3 f8 ff ff ff    	push   -0x8(%ebx)
    1082:	e8 a9 ff ff ff       	call   1030 <__libc_start_main@plt>
    1087:	f4                   	hlt
    1088:	8b 1c 24             	mov    (%esp),%ebx
    108b:	c3                   	ret
    108c:	66 90                	xchg   %ax,%ax
    108e:	66 90                	xchg   %ax,%ax

00001090 <__x86.get_pc_thunk.bx>:
    1090:	8b 1c 24             	mov    (%esp),%ebx
    1093:	c3                   	ret
    1094:	66 90                	xchg   %ax,%ax
    1096:	66 90                	xchg   %ax,%ax
    1098:	66 90                	xchg   %ax,%ax
    109a:	66 90                	xchg   %ax,%ax
    109c:	66 90                	xchg   %ax,%ax
    109e:	66 90                	xchg   %ax,%ax

000010a0 <deregister_tm_clones>:
    10a0:	e8 e0 00 00 00       	call   1185 <__x86.get_pc_thunk.dx>
    10a5:	81 c2 4f 2f 00 00    	add    $0x2f4f,%edx
    10ab:	8d 8a 1c 00 00 00    	lea    0x1c(%edx),%ecx
    10b1:	8d 82 1c 00 00 00    	lea    0x1c(%edx),%eax
    10b7:	39 c8                	cmp    %ecx,%eax
    10b9:	74 1d                	je     10d8 <deregister_tm_clones+0x38>
    10bb:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10c1:	85 c0                	test   %eax,%eax
    10c3:	74 13                	je     10d8 <deregister_tm_clones+0x38>
    10c5:	55                   	push   %ebp
    10c6:	89 e5                	mov    %esp,%ebp
    10c8:	83 ec 14             	sub    $0x14,%esp
    10cb:	51                   	push   %ecx
    10cc:	ff d0                	call   *%eax
    10ce:	83 c4 10             	add    $0x10,%esp
    10d1:	c9                   	leave
    10d2:	c3                   	ret
    10d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10d7:	90                   	nop
    10d8:	c3                   	ret
    10d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000010e0 <register_tm_clones>:
    10e0:	e8 a0 00 00 00       	call   1185 <__x86.get_pc_thunk.dx>
    10e5:	81 c2 0f 2f 00 00    	add    $0x2f0f,%edx
    10eb:	55                   	push   %ebp
    10ec:	89 e5                	mov    %esp,%ebp
    10ee:	53                   	push   %ebx
    10ef:	8d 8a 1c 00 00 00    	lea    0x1c(%edx),%ecx
    10f5:	8d 82 1c 00 00 00    	lea    0x1c(%edx),%eax
    10fb:	83 ec 04             	sub    $0x4,%esp
    10fe:	29 c8                	sub    %ecx,%eax
    1100:	89 c3                	mov    %eax,%ebx
    1102:	c1 e8 1f             	shr    $0x1f,%eax
    1105:	c1 fb 02             	sar    $0x2,%ebx
    1108:	01 d8                	add    %ebx,%eax
    110a:	d1 f8                	sar    %eax
    110c:	74 14                	je     1122 <register_tm_clones+0x42>
    110e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1114:	85 d2                	test   %edx,%edx
    1116:	74 0a                	je     1122 <register_tm_clones+0x42>
    1118:	83 ec 08             	sub    $0x8,%esp
    111b:	50                   	push   %eax
    111c:	51                   	push   %ecx
    111d:	ff d2                	call   *%edx
    111f:	83 c4 10             	add    $0x10,%esp
    1122:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1125:	c9                   	leave
    1126:	c3                   	ret
    1127:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112e:	66 90                	xchg   %ax,%ax

00001130 <__do_global_dtors_aux>:
    1130:	55                   	push   %ebp
    1131:	89 e5                	mov    %esp,%ebp
    1133:	53                   	push   %ebx
    1134:	e8 57 ff ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    1139:	81 c3 bb 2e 00 00    	add    $0x2ebb,%ebx
    113f:	83 ec 04             	sub    $0x4,%esp
    1142:	80 bb 1c 00 00 00 00 	cmpb   $0x0,0x1c(%ebx)
    1149:	75 27                	jne    1172 <__do_global_dtors_aux+0x42>
    114b:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1151:	85 c0                	test   %eax,%eax
    1153:	74 11                	je     1166 <__do_global_dtors_aux+0x36>
    1155:	83 ec 0c             	sub    $0xc,%esp
    1158:	ff b3 18 00 00 00    	push   0x18(%ebx)
    115e:	e8 ed fe ff ff       	call   1050 <__cxa_finalize@plt>
    1163:	83 c4 10             	add    $0x10,%esp
    1166:	e8 35 ff ff ff       	call   10a0 <deregister_tm_clones>
    116b:	c6 83 1c 00 00 00 01 	movb   $0x1,0x1c(%ebx)
    1172:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1175:	c9                   	leave
    1176:	c3                   	ret
    1177:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    117e:	66 90                	xchg   %ax,%ax

00001180 <frame_dummy>:
    1180:	e9 5b ff ff ff       	jmp    10e0 <register_tm_clones>

00001185 <__x86.get_pc_thunk.dx>:
    1185:	8b 14 24             	mov    (%esp),%edx
    1188:	c3                   	ret

00001189 <main>:
#include <stdio.h>

int main(int argc, char **argv) {
    1189:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    118d:	83 e4 f0             	and    $0xfffffff0,%esp
    1190:	ff 71 fc             	push   -0x4(%ecx)
    1193:	55                   	push   %ebp
    1194:	89 e5                	mov    %esp,%ebp
    1196:	53                   	push   %ebx
    1197:	51                   	push   %ecx
    1198:	83 ec 10             	sub    $0x10,%esp
    119b:	e8 f0 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11a0:	81 c3 54 2e 00 00    	add    $0x2e54,%ebx
    unsigned char ua = 140, ub = 130, uc, ud;
    11a6:	c6 45 f7 8c          	movb   $0x8c,-0x9(%ebp)
    11aa:	c6 45 f6 82          	movb   $0x82,-0xa(%ebp)
    char a = 100, b = 110, c = -100, d, e;
    11ae:	c6 45 f5 64          	movb   $0x64,-0xb(%ebp)
    11b2:	c6 45 f4 6e          	movb   $0x6e,-0xc(%ebp)
    11b6:	c6 45 f3 9c          	movb   $0x9c,-0xd(%ebp)

    uc = ua + ub;   // 140 + 130
    11ba:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    11be:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
    11c2:	01 d0                	add    %edx,%eax
    11c4:	88 45 f2             	mov    %al,-0xe(%ebp)
    ud = ub - ua;   // 130 - 140
    11c7:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
    11cb:	2a 45 f7             	sub    -0x9(%ebp),%al
    11ce:	88 45 f1             	mov    %al,-0xf(%ebp)
    d = a + b;      // 100 + 110
    11d1:	0f b6 55 f5          	movzbl -0xb(%ebp),%edx
    11d5:	0f b6 45 f4          	movzbl -0xc(%ebp),%eax
    11d9:	01 d0                	add    %edx,%eax
    11db:	88 45 f0             	mov    %al,-0x10(%ebp)
    e = c - b;      // -100 - 110
    11de:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
    11e2:	0f b6 55 f4          	movzbl -0xc(%ebp),%edx
    11e6:	29 d0                	sub    %edx,%eax
    11e8:	88 45 ef             	mov    %al,-0x11(%ebp)

    printf("%u + %u = %u\n", ua, ub, uc);
    11eb:	0f b6 4d f2          	movzbl -0xe(%ebp),%ecx
    11ef:	0f b6 55 f6          	movzbl -0xa(%ebp),%edx
    11f3:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
    11f7:	51                   	push   %ecx
    11f8:	52                   	push   %edx
    11f9:	50                   	push   %eax
    11fa:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    1200:	50                   	push   %eax
    1201:	e8 3a fe ff ff       	call   1040 <printf@plt>
    1206:	83 c4 10             	add    $0x10,%esp
    printf("%u - %u = %u\n", ub, ua, ud);
    1209:	0f b6 4d f1          	movzbl -0xf(%ebp),%ecx
    120d:	0f b6 55 f7          	movzbl -0x9(%ebp),%edx
    1211:	0f b6 45 f6          	movzbl -0xa(%ebp),%eax
    1215:	51                   	push   %ecx
    1216:	52                   	push   %edx
    1217:	50                   	push   %eax
    1218:	8d 83 22 e0 ff ff    	lea    -0x1fde(%ebx),%eax
    121e:	50                   	push   %eax
    121f:	e8 1c fe ff ff       	call   1040 <printf@plt>
    1224:	83 c4 10             	add    $0x10,%esp
    printf("%d + %d = %d\n", a, b, d);
    1227:	0f be 4d f0          	movsbl -0x10(%ebp),%ecx
    122b:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
    122f:	0f be 45 f5          	movsbl -0xb(%ebp),%eax
    1233:	51                   	push   %ecx
    1234:	52                   	push   %edx
    1235:	50                   	push   %eax
    1236:	8d 83 30 e0 ff ff    	lea    -0x1fd0(%ebx),%eax
    123c:	50                   	push   %eax
    123d:	e8 fe fd ff ff       	call   1040 <printf@plt>
    1242:	83 c4 10             	add    $0x10,%esp
    printf("%d - %d = %d\n", c, b, e);
    1245:	0f be 4d ef          	movsbl -0x11(%ebp),%ecx
    1249:	0f be 55 f4          	movsbl -0xc(%ebp),%edx
    124d:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
    1251:	51                   	push   %ecx
    1252:	52                   	push   %edx
    1253:	50                   	push   %eax
    1254:	8d 83 3e e0 ff ff    	lea    -0x1fc2(%ebx),%eax
    125a:	50                   	push   %eax
    125b:	e8 e0 fd ff ff       	call   1040 <printf@plt>
    1260:	83 c4 10             	add    $0x10,%esp
        
    return 0;
    1263:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1268:	8d 65 f8             	lea    -0x8(%ebp),%esp
    126b:	59                   	pop    %ecx
    126c:	5b                   	pop    %ebx
    126d:	5d                   	pop    %ebp
    126e:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1271:	c3                   	ret

Disassembly of section .fini:

00001274 <_fini>:
    1274:	53                   	push   %ebx
    1275:	83 ec 08             	sub    $0x8,%esp
    1278:	e8 13 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    127d:	81 c3 77 2d 00 00    	add    $0x2d77,%ebx
    1283:	83 c4 08             	add    $0x8,%esp
    1286:	5b                   	pop    %ebx
    1287:	c3                   	ret
