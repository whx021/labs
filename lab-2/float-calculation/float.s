
float:     file format elf32-i386


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
int  main() {
    1189:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    118d:	83 e4 f0             	and    $0xfffffff0,%esp
    1190:	ff 71 fc             	push   -0x4(%ecx)
    1193:	55                   	push   %ebp
    1194:	89 e5                	mov    %esp,%ebp
    1196:	53                   	push   %ebx
    1197:	51                   	push   %ecx
    1198:	83 ec 50             	sub    $0x50,%esp
    119b:	e8 f0 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11a0:	81 c3 54 2e 00 00    	add    $0x2e54,%ebx
	float finf1 = 4e38, finf2 = 5e38, finf3 = 6e38;	//正无穷大
    11a6:	d9 83 4c e0 ff ff    	flds   -0x1fb4(%ebx)
    11ac:	d9 5d f4             	fstps  -0xc(%ebp)
    11af:	d9 83 4c e0 ff ff    	flds   -0x1fb4(%ebx)
    11b5:	d9 5d f0             	fstps  -0x10(%ebp)
    11b8:	d9 83 4c e0 ff ff    	flds   -0x1fb4(%ebx)
    11be:	d9 5d ec             	fstps  -0x14(%ebp)
	float fninf1 = -4e38, fninf2 = -5e38, fninf3 = -6e38;	//负无穷大
    11c1:	d9 83 50 e0 ff ff    	flds   -0x1fb0(%ebx)
    11c7:	d9 5d e8             	fstps  -0x18(%ebp)
    11ca:	d9 83 50 e0 ff ff    	flds   -0x1fb0(%ebx)
    11d0:	d9 5d e4             	fstps  -0x1c(%ebp)
    11d3:	d9 83 50 e0 ff ff    	flds   -0x1fb0(%ebx)
    11d9:	d9 5d e0             	fstps  -0x20(%ebp)
	float fzero = 0, fnzero = -fzero;
    11dc:	d9 ee                	fldz
    11de:	d9 5d dc             	fstps  -0x24(%ebp)
    11e1:	d9 45 dc             	flds   -0x24(%ebp)
    11e4:	d9 e0                	fchs
    11e6:	d9 5d d8             	fstps  -0x28(%ebp)
	float fnormal1 = 5.0, fnormal2 = 0.1, fnnormal1 = -5.0, fnnormal2 = -0.1;	//规格化数
    11e9:	d9 83 54 e0 ff ff    	flds   -0x1fac(%ebx)
    11ef:	d9 5d d4             	fstps  -0x2c(%ebp)
    11f2:	d9 83 58 e0 ff ff    	flds   -0x1fa8(%ebx)
    11f8:	d9 5d d0             	fstps  -0x30(%ebp)
    11fb:	d9 83 5c e0 ff ff    	flds   -0x1fa4(%ebx)
    1201:	d9 5d cc             	fstps  -0x34(%ebp)
    1204:	d9 83 60 e0 ff ff    	flds   -0x1fa0(%ebx)
    120a:	d9 5d c8             	fstps  -0x38(%ebp)
	float ffrac = 1e-40, fnfrac = -1e-40;	//非规格化数
    120d:	d9 83 64 e0 ff ff    	flds   -0x1f9c(%ebx)
    1213:	d9 5d c4             	fstps  -0x3c(%ebp)
    1216:	d9 83 68 e0 ff ff    	flds   -0x1f98(%ebx)
    121c:	d9 5d c0             	fstps  -0x40(%ebp)
	float fnan1 = finf1 + fninf1, fnan2 = -fnan1;	//无定义数
    121f:	d9 45 f4             	flds   -0xc(%ebp)
    1222:	d8 45 e8             	fadds  -0x18(%ebp)
    1225:	d9 5d bc             	fstps  -0x44(%ebp)
    1228:	d9 45 bc             	flds   -0x44(%ebp)
    122b:	d9 e0                	fchs
    122d:	d9 5d b8             	fstps  -0x48(%ebp)
	float finf4 = fnormal1 / fzero;	//除以0，无穷大
    1230:	d9 45 d4             	flds   -0x2c(%ebp)
    1233:	d8 75 dc             	fdivs  -0x24(%ebp)
    1236:	d9 5d b4             	fstps  -0x4c(%ebp)
	printf("%f %f %f\n", finf1, finf2, finf3);
    1239:	d9 45 ec             	flds   -0x14(%ebp)
    123c:	d9 45 f0             	flds   -0x10(%ebp)
    123f:	d9 45 f4             	flds   -0xc(%ebp)
    1242:	d9 ca                	fxch   %st(2)
    1244:	83 ec 04             	sub    $0x4,%esp
    1247:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    124b:	dd 1c 24             	fstpl  (%esp)
    124e:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1252:	dd 1c 24             	fstpl  (%esp)
    1255:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1259:	dd 1c 24             	fstpl  (%esp)
    125c:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    1262:	50                   	push   %eax
    1263:	e8 d8 fd ff ff       	call   1040 <printf@plt>
    1268:	83 c4 20             	add    $0x20,%esp
	printf("%f %f %f\n", fninf1, fninf2, fninf3);
    126b:	d9 45 e0             	flds   -0x20(%ebp)
    126e:	d9 45 e4             	flds   -0x1c(%ebp)
    1271:	d9 45 e8             	flds   -0x18(%ebp)
    1274:	d9 ca                	fxch   %st(2)
    1276:	83 ec 04             	sub    $0x4,%esp
    1279:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    127d:	dd 1c 24             	fstpl  (%esp)
    1280:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1284:	dd 1c 24             	fstpl  (%esp)
    1287:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    128b:	dd 1c 24             	fstpl  (%esp)
    128e:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    1294:	50                   	push   %eax
    1295:	e8 a6 fd ff ff       	call   1040 <printf@plt>
    129a:	83 c4 20             	add    $0x20,%esp
	printf("%f %f\n", fzero, fnzero);
    129d:	d9 45 dc             	flds   -0x24(%ebp)
    12a0:	d9 45 d8             	flds   -0x28(%ebp)
    12a3:	83 ec 0c             	sub    $0xc,%esp
    12a6:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12aa:	dd 1c 24             	fstpl  (%esp)
    12ad:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12b1:	dd 1c 24             	fstpl  (%esp)
    12b4:	8d 83 1e e0 ff ff    	lea    -0x1fe2(%ebx),%eax
    12ba:	50                   	push   %eax
    12bb:	e8 80 fd ff ff       	call   1040 <printf@plt>
    12c0:	83 c4 20             	add    $0x20,%esp
	printf("%f %.20f\n%f %.20f\n", fnormal1, fnormal2, fnnormal1, fnnormal2);
    12c3:	d9 45 c8             	flds   -0x38(%ebp)
    12c6:	d9 45 cc             	flds   -0x34(%ebp)
    12c9:	d9 45 d0             	flds   -0x30(%ebp)
    12cc:	d9 45 d4             	flds   -0x2c(%ebp)
    12cf:	d9 cb                	fxch   %st(3)
    12d1:	83 ec 0c             	sub    $0xc,%esp
    12d4:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12d8:	dd 1c 24             	fstpl  (%esp)
    12db:	d9 c9                	fxch   %st(1)
    12dd:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12e1:	dd 1c 24             	fstpl  (%esp)
    12e4:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12e8:	dd 1c 24             	fstpl  (%esp)
    12eb:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12ef:	dd 1c 24             	fstpl  (%esp)
    12f2:	8d 83 25 e0 ff ff    	lea    -0x1fdb(%ebx),%eax
    12f8:	50                   	push   %eax
    12f9:	e8 42 fd ff ff       	call   1040 <printf@plt>
    12fe:	83 c4 30             	add    $0x30,%esp
	printf("%.50f\n%.50f\n", ffrac, fnfrac);
    1301:	d9 45 c4             	flds   -0x3c(%ebp)
    1304:	d9 45 c0             	flds   -0x40(%ebp)
    1307:	83 ec 0c             	sub    $0xc,%esp
    130a:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    130e:	dd 1c 24             	fstpl  (%esp)
    1311:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1315:	dd 1c 24             	fstpl  (%esp)
    1318:	8d 83 38 e0 ff ff    	lea    -0x1fc8(%ebx),%eax
    131e:	50                   	push   %eax
    131f:	e8 1c fd ff ff       	call   1040 <printf@plt>
    1324:	83 c4 20             	add    $0x20,%esp
	printf("%f %f\n", fnan1, fnan2);
    1327:	d9 45 bc             	flds   -0x44(%ebp)
    132a:	d9 45 b8             	flds   -0x48(%ebp)
    132d:	83 ec 0c             	sub    $0xc,%esp
    1330:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1334:	dd 1c 24             	fstpl  (%esp)
    1337:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    133b:	dd 1c 24             	fstpl  (%esp)
    133e:	8d 83 1e e0 ff ff    	lea    -0x1fe2(%ebx),%eax
    1344:	50                   	push   %eax
    1345:	e8 f6 fc ff ff       	call   1040 <printf@plt>
    134a:	83 c4 20             	add    $0x20,%esp
	printf("%f\n", finf4);
    134d:	d9 45 b4             	flds   -0x4c(%ebp)
    1350:	83 ec 04             	sub    $0x4,%esp
    1353:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    1357:	dd 1c 24             	fstpl  (%esp)
    135a:	8d 83 45 e0 ff ff    	lea    -0x1fbb(%ebx),%eax
    1360:	50                   	push   %eax
    1361:	e8 da fc ff ff       	call   1040 <printf@plt>
    1366:	83 c4 10             	add    $0x10,%esp
    return 0;
    1369:	b8 00 00 00 00       	mov    $0x0,%eax
}
    136e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1371:	59                   	pop    %ecx
    1372:	5b                   	pop    %ebx
    1373:	5d                   	pop    %ebp
    1374:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1377:	c3                   	ret

Disassembly of section .fini:

00001378 <_fini>:
    1378:	53                   	push   %ebx
    1379:	83 ec 08             	sub    $0x8,%esp
    137c:	e8 0f fd ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    1381:	81 c3 73 2c 00 00    	add    $0x2c73,%ebx
    1387:	83 c4 08             	add    $0x8,%esp
    138a:	5b                   	pop    %ebx
    138b:	c3                   	ret
