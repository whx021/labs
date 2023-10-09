
gdbtest.o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include <stdio.h>

int main(){
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
  12:	e8 fc ff ff ff       	call   13 <main+0x13>
  17:	05 01 00 00 00       	add    $0x1,%eax
    int x = 3, y = 5, z;
  1c:	c7 45 f4 03 00 00 00 	movl   $0x3,-0xc(%ebp)
  23:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%ebp)
    z = x + y;
  2a:	8b 4d f4             	mov    -0xc(%ebp),%ecx
  2d:	8b 55 f0             	mov    -0x10(%ebp),%edx
  30:	01 ca                	add    %ecx,%edx
  32:	89 55 ec             	mov    %edx,-0x14(%ebp)
    printf("z = %d\n", z);
  35:	83 ec 08             	sub    $0x8,%esp
  38:	ff 75 ec             	push   -0x14(%ebp)
  3b:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
  41:	52                   	push   %edx
  42:	89 c3                	mov    %eax,%ebx
  44:	e8 fc ff ff ff       	call   45 <main+0x45>
  49:	83 c4 10             	add    $0x10,%esp
    return 0;
  4c:	b8 00 00 00 00       	mov    $0x0,%eax
}
  51:	8d 65 f8             	lea    -0x8(%ebp),%esp
  54:	59                   	pop    %ecx
  55:	5b                   	pop    %ebx
  56:	5d                   	pop    %ebp
  57:	8d 61 fc             	lea    -0x4(%ecx),%esp
  5a:	c3                   	ret

Disassembly of section .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	mov    (%esp),%eax
   3:	c3                   	ret
