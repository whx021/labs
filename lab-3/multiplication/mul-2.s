
mul-2:     file format elf32-i386


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

00001189 <umul>:
#include <stdio.h>

unsigned umul(unsigned x, unsigned y) {
    1189:	55                   	push   %ebp
    118a:	89 e5                	mov    %esp,%ebp
    118c:	e8 d1 00 00 00       	call   1262 <__x86.get_pc_thunk.ax>
    1191:	05 63 2e 00 00       	add    $0x2e63,%eax
    asm(
    1196:	8b 45 08             	mov    0x8(%ebp),%eax
    1199:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    119c:	f7 e1                	mul    %ecx
        "mov    8(%ebp), %eax\n\t"
        "mov    0xc(%ebp), %ecx\n\t"
        "mul    %ecx\n\t"
    );
}
    119e:	90                   	nop
    119f:	5d                   	pop    %ebp
    11a0:	c3                   	ret

000011a1 <imul>:

int imul(int x, int y) {
    11a1:	55                   	push   %ebp
    11a2:	89 e5                	mov    %esp,%ebp
    11a4:	e8 b9 00 00 00       	call   1262 <__x86.get_pc_thunk.ax>
    11a9:	05 4b 2e 00 00       	add    $0x2e4b,%eax
    asm(
    11ae:	8b 45 08             	mov    0x8(%ebp),%eax
    11b1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    11b4:	f7 e9                	imul   %ecx
        "mov    8(%ebp), %eax\n\t"
        "mov    0xc(%ebp), %ecx\n\t"
        "imul   %ecx\n\t"
    );
}
    11b6:	90                   	nop
    11b7:	5d                   	pop    %ebp
    11b8:	c3                   	ret

000011b9 <main>:

int main(int argc, char ** argv) {
    11b9:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11bd:	83 e4 f0             	and    $0xfffffff0,%esp
    11c0:	ff 71 fc             	push   -0x4(%ecx)
    11c3:	55                   	push   %ebp
    11c4:	89 e5                	mov    %esp,%ebp
    11c6:	53                   	push   %ebx
    11c7:	51                   	push   %ecx
    11c8:	83 ec 20             	sub    $0x20,%esp
    11cb:	e8 c0 fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    11d0:	81 c3 24 2e 00 00    	add    $0x2e24,%ebx
    int x = -1610612735, y = 8;         // x = 0xa0000001
    11d6:	c7 45 f4 01 00 00 a0 	movl   $0xa0000001,-0xc(%ebp)
    11dd:	c7 45 f0 08 00 00 00 	movl   $0x8,-0x10(%ebp)
    unsigned ux = 2684354561, uy = 8;   // ux = 0xa0000001
    11e4:	c7 45 ec 01 00 00 a0 	movl   $0xa0000001,-0x14(%ebp)
    11eb:	c7 45 e8 08 00 00 00 	movl   $0x8,-0x18(%ebp)
    int z;
    z = imul(x, y);
    11f2:	ff 75 f0             	push   -0x10(%ebp)
    11f5:	ff 75 f4             	push   -0xc(%ebp)
    11f8:	e8 a4 ff ff ff       	call   11a1 <imul>
    11fd:	83 c4 08             	add    $0x8,%esp
    1200:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    printf("%d * %d = %xH = %d\n", x, y, z, z);
    1203:	83 ec 0c             	sub    $0xc,%esp
    1206:	ff 75 e4             	push   -0x1c(%ebp)
    1209:	ff 75 e4             	push   -0x1c(%ebp)
    120c:	ff 75 f0             	push   -0x10(%ebp)
    120f:	ff 75 f4             	push   -0xc(%ebp)
    1212:	8d 83 14 e0 ff ff    	lea    -0x1fec(%ebx),%eax
    1218:	50                   	push   %eax
    1219:	e8 22 fe ff ff       	call   1040 <printf@plt>
    121e:	83 c4 20             	add    $0x20,%esp
    z = umul(ux, uy);
    1221:	83 ec 08             	sub    $0x8,%esp
    1224:	ff 75 e8             	push   -0x18(%ebp)
    1227:	ff 75 ec             	push   -0x14(%ebp)
    122a:	e8 5a ff ff ff       	call   1189 <umul>
    122f:	83 c4 10             	add    $0x10,%esp
    1232:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    printf("%u * %u = %xH = %d\n", ux, uy, z, z);
    1235:	83 ec 0c             	sub    $0xc,%esp
    1238:	ff 75 e4             	push   -0x1c(%ebp)
    123b:	ff 75 e4             	push   -0x1c(%ebp)
    123e:	ff 75 e8             	push   -0x18(%ebp)
    1241:	ff 75 ec             	push   -0x14(%ebp)
    1244:	8d 83 28 e0 ff ff    	lea    -0x1fd8(%ebx),%eax
    124a:	50                   	push   %eax
    124b:	e8 f0 fd ff ff       	call   1040 <printf@plt>
    1250:	83 c4 20             	add    $0x20,%esp
    return 0;
    1253:	b8 00 00 00 00       	mov    $0x0,%eax
}
    1258:	8d 65 f8             	lea    -0x8(%ebp),%esp
    125b:	59                   	pop    %ecx
    125c:	5b                   	pop    %ebx
    125d:	5d                   	pop    %ebp
    125e:	8d 61 fc             	lea    -0x4(%ecx),%esp
    1261:	c3                   	ret

00001262 <__x86.get_pc_thunk.ax>:
    1262:	8b 04 24             	mov    (%esp),%eax
    1265:	c3                   	ret

Disassembly of section .fini:

00001268 <_fini>:
    1268:	53                   	push   %ebx
    1269:	83 ec 08             	sub    $0x8,%esp
    126c:	e8 1f fe ff ff       	call   1090 <__x86.get_pc_thunk.bx>
    1271:	81 c3 83 2d 00 00    	add    $0x2d83,%ebx
    1277:	83 c4 08             	add    $0x8,%esp
    127a:	5b                   	pop    %ebx
    127b:	c3                   	ret
