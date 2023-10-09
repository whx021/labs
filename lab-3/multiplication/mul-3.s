
mul-3:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	53                   	push   %ebx
    1001:	83 ec 08             	sub    $0x8,%esp
    1004:	e8 97 00 00 00       	call   10a0 <__x86.get_pc_thunk.bx>
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

00001050 <__isoc99_scanf@plt>:
    1050:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1056:	68 10 00 00 00       	push   $0x10
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00001060 <__cxa_finalize@plt>:
    1060:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
    1066:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001070 <_start>:
    1070:	31 ed                	xor    %ebp,%ebp
    1072:	5e                   	pop    %esi
    1073:	89 e1                	mov    %esp,%ecx
    1075:	83 e4 f0             	and    $0xfffffff0,%esp
    1078:	50                   	push   %eax
    1079:	54                   	push   %esp
    107a:	52                   	push   %edx
    107b:	e8 18 00 00 00       	call   1098 <_start+0x28>
    1080:	81 c3 74 2f 00 00    	add    $0x2f74,%ebx
    1086:	6a 00                	push   $0x0
    1088:	6a 00                	push   $0x0
    108a:	51                   	push   %ecx
    108b:	56                   	push   %esi
    108c:	ff b3 f8 ff ff ff    	push   -0x8(%ebx)
    1092:	e8 99 ff ff ff       	call   1030 <__libc_start_main@plt>
    1097:	f4                   	hlt
    1098:	8b 1c 24             	mov    (%esp),%ebx
    109b:	c3                   	ret
    109c:	66 90                	xchg   %ax,%ax
    109e:	66 90                	xchg   %ax,%ax

000010a0 <__x86.get_pc_thunk.bx>:
    10a0:	8b 1c 24             	mov    (%esp),%ebx
    10a3:	c3                   	ret
    10a4:	66 90                	xchg   %ax,%ax
    10a6:	66 90                	xchg   %ax,%ax
    10a8:	66 90                	xchg   %ax,%ax
    10aa:	66 90                	xchg   %ax,%ax
    10ac:	66 90                	xchg   %ax,%ax
    10ae:	66 90                	xchg   %ax,%ax

000010b0 <deregister_tm_clones>:
    10b0:	e8 e0 00 00 00       	call   1195 <__x86.get_pc_thunk.dx>
    10b5:	81 c2 3f 2f 00 00    	add    $0x2f3f,%edx
    10bb:	8d 8a 20 00 00 00    	lea    0x20(%edx),%ecx
    10c1:	8d 82 20 00 00 00    	lea    0x20(%edx),%eax
    10c7:	39 c8                	cmp    %ecx,%eax
    10c9:	74 1d                	je     10e8 <deregister_tm_clones+0x38>
    10cb:	8b 82 ec ff ff ff    	mov    -0x14(%edx),%eax
    10d1:	85 c0                	test   %eax,%eax
    10d3:	74 13                	je     10e8 <deregister_tm_clones+0x38>
    10d5:	55                   	push   %ebp
    10d6:	89 e5                	mov    %esp,%ebp
    10d8:	83 ec 14             	sub    $0x14,%esp
    10db:	51                   	push   %ecx
    10dc:	ff d0                	call   *%eax
    10de:	83 c4 10             	add    $0x10,%esp
    10e1:	c9                   	leave
    10e2:	c3                   	ret
    10e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10e7:	90                   	nop
    10e8:	c3                   	ret
    10e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000010f0 <register_tm_clones>:
    10f0:	e8 a0 00 00 00       	call   1195 <__x86.get_pc_thunk.dx>
    10f5:	81 c2 ff 2e 00 00    	add    $0x2eff,%edx
    10fb:	55                   	push   %ebp
    10fc:	89 e5                	mov    %esp,%ebp
    10fe:	53                   	push   %ebx
    10ff:	8d 8a 20 00 00 00    	lea    0x20(%edx),%ecx
    1105:	8d 82 20 00 00 00    	lea    0x20(%edx),%eax
    110b:	83 ec 04             	sub    $0x4,%esp
    110e:	29 c8                	sub    %ecx,%eax
    1110:	89 c3                	mov    %eax,%ebx
    1112:	c1 e8 1f             	shr    $0x1f,%eax
    1115:	c1 fb 02             	sar    $0x2,%ebx
    1118:	01 d8                	add    %ebx,%eax
    111a:	d1 f8                	sar    %eax
    111c:	74 14                	je     1132 <register_tm_clones+0x42>
    111e:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
    1124:	85 d2                	test   %edx,%edx
    1126:	74 0a                	je     1132 <register_tm_clones+0x42>
    1128:	83 ec 08             	sub    $0x8,%esp
    112b:	50                   	push   %eax
    112c:	51                   	push   %ecx
    112d:	ff d2                	call   *%edx
    112f:	83 c4 10             	add    $0x10,%esp
    1132:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1135:	c9                   	leave
    1136:	c3                   	ret
    1137:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    113e:	66 90                	xchg   %ax,%ax

00001140 <__do_global_dtors_aux>:
    1140:	55                   	push   %ebp
    1141:	89 e5                	mov    %esp,%ebp
    1143:	53                   	push   %ebx
    1144:	e8 57 ff ff ff       	call   10a0 <__x86.get_pc_thunk.bx>
    1149:	81 c3 ab 2e 00 00    	add    $0x2eab,%ebx
    114f:	83 ec 04             	sub    $0x4,%esp
    1152:	80 bb 20 00 00 00 00 	cmpb   $0x0,0x20(%ebx)
    1159:	75 27                	jne    1182 <__do_global_dtors_aux+0x42>
    115b:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
    1161:	85 c0                	test   %eax,%eax
    1163:	74 11                	je     1176 <__do_global_dtors_aux+0x36>
    1165:	83 ec 0c             	sub    $0xc,%esp
    1168:	ff b3 1c 00 00 00    	push   0x1c(%ebx)
    116e:	e8 ed fe ff ff       	call   1060 <__cxa_finalize@plt>
    1173:	83 c4 10             	add    $0x10,%esp
    1176:	e8 35 ff ff ff       	call   10b0 <deregister_tm_clones>
    117b:	c6 83 20 00 00 00 01 	movb   $0x1,0x20(%ebx)
    1182:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1185:	c9                   	leave
    1186:	c3                   	ret
    1187:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    118e:	66 90                	xchg   %ax,%ax

00001190 <frame_dummy>:
    1190:	e9 5b ff ff ff       	jmp    10f0 <register_tm_clones>

00001195 <__x86.get_pc_thunk.dx>:
    1195:	8b 14 24             	mov    (%esp),%edx
    1198:	c3                   	ret

00001199 <umul>:
#include <stdio.h>

unsigned umul(unsigned x, unsigned y) {
    1199:	55                   	push   %ebp
    119a:	89 e5                	mov    %esp,%ebp
    119c:	53                   	push   %ebx
    119d:	83 ec 14             	sub    $0x14,%esp
    11a0:	e8 0d 02 00 00       	call   13b2 <__x86.get_pc_thunk.ax>
    11a5:	05 4f 2e 00 00       	add    $0x2e4f,%eax
    int overflow = 0;   // -0x4(%ebp)
    11aa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    int z = 0;          // -0x8(%ebp)
    11b1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    int temp = 0;       // -0xc(%ebp)
    11b8:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    asm (
    11bf:	89 45 f4             	mov    %eax,-0xc(%ebp)
    11c2:	8b 45 08             	mov    0x8(%ebp),%eax
    11c5:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    11c8:	f7 e1                	mul    %ecx
    11ca:	89 55 fc             	mov    %edx,-0x4(%ebp)
    11cd:	89 45 f8             	mov    %eax,-0x8(%ebp)
    11d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
        "mul    %ecx\n\t"
        "mov    %edx, -0x4(%ebp)\n\t"   // set overflow
        "mov    %eax, -0x8(%ebp)\n\t"   // set return value    
        "mov    -0xc(%ebp), %eax\n\t"   // recovery system argument
    );
    if (overflow != 0) {
    11d3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    11d7:	74 1a                	je     11f3 <umul+0x5a>
        printf("%d * %d is overflow based on high 32 bits\n", x, y);
    11d9:	83 ec 04             	sub    $0x4,%esp
    11dc:	ff 75 0c             	push   0xc(%ebp)
    11df:	ff 75 08             	push   0x8(%ebp)
    11e2:	8d 90 14 e0 ff ff    	lea    -0x1fec(%eax),%edx
    11e8:	52                   	push   %edx
    11e9:	89 c3                	mov    %eax,%ebx
    11eb:	e8 50 fe ff ff       	call   1040 <printf@plt>
    11f0:	83 c4 10             	add    $0x10,%esp
    }
    return z;
    11f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
    11f6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11f9:	c9                   	leave
    11fa:	c3                   	ret

000011fb <imul>:

int imul(int x, int y) {
    11fb:	55                   	push   %ebp
    11fc:	89 e5                	mov    %esp,%ebp
    11fe:	53                   	push   %ebx
    11ff:	83 ec 14             	sub    $0x14,%esp
    1202:	e8 ab 01 00 00       	call   13b2 <__x86.get_pc_thunk.ax>
    1207:	05 ed 2d 00 00       	add    $0x2ded,%eax
    int overflow = 0;   // -0x4(%ebp)
    120c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    int z = 0;          // -0x8(%ebp)
    1213:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    int temp = 0;       // -0xc(%ebp)
    121a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
    asm (
    1221:	89 45 f4             	mov    %eax,-0xc(%ebp)
    1224:	8b 45 08             	mov    0x8(%ebp),%eax
    1227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    122a:	f7 e9                	imul   %ecx
    122c:	89 d3                	mov    %edx,%ebx
    122e:	99                   	cltd
    122f:	29 da                	sub    %ebx,%edx
    1231:	89 55 fc             	mov    %edx,-0x4(%ebp)
    1234:	89 45 f8             	mov    %eax,-0x8(%ebp)
    1237:	8b 45 f4             	mov    -0xc(%ebp),%eax
        "sub    %ebx, %edx\n\t" // R[edx] - R[ebx] -> edx
        "mov    %edx, -0x4(%ebp)\n\t"   // set overflow
        "mov    %eax, -0x8(%ebp)\n\t"   // set return value
        "mov    -0xc(%ebp), %eax\n\t"   // recovery system argument
    );
    if (overflow != 0) {
    123a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
    123e:	74 1a                	je     125a <imul+0x5f>
        printf("%u * %u is overflow based on high 33 bits\n", x, y);
    1240:	83 ec 04             	sub    $0x4,%esp
    1243:	ff 75 0c             	push   0xc(%ebp)
    1246:	ff 75 08             	push   0x8(%ebp)
    1249:	8d 90 40 e0 ff ff    	lea    -0x1fc0(%eax),%edx
    124f:	52                   	push   %edx
    1250:	89 c3                	mov    %eax,%ebx
    1252:	e8 e9 fd ff ff       	call   1040 <printf@plt>
    1257:	83 c4 10             	add    $0x10,%esp
    }
    return z;
    125a:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
    125d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1260:	c9                   	leave
    1261:	c3                   	ret

00001262 <main>:

int main(int argc, char ** argv) {
    1262:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1266:	83 e4 f0             	and    $0xfffffff0,%esp
    1269:	ff 71 fc             	push   -0x4(%ecx)
    126c:	55                   	push   %ebp
    126d:	89 e5                	mov    %esp,%ebp
    126f:	53                   	push   %ebx
    1270:	51                   	push   %ecx
    1271:	83 ec 20             	sub    $0x20,%esp
    1274:	e8 27 fe ff ff       	call   10a0 <__x86.get_pc_thunk.bx>
    1279:	81 c3 7b 2d 00 00    	add    $0x2d7b,%ebx
    int x, y;
    unsigned ux, uy;
    int z;
    printf("enter intx and int y: ");
    127f:	83 ec 0c             	sub    $0xc,%esp
    1282:	8d 83 6b e0 ff ff    	lea    -0x1f95(%ebx),%eax
    1288:	50                   	push   %eax
    1289:	e8 b2 fd ff ff       	call   1040 <printf@plt>
    128e:	83 c4 10             	add    $0x10,%esp
    scanf("%d %d", &x, &y);
    1291:	83 ec 04             	sub    $0x4,%esp
    1294:	8d 45 ec             	lea    -0x14(%ebp),%eax
    1297:	50                   	push   %eax
    1298:	8d 45 f0             	lea    -0x10(%ebp),%eax
    129b:	50                   	push   %eax
    129c:	8d 83 82 e0 ff ff    	lea    -0x1f7e(%ebx),%eax
    12a2:	50                   	push   %eax
    12a3:	e8 a8 fd ff ff       	call   1050 <__isoc99_scanf@plt>
    12a8:	83 c4 10             	add    $0x10,%esp
    printf("enter unsigned ux and unsigned uy: ");
    12ab:	83 ec 0c             	sub    $0xc,%esp
    12ae:	8d 83 88 e0 ff ff    	lea    -0x1f78(%ebx),%eax
    12b4:	50                   	push   %eax
    12b5:	e8 86 fd ff ff       	call   1040 <printf@plt>
    12ba:	83 c4 10             	add    $0x10,%esp
    scanf("%u, %u", &ux, &uy);
    12bd:	83 ec 04             	sub    $0x4,%esp
    12c0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    12c3:	50                   	push   %eax
    12c4:	8d 45 e8             	lea    -0x18(%ebp),%eax
    12c7:	50                   	push   %eax
    12c8:	8d 83 ac e0 ff ff    	lea    -0x1f54(%ebx),%eax
    12ce:	50                   	push   %eax
    12cf:	e8 7c fd ff ff       	call   1050 <__isoc99_scanf@plt>
    12d4:	83 c4 10             	add    $0x10,%esp
    z = imul(x, y);
    12d7:	8b 55 ec             	mov    -0x14(%ebp),%edx
    12da:	8b 45 f0             	mov    -0x10(%ebp),%eax
    12dd:	83 ec 08             	sub    $0x8,%esp
    12e0:	52                   	push   %edx
    12e1:	50                   	push   %eax
    12e2:	e8 14 ff ff ff       	call   11fb <imul>
    12e7:	83 c4 10             	add    $0x10,%esp
    12ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if (z / y == x) {
    12ed:	8b 4d ec             	mov    -0x14(%ebp),%ecx
    12f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
    12f3:	99                   	cltd
    12f4:	f7 f9                	idiv   %ecx
    12f6:	89 c2                	mov    %eax,%edx
    12f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
    12fb:	39 c2                	cmp    %eax,%edx
    12fd:	75 22                	jne    1321 <main+0xbf>
        printf("%d * %d = %xH = %d\n", x, y, z, z);
    12ff:	8b 55 ec             	mov    -0x14(%ebp),%edx
    1302:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1305:	83 ec 0c             	sub    $0xc,%esp
    1308:	ff 75 f4             	push   -0xc(%ebp)
    130b:	ff 75 f4             	push   -0xc(%ebp)
    130e:	52                   	push   %edx
    130f:	50                   	push   %eax
    1310:	8d 83 b3 e0 ff ff    	lea    -0x1f4d(%ebx),%eax
    1316:	50                   	push   %eax
    1317:	e8 24 fd ff ff       	call   1040 <printf@plt>
    131c:	83 c4 20             	add    $0x20,%esp
    131f:	eb 1a                	jmp    133b <main+0xd9>
    } else {
        printf("%d * %d is overflow based on C\n", x, y);
    1321:	8b 55 ec             	mov    -0x14(%ebp),%edx
    1324:	8b 45 f0             	mov    -0x10(%ebp),%eax
    1327:	83 ec 04             	sub    $0x4,%esp
    132a:	52                   	push   %edx
    132b:	50                   	push   %eax
    132c:	8d 83 c8 e0 ff ff    	lea    -0x1f38(%ebx),%eax
    1332:	50                   	push   %eax
    1333:	e8 08 fd ff ff       	call   1040 <printf@plt>
    1338:	83 c4 10             	add    $0x10,%esp
    }
    z = umul(ux, uy);
    133b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    133e:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1341:	83 ec 08             	sub    $0x8,%esp
    1344:	52                   	push   %edx
    1345:	50                   	push   %eax
    1346:	e8 4e fe ff ff       	call   1199 <umul>
    134b:	83 c4 10             	add    $0x10,%esp
    134e:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if (z / uy == ux) {
    1351:	8b 45 f4             	mov    -0xc(%ebp),%eax
    1354:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1357:	ba 00 00 00 00       	mov    $0x0,%edx
    135c:	f7 f1                	div    %ecx
    135e:	89 c2                	mov    %eax,%edx
    1360:	8b 45 e8             	mov    -0x18(%ebp),%eax
    1363:	39 c2                	cmp    %eax,%edx
    1365:	75 22                	jne    1389 <main+0x127>
        printf("%u * %u = %xH = %d\n", ux, uy, z, z);
    1367:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    136a:	8b 45 e8             	mov    -0x18(%ebp),%eax
    136d:	83 ec 0c             	sub    $0xc,%esp
    1370:	ff 75 f4             	push   -0xc(%ebp)
    1373:	ff 75 f4             	push   -0xc(%ebp)
    1376:	52                   	push   %edx
    1377:	50                   	push   %eax
    1378:	8d 83 e8 e0 ff ff    	lea    -0x1f18(%ebx),%eax
    137e:	50                   	push   %eax
    137f:	e8 bc fc ff ff       	call   1040 <printf@plt>
    1384:	83 c4 20             	add    $0x20,%esp
    1387:	eb 1a                	jmp    13a3 <main+0x141>
    } else {
        printf("%u * %u is overflow based on C\n", ux, uy);
    1389:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    138c:	8b 45 e8             	mov    -0x18(%ebp),%eax
    138f:	83 ec 04             	sub    $0x4,%esp
    1392:	52                   	push   %edx
    1393:	50                   	push   %eax
    1394:	8d 83 fc e0 ff ff    	lea    -0x1f04(%ebx),%eax
    139a:	50                   	push   %eax
    139b:	e8 a0 fc ff ff       	call   1040 <printf@plt>
    13a0:	83 c4 10             	add    $0x10,%esp
    }
    return 0;
    13a3:	b8 00 00 00 00       	mov    $0x0,%eax
}
    13a8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    13ab:	59                   	pop    %ecx
    13ac:	5b                   	pop    %ebx
    13ad:	5d                   	pop    %ebp
    13ae:	8d 61 fc             	lea    -0x4(%ecx),%esp
    13b1:	c3                   	ret

000013b2 <__x86.get_pc_thunk.ax>:
    13b2:	8b 04 24             	mov    (%esp),%eax
    13b5:	c3                   	ret

Disassembly of section .fini:

000013b8 <_fini>:
    13b8:	53                   	push   %ebx
    13b9:	83 ec 08             	sub    $0x8,%esp
    13bc:	e8 df fc ff ff       	call   10a0 <__x86.get_pc_thunk.bx>
    13c1:	81 c3 33 2c 00 00    	add    $0x2c33,%ebx
    13c7:	83 c4 08             	add    $0x8,%esp
    13ca:	5b                   	pop    %ebx
    13cb:	c3                   	ret
