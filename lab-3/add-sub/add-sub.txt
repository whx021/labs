
add-sub:     file format elf32-i386


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

00001189 <addition>:
#include <stdio.h>

int addition(int x, int y) {
    1189:	55                   	push   %ebp
    118a:	89 e5                	mov    %esp,%ebp
    118c:	e8 59 01 00 00       	call   12ea <__x86.get_pc_thunk.ax>
    1191:	05 63 2e 00 00       	add    $0x2e63,%eax
    asm (
    1196:	8b 45 08             	mov    0x8(%ebp),%eax
    1199:	03 45 0c             	add    0xc(%ebp),%eax
        "mov 8(%ebp), %eax\n\t"
        "add 0xc(%ebp), %eax\n\t"
    );   
}
    119c:	90                   	nop
    119d:	5d                   	pop    %ebp
    119e:	c3                   	ret

0000119f <subtraction>:

int subtraction(int x, int y) {
    119f:	55                   	push   %ebp
    11a0:	89 e5                	mov    %esp,%ebp
    11a2:	e8 43 01 00 00       	call   12ea <__x86.get_pc_thunk.ax>
    11a7:	05 4d 2e 00 00       	add    $0x2e4d,%eax
    asm (
    11ac:	8b 45 08             	mov    0x8(%ebp),%eax
    11af:	2b 45 0c             	sub    0xc(%ebp),%eax
        "mov 8(%ebp), %eax\n\t"
        "sub 0xc(%ebp), %eax\n\t"
    );
}
    11b2:	90                   	nop
    11b3:	5d                   	pop    %ebp
    11b4:	c3                   	ret

000011b5 <main>:

int main(int argc, char **argv) {
    11b5:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11b9:	83 e4 f0             	and    $0xfffffff0,%esp
    11bc:	ff 71 fc             	push   -0x4(%ecx)
    11bf:	55                   	push   %ebp
    11c0:	89 e5                	mov    %esp,%ebp
    11c2:	53                   	push   %ebx
    11c3:	51                   	push   %ecx
    11c4:	83 ec 30             	sub    $0x30,%esp
    11c7:	e8 c4 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11cc:	81 c3 28 2e 00 00    	add    $0x2e28,%ebx
    int ix = 10, iy = 4, az, sz, z;
    11d2:	c7 45 f4 0a 00 00 00 	movl   $0xa,-0xc(%ebp)
    11d9:	c7 45 f0 04 00 00 00 	movl   $0x4,-0x10(%ebp)
    unsigned ux = 10, uy = 4, auz, suz, uz;
    11e0:	c7 45 ec 0a 00 00 00 	movl   $0xa,-0x14(%ebp)
    11e7:	c7 45 e8 04 00 00 00 	movl   $0x4,-0x18(%ebp)
    az = addition(ix, iy);
    11ee:	ff 75 f0             	push   -0x10(%ebp)
    11f1:	ff 75 f4             	push   -0xc(%ebp)
    11f4:	e8 90 ff ff ff       	call   1189 <addition>
    11f9:	83 c4 08             	add    $0x8,%esp
    11fc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    auz = addition(ux, uy);
    11ff:	8b 55 e8             	mov    -0x18(%ebp),%edx
    1202:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1205:	52                   	push   %edx
    1206:	50                   	push   %eax
    1207:	e8 7d ff ff ff       	call   1189 <addition>
    120c:	83 c4 08             	add    $0x8,%esp
    120f:	89 45 e0             	mov    %eax,-0x20(%ebp)
    printf("%d + %d = %d, %u + %u = %u\n", ix, iy, az, ux, uy, auz);
    1212:	83 ec 04             	sub    $0x4,%esp
    1215:	ff 75 e0             	push   -0x20(%ebp)
    1218:	ff 75 e8             	push   -0x18(%ebp)
    121b:	ff 75 ec             	push   -0x14(%ebp)
    121e:	ff 75 e4             	push   -0x1c(%ebp)
    1221:	ff 75 f0             	push   -0x10(%ebp)
    1224:	ff 75 f4             	push   -0xc(%ebp)
    1227:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    122d:	50                   	push   %eax
    122e:	e8 0d fe ff ff       	call   1040 <printf@plt>
    1233:	83 c4 20             	add    $0x20,%esp
    sz = subtraction(ix, iy);
    1236:	83 ec 08             	sub    $0x8,%esp
    1239:	ff 75 f0             	push   -0x10(%ebp)
    123c:	ff 75 f4             	push   -0xc(%ebp)
    123f:	e8 5b ff ff ff       	call   119f <subtraction>
    1244:	83 c4 10             	add    $0x10,%esp
    1247:	89 45 dc             	mov    %eax,-0x24(%ebp)
    suz = subtraction(ux, uy);
    124a:	8b 55 e8             	mov    -0x18(%ebp),%edx
    124d:	8b 45 ec             	mov    -0x14(%ebp),%eax
    1250:	83 ec 08             	sub    $0x8,%esp
    1253:	52                   	push   %edx
    1254:	50                   	push   %eax
    1255:	e8 45 ff ff ff       	call   119f <subtraction>
    125a:	83 c4 10             	add    $0x10,%esp
    125d:	89 45 d8             	mov    %eax,-0x28(%ebp)
    printf("%d - %d = %d, %u - %u = %u\n", ix, iy, sz, ux, uy, suz);
    1260:	83 ec 04             	sub    $0x4,%esp
    1263:	ff 75 d8             	push   -0x28(%ebp)
    1266:	ff 75 e8             	push   -0x18(%ebp)
    1269:	ff 75 ec             	push   -0x14(%ebp)
    126c:	ff 75 dc             	push   -0x24(%ebp)
    126f:	ff 75 f0             	push   -0x10(%ebp)
    1272:	ff 75 f4             	push   -0xc(%ebp)
    1275:	8d 83 30 e0 ff ff    	lea    -0x1fd0(%ebx),%eax
    127b:	50                   	push   %eax
    127c:	e8 bf fd ff ff       	call   1040 <printf@plt>
    1281:	83 c4 20             	add    $0x20,%esp
    z = addition(2147483647, 1);
    1284:	83 ec 08             	sub    $0x8,%esp
    1287:	6a 01                	push   $0x1
    1289:	68 ff ff ff 7f       	push   $0x7fffffff
    128e:	e8 f6 fe ff ff       	call   1189 <addition>
    1293:	83 c4 10             	add    $0x10,%esp
    1296:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    printf("2147483647 + 1 : %d, %u\n", z, z);
    1299:	83 ec 04             	sub    $0x4,%esp
    129c:	ff 75 d4             	push   -0x2c(%ebp)
    129f:	ff 75 d4             	push   -0x2c(%ebp)
    12a2:	8d 83 4c e0 ff ff    	lea    -0x1fb4(%ebx),%eax
    12a8:	50                   	push   %eax
    12a9:	e8 92 fd ff ff       	call   1040 <printf@plt>
    12ae:	83 c4 10             	add    $0x10,%esp
    uz = subtraction(3, 4);
    12b1:	83 ec 08             	sub    $0x8,%esp
    12b4:	6a 04                	push   $0x4
    12b6:	6a 03                	push   $0x3
    12b8:	e8 e2 fe ff ff       	call   119f <subtraction>
    12bd:	83 c4 10             	add    $0x10,%esp
    12c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
    printf("3 - 4 : %d, %u\n", uz, uz);
    12c3:	83 ec 04             	sub    $0x4,%esp
    12c6:	ff 75 d0             	push   -0x30(%ebp)
    12c9:	ff 75 d0             	push   -0x30(%ebp)
    12cc:	8d 83 65 e0 ff ff    	lea    -0x1f9b(%ebx),%eax
    12d2:	50                   	push   %eax
    12d3:	e8 68 fd ff ff       	call   1040 <printf@plt>
    12d8:	83 c4 10             	add    $0x10,%esp
    return 0;
    12db:	b8 00 00 00 00       	mov    $0x0,%eax
}
    12e0:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12e3:	59                   	pop    %ecx
    12e4:	5b                   	pop    %ebx
    12e5:	5d                   	pop    %ebp
    12e6:	8d 61 fc             	lea    -0x4(%ecx),%esp
    12e9:	c3                   	ret

000012ea <__x86.get_pc_thunk.ax>:
    12ea:	8b 04 24             	mov    (%esp),%eax
    12ed:	c3                   	ret

Disassembly of section .fini:

000012f0 <_fini>:
    12f0:	53                   	push   %ebx
    12f1:	83 ec 08             	sub    $0x8,%esp
    12f4:	e8 97 fd ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    12f9:	81 c3 fb 2c 00 00    	add    $0x2cfb,%ebx
    12ff:	83 c4 08             	add    $0x8,%esp
    1302:	5b                   	pop    %ebx
    1303:	c3                   	ret
