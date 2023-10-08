
float-round:     file format elf32-i386


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
    1196:	56                   	push   %esi
    1197:	53                   	push   %ebx
    1198:	51                   	push   %ecx
    1199:	83 ec 4c             	sub    $0x4c,%esp
    119c:	e8 ef fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11a1:	81 c3 53 2e 00 00    	add    $0x2e53,%ebx
	float a1 = 0x8000000, a2 = 0x8000001, a3 = 0x8000014, a4 = 0x8000017;
    11a7:	d9 83 60 e0 ff ff    	flds   -0x1fa0(%ebx)
    11ad:	d9 5d e4             	fstps  -0x1c(%ebp)
    11b0:	d9 83 60 e0 ff ff    	flds   -0x1fa0(%ebx)
    11b6:	d9 5d e0             	fstps  -0x20(%ebp)
    11b9:	d9 83 64 e0 ff ff    	flds   -0x1f9c(%ebx)
    11bf:	d9 5d dc             	fstps  -0x24(%ebp)
    11c2:	d9 83 64 e0 ff ff    	flds   -0x1f9c(%ebx)
    11c8:	d9 5d d8             	fstps  -0x28(%ebp)
	float b1 = 0x8000019, b2 = 0x800000c, b3 = 0x800000d;
    11cb:	d9 83 68 e0 ff ff    	flds   -0x1f98(%ebx)
    11d1:	d9 5d d4             	fstps  -0x2c(%ebp)
    11d4:	d9 83 64 e0 ff ff    	flds   -0x1f9c(%ebx)
    11da:	d9 5d d0             	fstps  -0x30(%ebp)
    11dd:	d9 83 64 e0 ff ff    	flds   -0x1f9c(%ebx)
    11e3:	d9 5d cc             	fstps  -0x34(%ebp)
	float c1 = 0x8000008, c2 = 0x8000018;
    11e6:	d9 83 60 e0 ff ff    	flds   -0x1fa0(%ebx)
    11ec:	d9 5d c8             	fstps  -0x38(%ebp)
    11ef:	d9 83 68 e0 ff ff    	flds   -0x1f98(%ebx)
    11f5:	d9 5d c4             	fstps  -0x3c(%ebp)
	float g = 0.1;
    11f8:	d9 83 6c e0 ff ff    	flds   -0x1f94(%ebx)
    11fe:	d9 5d c0             	fstps  -0x40(%ebp)
	printf("a1=%xH,a2=%xH,a3=%xH,a4=%xH\n",(int)a1,(int)a2,(int)a3,(int)a4);
    1201:	d9 45 d8             	flds   -0x28(%ebp)
    1204:	d9 7d b6             	fnstcw -0x4a(%ebp)
    1207:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
    120b:	80 cc 0c             	or     $0xc,%ah
    120e:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
    1212:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1215:	db 5d b0             	fistpl -0x50(%ebp)
    1218:	d9 6d b6             	fldcw  -0x4a(%ebp)
    121b:	8b 75 b0             	mov    -0x50(%ebp),%esi
    121e:	d9 45 dc             	flds   -0x24(%ebp)
    1221:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1224:	db 5d b0             	fistpl -0x50(%ebp)
    1227:	d9 6d b6             	fldcw  -0x4a(%ebp)
    122a:	8b 4d b0             	mov    -0x50(%ebp),%ecx
    122d:	d9 45 e0             	flds   -0x20(%ebp)
    1230:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1233:	db 5d b0             	fistpl -0x50(%ebp)
    1236:	d9 6d b6             	fldcw  -0x4a(%ebp)
    1239:	8b 55 b0             	mov    -0x50(%ebp),%edx
    123c:	d9 45 e4             	flds   -0x1c(%ebp)
    123f:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1242:	db 5d b0             	fistpl -0x50(%ebp)
    1245:	d9 6d b6             	fldcw  -0x4a(%ebp)
    1248:	8b 45 b0             	mov    -0x50(%ebp),%eax
    124b:	83 ec 0c             	sub    $0xc,%esp
    124e:	56                   	push   %esi
    124f:	51                   	push   %ecx
    1250:	52                   	push   %edx
    1251:	50                   	push   %eax
    1252:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    1258:	50                   	push   %eax
    1259:	e8 e2 fd ff ff       	call   1040 <printf@plt>
    125e:	83 c4 20             	add    $0x20,%esp
	printf("b1=%xH,b2=%xH,b3=%xH\n",(int)b1,(int)b2,(int)b3);
    1261:	d9 45 cc             	flds   -0x34(%ebp)
    1264:	d9 7d b6             	fnstcw -0x4a(%ebp)
    1267:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
    126b:	80 cc 0c             	or     $0xc,%ah
    126e:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
    1272:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1275:	db 5d b0             	fistpl -0x50(%ebp)
    1278:	d9 6d b6             	fldcw  -0x4a(%ebp)
    127b:	8b 4d b0             	mov    -0x50(%ebp),%ecx
    127e:	d9 45 d0             	flds   -0x30(%ebp)
    1281:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1284:	db 5d b0             	fistpl -0x50(%ebp)
    1287:	d9 6d b6             	fldcw  -0x4a(%ebp)
    128a:	8b 55 b0             	mov    -0x50(%ebp),%edx
    128d:	d9 45 d4             	flds   -0x2c(%ebp)
    1290:	d9 6d b4             	fldcw  -0x4c(%ebp)
    1293:	db 5d b0             	fistpl -0x50(%ebp)
    1296:	d9 6d b6             	fldcw  -0x4a(%ebp)
    1299:	8b 45 b0             	mov    -0x50(%ebp),%eax
    129c:	51                   	push   %ecx
    129d:	52                   	push   %edx
    129e:	50                   	push   %eax
    129f:	8d 83 31 e0 ff ff    	lea    -0x1fcf(%ebx),%eax
    12a5:	50                   	push   %eax
    12a6:	e8 95 fd ff ff       	call   1040 <printf@plt>
    12ab:	83 c4 10             	add    $0x10,%esp
	printf("c1=%xH,c2=%xH\n",(int)c1,(int)c2);
    12ae:	d9 45 c4             	flds   -0x3c(%ebp)
    12b1:	d9 7d b6             	fnstcw -0x4a(%ebp)
    12b4:	0f b7 45 b6          	movzwl -0x4a(%ebp),%eax
    12b8:	80 cc 0c             	or     $0xc,%ah
    12bb:	66 89 45 b4          	mov    %ax,-0x4c(%ebp)
    12bf:	d9 6d b4             	fldcw  -0x4c(%ebp)
    12c2:	db 5d b0             	fistpl -0x50(%ebp)
    12c5:	d9 6d b6             	fldcw  -0x4a(%ebp)
    12c8:	8b 55 b0             	mov    -0x50(%ebp),%edx
    12cb:	d9 45 c8             	flds   -0x38(%ebp)
    12ce:	d9 6d b4             	fldcw  -0x4c(%ebp)
    12d1:	db 5d b0             	fistpl -0x50(%ebp)
    12d4:	d9 6d b6             	fldcw  -0x4a(%ebp)
    12d7:	8b 45 b0             	mov    -0x50(%ebp),%eax
    12da:	83 ec 04             	sub    $0x4,%esp
    12dd:	52                   	push   %edx
    12de:	50                   	push   %eax
    12df:	8d 83 47 e0 ff ff    	lea    -0x1fb9(%ebx),%eax
    12e5:	50                   	push   %eax
    12e6:	e8 55 fd ff ff       	call   1040 <printf@plt>
    12eb:	83 c4 10             	add    $0x10,%esp
	printf("g=%.20f\n",g);
    12ee:	d9 45 c0             	flds   -0x40(%ebp)
    12f1:	83 ec 04             	sub    $0x4,%esp
    12f4:	8d 64 24 f8          	lea    -0x8(%esp),%esp
    12f8:	dd 1c 24             	fstpl  (%esp)
    12fb:	8d 83 56 e0 ff ff    	lea    -0x1faa(%ebx),%eax
    1301:	50                   	push   %eax
    1302:	e8 39 fd ff ff       	call   1040 <printf@plt>
    1307:	83 c4 10             	add    $0x10,%esp
    130a:	b8 00 00 00 00       	mov    $0x0,%eax

}
    130f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1312:	59                   	pop    %ecx
    1313:	5b                   	pop    %ebx
    1314:	5e                   	pop    %esi
    1315:	5d                   	pop    %ebp
    1316:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1319:	c3                   	ret

Disassembly of section .fini:

0000131c <_fini>:
    131c:	53                   	push   %ebx
    131d:	83 ec 08             	sub    $0x8,%esp
    1320:	e8 6b fd ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    1325:	81 c3 cf 2c 00 00    	add    $0x2ccf,%ebx
    132b:	83 c4 08             	add    $0x8,%esp
    132e:	5b                   	pop    %ebx
    132f:	c3                   	ret
