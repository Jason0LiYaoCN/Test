
main.elf:     file format elf32-littlearm


Disassembly of section .text:

00010000 <isr_vectors>:
	...
   100d8:	dc 00 01 00                                         ....

000100dc <I3CRX_Handler>:
   100dc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   100e0:	e28db000 	add	fp, sp, #0
   100e4:	e24dd014 	sub	sp, sp, #20
   100e8:	e59f305c 	ldr	r3, [pc, #92]	; 1014c <I3CRX_Handler+0x70>
   100ec:	e50b3008 	str	r3, [fp, #-8]
   100f0:	e59f3058 	ldr	r3, [pc, #88]	; 10150 <I3CRX_Handler+0x74>
   100f4:	e50b300c 	str	r3, [fp, #-12]
   100f8:	e59f3054 	ldr	r3, [pc, #84]	; 10154 <I3CRX_Handler+0x78>
   100fc:	e50b3010 	str	r3, [fp, #-16]
   10100:	e3a03000 	mov	r3, #0
   10104:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10108:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   1010c:	e1a03103 	lsl	r3, r3, #2
   10110:	e51b2010 	ldr	r2, [fp, #-16]
   10114:	e0823003 	add	r3, r2, r3
   10118:	e51b200c 	ldr	r2, [fp, #-12]
   1011c:	e5922000 	ldr	r2, [r2]
   10120:	e5832000 	str	r2, [r3]
   10124:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10128:	e2833004 	add	r3, r3, #4
   1012c:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10130:	e51b3008 	ldr	r3, [fp, #-8]
   10134:	e3a02000 	mov	r2, #0
   10138:	e5832000 	str	r2, [r3]
   1013c:	e1a00000 	nop			; (mov r0, r0)
   10140:	e28bd000 	add	sp, fp, #0
   10144:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10148:	e12fff1e 	bx	lr
   1014c:	101f1070 	.word	0x101f1070
   10150:	101f1080 	.word	0x101f1080
   10154:	101f1090 	.word	0x101f1090

00010158 <I3C_Slave_Init>:
   10158:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1015c:	e28db000 	add	fp, sp, #0
   10160:	e24dd04c 	sub	sp, sp, #76	; 0x4c
   10164:	e59f31e0 	ldr	r3, [pc, #480]	; 1034c <I3C_Slave_Init+0x1f4>
   10168:	e50b3008 	str	r3, [fp, #-8]
   1016c:	e59f31dc 	ldr	r3, [pc, #476]	; 10350 <I3C_Slave_Init+0x1f8>
   10170:	e50b300c 	str	r3, [fp, #-12]
   10174:	e59f31d8 	ldr	r3, [pc, #472]	; 10354 <I3C_Slave_Init+0x1fc>
   10178:	e50b3010 	str	r3, [fp, #-16]
   1017c:	e59f31d4 	ldr	r3, [pc, #468]	; 10358 <I3C_Slave_Init+0x200>
   10180:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
   10184:	e59f31d0 	ldr	r3, [pc, #464]	; 1035c <I3C_Slave_Init+0x204>
   10188:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
   1018c:	e59f31cc 	ldr	r3, [pc, #460]	; 10360 <I3C_Slave_Init+0x208>
   10190:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
   10194:	e59f31c8 	ldr	r3, [pc, #456]	; 10364 <I3C_Slave_Init+0x20c>
   10198:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
   1019c:	e59f31c4 	ldr	r3, [pc, #452]	; 10368 <I3C_Slave_Init+0x210>
   101a0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
   101a4:	e59f31c0 	ldr	r3, [pc, #448]	; 1036c <I3C_Slave_Init+0x214>
   101a8:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
   101ac:	e59f31bc 	ldr	r3, [pc, #444]	; 10370 <I3C_Slave_Init+0x218>
   101b0:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
   101b4:	e59f31b8 	ldr	r3, [pc, #440]	; 10374 <I3C_Slave_Init+0x21c>
   101b8:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
   101bc:	e59f31b4 	ldr	r3, [pc, #436]	; 10378 <I3C_Slave_Init+0x220>
   101c0:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
   101c4:	e59f31b0 	ldr	r3, [pc, #432]	; 1037c <I3C_Slave_Init+0x224>
   101c8:	e50b3038 	str	r3, [fp, #-56]	; 0xffffffc8
   101cc:	e59f31ac 	ldr	r3, [pc, #428]	; 10380 <I3C_Slave_Init+0x228>
   101d0:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
   101d4:	e59f31a8 	ldr	r3, [pc, #424]	; 10384 <I3C_Slave_Init+0x22c>
   101d8:	e50b3040 	str	r3, [fp, #-64]	; 0xffffffc0
   101dc:	e59f31a4 	ldr	r3, [pc, #420]	; 10388 <I3C_Slave_Init+0x230>
   101e0:	e50b3044 	str	r3, [fp, #-68]	; 0xffffffbc
   101e4:	e59f31a0 	ldr	r3, [pc, #416]	; 1038c <I3C_Slave_Init+0x234>
   101e8:	e50b3048 	str	r3, [fp, #-72]	; 0xffffffb8
   101ec:	e51b3008 	ldr	r3, [fp, #-8]
   101f0:	e59f2198 	ldr	r2, [pc, #408]	; 10390 <I3C_Slave_Init+0x238>
   101f4:	e5832000 	str	r2, [r3]
   101f8:	e51b300c 	ldr	r3, [fp, #-12]
   101fc:	e59f218c 	ldr	r2, [pc, #396]	; 10390 <I3C_Slave_Init+0x238>
   10200:	e5832000 	str	r2, [r3]
   10204:	e51b300c 	ldr	r3, [fp, #-12]
   10208:	e59f2180 	ldr	r2, [pc, #384]	; 10390 <I3C_Slave_Init+0x238>
   1020c:	e5832000 	str	r2, [r3]
   10210:	e51b300c 	ldr	r3, [fp, #-12]
   10214:	e59f2174 	ldr	r2, [pc, #372]	; 10390 <I3C_Slave_Init+0x238>
   10218:	e5832000 	str	r2, [r3]
   1021c:	e51b300c 	ldr	r3, [fp, #-12]
   10220:	e59f2168 	ldr	r2, [pc, #360]	; 10390 <I3C_Slave_Init+0x238>
   10224:	e5832000 	str	r2, [r3]
   10228:	e51b3010 	ldr	r3, [fp, #-16]
   1022c:	e59f215c 	ldr	r2, [pc, #348]	; 10390 <I3C_Slave_Init+0x238>
   10230:	e5832000 	str	r2, [r3]
   10234:	e51b3010 	ldr	r3, [fp, #-16]
   10238:	e59f2150 	ldr	r2, [pc, #336]	; 10390 <I3C_Slave_Init+0x238>
   1023c:	e5832000 	str	r2, [r3]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e59f2144 	ldr	r2, [pc, #324]	; 10390 <I3C_Slave_Init+0x238>
   10248:	e5832000 	str	r2, [r3]
   1024c:	e51b3010 	ldr	r3, [fp, #-16]
   10250:	e59f2138 	ldr	r2, [pc, #312]	; 10390 <I3C_Slave_Init+0x238>
   10254:	e5832000 	str	r2, [r3]
   10258:	e51b300c 	ldr	r3, [fp, #-12]
   1025c:	e59f212c 	ldr	r2, [pc, #300]	; 10390 <I3C_Slave_Init+0x238>
   10260:	e5832000 	str	r2, [r3]
   10264:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
   10268:	e59f2120 	ldr	r2, [pc, #288]	; 10390 <I3C_Slave_Init+0x238>
   1026c:	e5832000 	str	r2, [r3]
   10270:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
   10274:	e59f2114 	ldr	r2, [pc, #276]	; 10390 <I3C_Slave_Init+0x238>
   10278:	e5832000 	str	r2, [r3]
   1027c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
   10280:	e59f210c 	ldr	r2, [pc, #268]	; 10394 <I3C_Slave_Init+0x23c>
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
   1028c:	e59f2100 	ldr	r2, [pc, #256]	; 10394 <I3C_Slave_Init+0x23c>
   10290:	e5832000 	str	r2, [r3]
   10294:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10298:	e59f20f4 	ldr	r2, [pc, #244]	; 10394 <I3C_Slave_Init+0x23c>
   1029c:	e5832000 	str	r2, [r3]
   102a0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   102a4:	e59f20e8 	ldr	r2, [pc, #232]	; 10394 <I3C_Slave_Init+0x23c>
   102a8:	e5832000 	str	r2, [r3]
   102ac:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   102b0:	e59f20dc 	ldr	r2, [pc, #220]	; 10394 <I3C_Slave_Init+0x23c>
   102b4:	e5832000 	str	r2, [r3]
   102b8:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
   102bc:	e59f20d0 	ldr	r2, [pc, #208]	; 10394 <I3C_Slave_Init+0x23c>
   102c0:	e5832000 	str	r2, [r3]
   102c4:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
   102c8:	e59f20c4 	ldr	r2, [pc, #196]	; 10394 <I3C_Slave_Init+0x23c>
   102cc:	e5832000 	str	r2, [r3]
   102d0:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   102d4:	e59f20b8 	ldr	r2, [pc, #184]	; 10394 <I3C_Slave_Init+0x23c>
   102d8:	e5832000 	str	r2, [r3]
   102dc:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
   102e0:	e59f20ac 	ldr	r2, [pc, #172]	; 10394 <I3C_Slave_Init+0x23c>
   102e4:	e5832000 	str	r2, [r3]
   102e8:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
   102ec:	e59f20a0 	ldr	r2, [pc, #160]	; 10394 <I3C_Slave_Init+0x23c>
   102f0:	e5832000 	str	r2, [r3]
   102f4:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
   102f8:	e59f2094 	ldr	r2, [pc, #148]	; 10394 <I3C_Slave_Init+0x23c>
   102fc:	e5832000 	str	r2, [r3]
   10300:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
   10304:	e59f2088 	ldr	r2, [pc, #136]	; 10394 <I3C_Slave_Init+0x23c>
   10308:	e5832000 	str	r2, [r3]
   1030c:	e51b3040 	ldr	r3, [fp, #-64]	; 0xffffffc0
   10310:	e59f207c 	ldr	r2, [pc, #124]	; 10394 <I3C_Slave_Init+0x23c>
   10314:	e5832000 	str	r2, [r3]
   10318:	e51b3044 	ldr	r3, [fp, #-68]	; 0xffffffbc
   1031c:	e59f2070 	ldr	r2, [pc, #112]	; 10394 <I3C_Slave_Init+0x23c>
   10320:	e5832000 	str	r2, [r3]
   10324:	e51b3048 	ldr	r3, [fp, #-72]	; 0xffffffb8
   10328:	e59f2064 	ldr	r2, [pc, #100]	; 10394 <I3C_Slave_Init+0x23c>
   1032c:	e5832000 	str	r2, [r3]
   10330:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
   10334:	e59f2058 	ldr	r2, [pc, #88]	; 10394 <I3C_Slave_Init+0x23c>
   10338:	e5832000 	str	r2, [r3]
   1033c:	e1a00000 	nop			; (mov r0, r0)
   10340:	e28bd000 	add	sp, fp, #0
   10344:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
   10348:	e12fff1e 	bx	lr
   1034c:	101f1000 	.word	0x101f1000
   10350:	101f1004 	.word	0x101f1004
   10354:	101f1008 	.word	0x101f1008
   10358:	101f100c 	.word	0x101f100c
   1035c:	101f1010 	.word	0x101f1010
   10360:	101f1040 	.word	0x101f1040
   10364:	101f1044 	.word	0x101f1044
   10368:	101f1048 	.word	0x101f1048
   1036c:	101f1054 	.word	0x101f1054
   10370:	101f1058 	.word	0x101f1058
   10374:	101f1060 	.word	0x101f1060
   10378:	101f1020 	.word	0x101f1020
   1037c:	101f1024 	.word	0x101f1024
   10380:	101f1028 	.word	0x101f1028
   10384:	101f102c 	.word	0x101f102c
   10388:	101f1030 	.word	0x101f1030
   1038c:	101f1034 	.word	0x101f1034
   10390:	deadbeef 	.word	0xdeadbeef
   10394:	deadbeaf 	.word	0xdeadbeaf

00010398 <main>:
   10398:	e92d4800 	push	{fp, lr}
   1039c:	e28db004 	add	fp, sp, #4
   103a0:	e24dd010 	sub	sp, sp, #16
   103a4:	e59f3048 	ldr	r3, [pc, #72]	; 103f4 <main+0x5c>
   103a8:	e50b3008 	str	r3, [fp, #-8]
   103ac:	e51b3008 	ldr	r3, [fp, #-8]
   103b0:	e59f2040 	ldr	r2, [pc, #64]	; 103f8 <main+0x60>
   103b4:	e5832000 	str	r2, [r3]
   103b8:	e59f3034 	ldr	r3, [pc, #52]	; 103f4 <main+0x5c>
   103bc:	e50b300c 	str	r3, [fp, #-12]
   103c0:	e51b300c 	ldr	r3, [fp, #-12]
   103c4:	e59f202c 	ldr	r2, [pc, #44]	; 103f8 <main+0x60>
   103c8:	e5832000 	str	r2, [r3]
   103cc:	e51b300c 	ldr	r3, [fp, #-12]
   103d0:	e59f2020 	ldr	r2, [pc, #32]	; 103f8 <main+0x60>
   103d4:	e5832000 	str	r2, [r3]
   103d8:	ebffff5e 	bl	10158 <I3C_Slave_Init>
   103dc:	e59f3018 	ldr	r3, [pc, #24]	; 103fc <main+0x64>
   103e0:	e50b3010 	str	r3, [fp, #-16]
   103e4:	e59f2014 	ldr	r2, [pc, #20]	; 10400 <main+0x68>
   103e8:	e51b3010 	ldr	r3, [fp, #-16]
   103ec:	e5832000 	str	r2, [r3]
   103f0:	eafffffe 	b	103f0 <main+0x58>
   103f4:	101f1080 	.word	0x101f1080
   103f8:	deadbeef 	.word	0xdeadbeef
   103fc:	101f1f90 	.word	0x101f1f90
   10400:	00010000 	.word	0x00010000

00010404 <_start>:
   10404:	e3a0d902 	mov	sp, #32768	; 0x8000
   10408:	ebffffe2 	bl	10398 <main>
   1040c:	eafffffe 	b	1040c <_start+0x8>
