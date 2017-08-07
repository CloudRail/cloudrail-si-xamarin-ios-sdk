.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.0.1 (tarball Mon May 22 16:16:38 EDT 2017)"
	.asciz "Mono.Security.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1__ctor_byte_byte__
Mono_Security_ASN1__ctor_byte_byte__:
.file 1 "/Library/Frameworks/Xamarin.iOS.framework/Versions/10.10.0.36/src/mono/mcs/class/Mono.Security/Mono.Security/ASN1.cs"
.loc 1 60 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0x394063a1
.word 0xf9400ba0
.word 0x39008001
.loc 1 61 0
.word 0xf94013a1
.word 0xf9000801
.word 0x91004000
bl _p_1
.word 0xf94013a0
.loc 1 62 0
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1__ctor_byte__
Mono_Security_ASN1__ctor_byte__:
.loc 1 66 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xb9003bbf
.word 0xb9801b40
.word 0xeb1f001f
.word 0x10000011
.word 0x54000a49
.word 0x39408340
.word 0x39008320
.loc 1 68 0
.word 0xd2800018
.loc 1 69 0
.word 0xb9801b40
.word 0xd280003e
.word 0xeb1e001f
.word 0x10000011
.word 0x54000949
.word 0x39408757
.loc 1 71 0
.word 0xaa1703e0
.word 0xd280101e
.word 0x6b1e001f
.word 0x540002ad
.loc 1 73 0
.word 0x510202f8
.loc 1 74 0
.word 0xd2800017
.loc 1 75 0
.word 0xd2800016
.word 0x1400000e
.loc 1 76 0
.word 0x53185ef7
.loc 1 77 0
.word 0xaa1703e0
.word 0x11000ac1
.word 0x93407c21
.word 0xb9801b42
.word 0xeb01005f
.word 0x10000011
.word 0x54000729
.word 0x8b010341
.word 0x91008021
.word 0x39400021
.word 0xb010017
.loc 1 75 0
.word 0x110006d6
.word 0x6b1802df
.word 0x54fffe4b
.word 0x14000004
.loc 1 80 0
.word 0xd280101e
.word 0x6b1e02ff
.word 0x54000480
.loc 1 85 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xaa1703e1
bl _p_2
.word 0xf90023a0
.word 0xf9000b20
.word 0x91004320
bl _p_1
.word 0xf94023a0
.loc 1 86 0
.word 0x11000b01
.word 0xf9400b22
.word 0xaa1a03e0
.word 0xd2800003
.word 0xaa1703e4
bl _p_3
.loc 1 88 0
.word 0x39408320
.word 0xd280041e
.word 0xa1e0000
.word 0xd280041e
.word 0x6b1e001f
.word 0x54000101
.loc 1 89 0
.word 0x11000b00
.word 0xb9003ba0
.loc 1 90 0
.word 0x9100e3a2
.word 0xb9801b43
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_4
.loc 1 92 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.loc 1 82 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
bl _p_5
.word 0xaa0003e1
.word 0xd28015a0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_6
.word 0xd2801380
.word 0xaa1103e1
bl _p_7

Lme_1:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_get_Count
Mono_Security_ASN1_get_Count:
.loc 1 96 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0xf9400c00
.word 0xb5000060
.loc 1 97 0
.word 0xd2800000
.word 0x14000008
.loc 1 98 0
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404c30
.word 0xd63f0200
.word 0x93407c00
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_get_Tag
Mono_Security_ASN1_get_Tag:
.loc 1 103 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9400ba0
.word 0x39408000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_get_Value
Mono_Security_ASN1_get_Value:
.loc 1 117 0 prologue_end
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9400b40
.word 0xb50000a0
.loc 1 118 0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9403030
.word 0xd63f0200
.loc 1 119 0
.word 0xf9400b41
.word 0xaa0103e0
.word 0xf940003e
bl _p_8
.word 0xaa0003fa
.word 0xb40002ba
.word 0xf9400340
.word 0xf9400000
.word 0x39406801
.word 0xd280003e
.word 0xeb1e003f
.word 0x10000011
.word 0x54000261
.word 0xf9400400
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xeb01001f
.word 0x10000011
.word 0x54000141
.word 0xf9400b40
.word 0xeb1f001f
.word 0x10000011
.word 0x540000c1
.word 0xaa1a03e0
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801400
.word 0xaa1103e1
bl _p_7

Lme_4:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_Add_Mono_Security_ASN1
Mono_Security_ASN1_Add_Mono_Security_ASN1:
.loc 1 151 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1
.word 0xf9400fa0
.word 0xb40003e0
.loc 1 152 0
.word 0xf9400f20
.word 0xb50002c0
.loc 1 153 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xd2800401
bl _p_9

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf9400021
.word 0xf9001ba1
.word 0xf9000801
.word 0xf90017a0
.word 0x91004000
bl _p_1
.word 0xf94017a0
.word 0xf9401ba1
.word 0xf90013a0
.word 0xf9000f20
.word 0x91006320
bl _p_1
.word 0xf94013a0
.loc 1 154 0
.word 0xf9400f22
.word 0xaa0203e0
.word 0xf9400fa1
.word 0xf9400042
.word 0xf9404450
.word 0xd63f0200
.word 0x93407c00
.loc 1 156 0
.word 0xf9400fa0
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_GetBytes
Mono_Security_ASN1_GetBytes:
.loc 1 161 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003fa
.word 0xf90027bf
.word 0xf9002bbf
.word 0xd2800019
.loc 1 163 0
.word 0xaa1a03e0
bl _p_10
.word 0x93407c00
.word 0x6b1f001f
.word 0x540016ad
.loc 1 164 0
.word 0xd2800019
.loc 1 165 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #224]
.word 0xd2800401
bl _p_9

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #232]
.word 0xf9400021
.word 0xf9004fa1
.word 0xf9000801
.word 0xf9004ba0
.word 0x91004000
bl _p_1
.word 0xf9404ba0
.word 0xf9404fa1
.word 0xaa0003f8
.loc 1 166 0
.word 0xf9400f41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403c30
.word 0xd63f0200
.word 0xf90027a0
.word 0x14000024
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x15, [x16, #240]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xaa0003f7
.word 0xb4000177
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x10000011
.word 0x54002881
.loc 1 167 0
.word 0xaa1703e0
.word 0xf94002e1
.word 0xf9403030
.word 0xd63f0200
.word 0xaa0003f7
.loc 1 168 0
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf9400302
.word 0xf9404450
.word 0xd63f0200
.word 0x93407c00
.loc 1 169 0
.word 0xb9801ae0
.word 0xb000339
.loc 1 166 0
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x15, [x16, #256]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0x35fffa40
.word 0x94000002
.word 0x14000034
.word 0xf90043be
.word 0xf94027a0
.word 0xf9002fa0
.word 0xf9402fa0
.word 0xf90033a0
.word 0xf9402fa0
.word 0xeb1f001f
.word 0x54000380
.word 0xf9402fa0
.word 0xf9400000
.word 0xf90037a0
.word 0xf94037a0
.word 0xb9402800

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #264]
.word 0xeb01001f
.word 0x540001e3
.word 0xf94037a0
.word 0xf9401000

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #264]
.word 0x9343fc22
.word 0x8b020000
.word 0x39400000
.word 0xd28000fe
.word 0xa1e0022
.word 0xd2800021
.word 0x1ac22021
.word 0xa010000
.word 0xb5000080
.word 0x14000001
.word 0xf90033bf
.word 0x14000001
.word 0xf94033a0
.word 0xf9002ba0
.word 0xf9402ba0
.word 0xb4000160
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x15, [x16, #272]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf94043be
.word 0xd61f03c0
.loc 1 171 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xaa1903e1
bl _p_2
.word 0xaa0003f9
.loc 1 172 0
.word 0xd2800017
.loc 1 173 0
.word 0xd2800016
.word 0x14000026
.loc 1 174 0
.word 0xaa1803e0
.word 0xaa1603e1
.word 0xf9400302
.word 0xf9404850
.word 0xd63f0200
.word 0xaa0003f5
.word 0xb40002b5
.word 0xf94002a0
.word 0xf9400000
.word 0x39406801
.word 0xd280003e
.word 0xeb1e003f
.word 0x10000011
.word 0x54001be1
.word 0xf9400400
.word 0xf9400800
.word 0xf9400800

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xeb01001f
.word 0x10000011
.word 0x54001ac1
.word 0xf9400aa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001a41
.word 0xaa1503f4
.loc 1 175 0
.word 0xb9801aa4
.word 0xaa1503e0
.word 0xd2800001
.word 0xaa1903e2
.word 0xaa1703e3
bl _p_3
.loc 1 176 0
.word 0xb9801aa0
.word 0xb0002f7
.loc 1 173 0
.word 0x110006d6
.word 0xf9400f41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404c30
.word 0xd63f0200
.word 0x93407c00
.word 0x6b0002df
.word 0x54fffa8b
.word 0x14000004
.loc 1 178 0
.word 0xf9400b40
.word 0xb4000040
.loc 1 179 0
.word 0xf9400b59
.loc 1 183 0
.word 0xd2800018
.loc 1 185 0
.word 0xb40013b9
.loc 1 186 0
.word 0xb9801b36
.loc 1 188 0
.word 0xaa1603e0
.word 0xd2800ffe
.word 0x6b1e001f
.word 0x540010ad
.loc 1 189 0
.word 0xd2801ffe
.word 0x6b1e02df
.word 0x540002ac
.loc 1 190 0
.word 0x11000ec1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003f7
.loc 1 191 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xaa1703e2
.word 0xd2800063
.word 0xaa1603e4
bl _p_3
.loc 1 192 0
.word 0xd2801038
.loc 1 193 0
.word 0xb9801ae0
.word 0xd280005e
.word 0xeb1e001f
.word 0x10000011
.word 0x540013a9
.word 0x39008af6
.loc 1 194 0
.word 0x1400007b
.loc 1 195 0
.word 0xd29ffffe
.word 0x6b1e02df
.word 0x5400038c
.loc 1 196 0
.word 0x110012c1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003f7
.loc 1 197 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xaa1703e2
.word 0xd2800083
.word 0xaa1603e4
bl _p_3
.loc 1 198 0
.word 0xd2801058
.loc 1 199 0
.word 0x13087ec0
.word 0xb9801ae1
.word 0xd280005e
.word 0xeb1e003f
.word 0x10000011
.word 0x540010a9
.word 0x39008ae0
.loc 1 200 0
.word 0xb9801ae0
.word 0xd280007e
.word 0xeb1e001f
.word 0x10000011
.word 0x54000fe9
.word 0x39008ef6
.loc 1 201 0
.word 0x1400005d
.loc 1 202 0
.word 0xd29ffffe
.word 0xf2a01ffe
.word 0x6b1e02df
.word 0x5400046c
.loc 1 204 0
.word 0x110016c1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003f7
.loc 1 205 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xaa1703e2
.word 0xd28000a3
.word 0xaa1603e4
bl _p_3
.loc 1 206 0
.word 0xd2801078
.loc 1 207 0
.word 0x13107ec0
.word 0xb9801ae1
.word 0xd280005e
.word 0xeb1e003f
.word 0x10000011
.word 0x54000cc9
.word 0x39008ae0
.loc 1 208 0
.word 0x13087ec0
.word 0xb9801ae1
.word 0xd280007e
.word 0xeb1e003f
.word 0x10000011
.word 0x54000be9
.word 0x39008ee0
.loc 1 209 0
.word 0xb9801ae0
.word 0xd280009e
.word 0xeb1e001f
.word 0x10000011
.word 0x54000b29
.word 0x390092f6
.loc 1 210 0
.word 0x14000037
.loc 1 213 0
.word 0x11001ac1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003f7
.loc 1 214 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xaa1703e2
.word 0xd28000c3
.word 0xaa1603e4
bl _p_3
.loc 1 215 0
.word 0xd2801098
.loc 1 216 0
.word 0x13187ec0
.word 0xb9801ae1
.word 0xd280005e
.word 0xeb1e003f
.word 0x10000011
.word 0x54000889
.word 0x39008ae0
.loc 1 217 0
.word 0x13107ec0
.word 0xb9801ae1
.word 0xd280007e
.word 0xeb1e003f
.word 0x10000011
.word 0x540007a9
.word 0x39008ee0
.loc 1 218 0
.word 0x13087ec0
.word 0xb9801ae1
.word 0xd280009e
.word 0xeb1e003f
.word 0x10000011
.word 0x540006c9
.word 0x390092e0
.loc 1 219 0
.word 0xb9801ae0
.word 0xd28000be
.word 0xeb1e001f
.word 0x10000011
.word 0x54000609
.word 0x390096f6
.loc 1 221 0
.word 0x1400000e
.loc 1 224 0
.word 0x11000ac1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003f7
.loc 1 225 0
.word 0xaa1903e0
.word 0xd2800001
.word 0xaa1703e2
.word 0xd2800043
.word 0xaa1603e4
bl _p_3
.loc 1 226 0
.word 0xaa1603f8
.loc 1 228 0
.word 0xf9400b40
.word 0xb5000160
.loc 1 229 0
.word 0xf9000b59
.word 0x91004340
bl _p_1
.loc 1 230 0
.word 0x14000007
.loc 1 232 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800041
bl _p_2
.word 0xaa0003f7
.loc 1 234 0
.word 0x39408340
.word 0xb9801ae1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000209
.word 0x390082e0
.loc 1 235 0
.word 0xb9801ae0
.word 0xd280003e
.word 0xeb1e001f
.word 0x10000011
.word 0x54000149
.word 0x390086f8
.loc 1 237 0
.word 0xaa1703e0
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801380
.word 0xaa1103e1
bl _p_7
.word 0xd2801400
.word 0xaa1103e1
bl _p_7

Lme_6:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_Decode_byte___int__int
Mono_Security_ASN1_Decode_byte___int__int:
.loc 1 0 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003f7
.word 0xaa0103f8
.word 0xaa0203f9
.word 0xaa0303fa
.word 0x3900e3bf
.word 0xb90043bf
.word 0xf90027bf
.word 0xb90053bf
.word 0x1400002f
.loc 1 249 0
.word 0x9100e3a3
.word 0x910103a4
.word 0x910123a5
.word 0xaa1703e0
.word 0xaa1803e1
.word 0xaa1903e2
bl _p_11
.loc 1 251 0
.word 0x3940e3a0
.word 0x340004c0
.loc 1 254 0
.word 0x3940e3a0
.word 0xf90037a0
.word 0xf94027a0
.word 0xf9003ba0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #280]
.word 0xd2800501
bl _p_9
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf90033a0
bl _p_12
.word 0xf94033a1
.word 0xaa1703e0
bl _p_13
.word 0xaa0003f6
.loc 1 256 0
.word 0x3940e3a0
.word 0xd280041e
.word 0xa1e0000
.word 0xd280041e
.word 0x6b1e001f
.word 0x54000161
.loc 1 257 0
.word 0xb9800320
.word 0xb90053a0
.loc 1 258 0
.word 0x910143a2
.word 0xb98053a0
.word 0xb98043a1
.word 0xb010003
.word 0xaa1603e0
.word 0xaa1803e1
.word 0xf94002de
bl _p_4
.loc 1 260 0
.word 0xb9800320
.word 0xb98043a1
.word 0xb010000
.word 0xb9000320
.loc 1 248 0
.word 0xb9800320
.word 0x51000741
.word 0x6b01001f
.word 0x54fff9eb
.loc 1 262 0
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_7:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___
Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___:
.loc 1 267 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023a0
.word 0xaa0103f6
.word 0xaa0203f7
.word 0xaa0303f8
.word 0xaa0403f9
.word 0xf90027a5
.word 0xb98002f5
.word 0xaa1503e0
.word 0x11000400
.word 0xb90002e0
.word 0x93407ea0
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000929
.word 0x8b0002c0
.word 0x91008000
.word 0x39400000
.word 0x39000300
.loc 1 268 0
.word 0xb98002f5
.word 0xaa1503e0
.word 0x11000400
.word 0xb90002e0
.word 0x93407ea0
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000789
.word 0x8b0002c0
.word 0x91008000
.word 0x39400000
.word 0xb9000320
.loc 1 271 0
.word 0xb9800320
.word 0xd280101e
.word 0xa1e0000
.word 0xd280101e
.word 0x6b1e001f
.word 0x54000341
.loc 1 272 0
.word 0xb9800320
.word 0xd2800ffe
.word 0xa1e0018
.loc 1 273 0
.word 0xb900033f
.loc 1 274 0
.word 0xd2800014
.word 0x14000012
.loc 1 275 0
.word 0xb9800320
.word 0x53185c00
.word 0xb98002f5
.word 0xaa1503e1
.word 0x11000421
.word 0xb90002e1
.word 0x93407ea1
.word 0xb9801ac2
.word 0xeb01005f
.word 0x10000011
.word 0x54000429
.word 0x8b0102c1
.word 0x91008021
.word 0x39400021
.word 0xb010000
.word 0xb9000320
.loc 1 274 0
.word 0x11000694
.word 0x6b18029f
.word 0x54fffdcb
.loc 1 278 0
.word 0xb9800321

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #208]
bl _p_2
.word 0xaa0003e1
.word 0xf94027a0
.word 0xf9002ba1
.word 0xf9000001
bl _p_1
.word 0xf9402ba0
.loc 1 279 0
.word 0xb98002e1
.word 0xf94027a0
.word 0xf9400002
.word 0xb9800324
.word 0xaa1603e0
.word 0xd2800003
bl _p_3
.loc 1 280 0
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801380
.word 0xaa1103e1
bl _p_7

Lme_8:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_get_Item_int
Mono_Security_ASN1_get_Item_int:
.loc 1 285 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa
.word 0xf90013bf
.word 0xf9400fa0
.word 0xf9400c00
.word 0xb4000140
.word 0xf9400fa0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9404c30
.word 0xd63f0200
.word 0x93407c00
.word 0x6b00035f
.word 0x5400006b
.loc 1 286 0
.word 0xf90013bf
.word 0x1400001f
.loc 1 287 0
.word 0xf9400fa0
.word 0xf9400c02
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9404850
.word 0xd63f0200
.word 0xaa0003fa
.word 0xb400017a
.word 0xf9400340
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #248]
.word 0xeb01001f
.word 0x10000011
.word 0x54000241
.word 0xf90013ba
.word 0x1400000a
.word 0xf90017a0
.loc 1 290 0
.word 0xf90013bf
bl _p_14
.word 0xf90027a0
.word 0xf94027a0
.word 0xb4000060
.word 0xf94027a0
bl _p_6
.word 0x14000001
.loc 1 292 0
.word 0xf94013a0
.word 0x14000001
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801400
.word 0xaa1103e1
bl _p_7

Lme_9:
.text
	.align 4
	.no_dead_strip Mono_Security_ASN1_ToString
Mono_Security_ASN1_ToString:
.loc 1 314 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #288]
.word 0xd2800601
bl _p_9
.word 0xf90063a0
bl _p_15
.word 0xf94063a0
.word 0xaa0003f9
.loc 1 317 0
.word 0xaa1903e0
.word 0xf9005fa0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #296]
.word 0xf90057a0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000ec0
.word 0x91008340

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #304]
bl _p_16
.word 0xf9005ba0
bl _p_17
.word 0xaa0003e3
.word 0xf94057a1
.word 0xf9405ba2
.word 0xf9405fa4
.word 0xaa0403e0
.word 0xf940009e
bl _p_18
.loc 1 320 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xf9004ba0
.word 0xaa1a03e0
bl _p_19
.word 0xb9801800
.word 0xf90053a0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #320]
.word 0xd2800281
bl _p_9
.word 0xf94053a1
.word 0xb9001001
.word 0xf9004fa0
bl _p_17
.word 0xaa0003e3
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xaa1903e0
.word 0xf940033e
bl _p_18
.loc 1 323 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xaa1903e0
.word 0xf940033e
bl _p_20
.loc 1 324 0
bl _p_17
.word 0xaa0003e1
.word 0xaa1903e0
.word 0xf940033e
bl _p_20
.loc 1 325 0
.word 0xd2800018
.word 0x14000033
.loc 1 326 0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #336]
.word 0xf9004ba0
.word 0xaa1a03e0
bl _p_19
.word 0x93407f01
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540006c9
.word 0x8b010000
.word 0x91008000

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x1, [x16, #304]
bl _p_16
.word 0xaa0003e2
.word 0xf9404ba1
.word 0xaa1903e0
.word 0xf940033e
bl _p_21
.loc 1 327 0
.word 0x11000700
.word 0x131f7c01
.word 0x531c7c21
.word 0xb010000
.word 0xd28001fe
.word 0x8a1e0000
.word 0x4b010000
.word 0x35000280
.loc 1 328 0
bl _p_17
.word 0xf9004ba0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #344]

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #352]
.word 0x3980b410
.word 0xb5000050
bl _p_22
.word 0xf9404ba1

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #360]
.word 0xf9400002
.word 0xaa1903e0
.word 0xf940033e
bl _p_23
.loc 1 325 0
.word 0x11000718
.word 0xaa1a03e0
bl _p_19
.word 0xb9801800
.word 0x6b00031f
.word 0x54fff94b
.loc 1 330 0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9402030
.word 0xd63f0200
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801380
.word 0xaa1103e1
bl _p_7
.word 0xd28015c0
.word 0xaa1103e1
bl _p_7

Lme_a:
.text
	.align 4
	.no_dead_strip wrapper_unknown_byte___Get_int
wrapper_unknown_byte___Get_int:
.word 0xa9be7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xb9801ba0
.word 0x93407c01
.word 0xf9400ba0
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540000e9
.word 0x8b010000
.word 0x91008000
.word 0x39400000
.word 0x910003bf
.word 0xa8c27bfd
.word 0xd65f03c0
.word 0xd2801380
.word 0xaa1103e1
bl _p_7

Lme_c:
.text
	.align 4
	.no_dead_strip wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr
wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf94017a0
.word 0xb40004e0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xb9400000
.word 0x340000c0
bl _p_24
.word 0xaa0003f7
.word 0xb4000060
.word 0xaa1703e0
bl _p_6
.word 0xf94013a0
.word 0xf9400000
.word 0xb9800001
.word 0xf9400fa0
.word 0xf9401ba2
.word 0xd63f0040
.word 0xf9003ba0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xd2800221
bl _p_9
.word 0xf9403ba1
.word 0x39004001
.word 0xf9001fa0
.word 0x1400000b
.word 0xf90027a0
.word 0xf94027a0
.word 0xf90023a0
.word 0xf94017a0
.word 0xf94023a1
.word 0xf9003ba1
.word 0xf9000001
bl _p_1
.word 0xf9403ba0
.word 0x14000001
.word 0xf9401fa0
.word 0x14000017

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xb9400000
.word 0x350002c0
.word 0x14000001
.word 0xf94013a0
.word 0xf9400000
.word 0xb9800001
.word 0xf9400fa0
.word 0xf9401ba2
.word 0xd63f0040
.word 0xf9003ba0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #376]
.word 0xd2800221
bl _p_9
.word 0xf9403ba1
.word 0x39004001
.word 0xf9001fa0
.word 0xf9401fa0
.word 0xf9400bb7
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
bl _p_24
.word 0xaa0003f7
.word 0xb4fffd40
.word 0xaa1703e0
bl _p_6

Lme_d:
.text
	.align 4
	.no_dead_strip wrapper_unknown_byte___Set_int_byte
wrapper_unknown_byte___Set_int_byte:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xb9801ba0
.word 0x93407c01
.word 0xf9400ba0
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54000109
.word 0x8b010000
.word 0x91008000
.word 0x394083a1
.word 0x39000001
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0
.word 0xd2801380
.word 0xaa1103e1
bl _p_7

Lme_e:
.text
	.align 4
	.no_dead_strip wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr
wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fb9
.word 0xf90013a0
.word 0xaa0103f9
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fbf
.word 0xf90023bf
.word 0xf94017a0
.word 0xb40003e0

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xb9400000
.word 0x340000c0
bl _p_24
.word 0xaa0003f7
.word 0xb4000060
.word 0xaa1703e0
bl _p_6
.word 0xf9400320
.word 0xb9800001
.word 0xf9400720
.word 0x39400002
.word 0xf94013a0
.word 0xf9401ba3
.word 0xd63f0060
.word 0x1400000b
.word 0xf90027a0
.word 0xf94027a0
.word 0xf90023a0
.word 0xf94017a0
.word 0xf94023a1
.word 0xf9003ba1
.word 0xf9000001
bl _p_1
.word 0xf9403ba0
.word 0x14000001
.word 0xf9401fa0
.word 0x1400000f

adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x0, [x16, #368]
.word 0xb9400000
.word 0x350001e0
.word 0x14000001
.word 0xf9400320
.word 0xb9800001
.word 0xf9400720
.word 0x39400002
.word 0xf94013a0
.word 0xf9401ba3
.word 0xd63f0060
.word 0xf9401fa0
.word 0xf9400bb7
.word 0xf9400fb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
bl _p_24
.word 0xaa0003f7
.word 0xb4fffe20
.word 0xaa1703e0
bl _p_6

Lme_f:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Mono_Security_ASN1__ctor_byte_byte__
bl Mono_Security_ASN1__ctor_byte__
bl Mono_Security_ASN1_get_Count
bl Mono_Security_ASN1_get_Tag
bl Mono_Security_ASN1_get_Value
bl Mono_Security_ASN1_Add_Mono_Security_ASN1
bl Mono_Security_ASN1_GetBytes
bl Mono_Security_ASN1_Decode_byte___int__int
bl Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___
bl Mono_Security_ASN1_get_Item_int
bl Mono_Security_ASN1_ToString
bl method_addresses
bl wrapper_unknown_byte___Get_int
bl wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr
bl wrapper_unknown_byte___Set_int_byte
bl wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,26,12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151
	.byte 7,68,152,6,153,5,68,154,4,13,12,31,0,68,14,32,157,4,158,3,68,13,29,16,12,31,0,68,14,32,157,4
	.byte 158,3,68,13,29,68,154,2,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,32,12,31,0,68,14,160
	.byte 1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12,27,12,31,0,68,14
	.byte 128,1,157,16,158,15,68,13,29,68,150,14,151,13,68,152,12,153,11,68,154,10,28,12,31,0,68,14,96,157,12,158
	.byte 11,68,13,29,68,148,10,149,9,68,150,8,151,7,68,152,6,153,5,16,12,31,0,68,14,80,157,10,158,9,68,13
	.byte 29,68,154,8,22,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,152,24,153,23,68,154,22,17,12,31,0,68
	.byte 14,128,1,157,16,158,15,68,13,29,68,151,14,20,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,151,14,68
	.byte 153,13

.text
	.align 4
plt:
mono_aot_Mono_Security_plt:
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_conc_intptr
plt_wrapper_write_barrier_object_wbarrier_conc_intptr:
_p_1:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #392]
br x16
.word 485
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_2:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #400]
br x16
.word 492
	.no_dead_strip plt_System_Buffer_BlockCopy_System_Array_int_System_Array_int_int
plt_System_Buffer_BlockCopy_System_Array_int_System_Array_int_int:
_p_3:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #408]
br x16
.word 500
	.no_dead_strip plt_Mono_Security_ASN1_Decode_byte___int__int
plt_Mono_Security_ASN1_Decode_byte___int__int:
_p_4:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #416]
br x16
.word 503
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_5:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #424]
br x16
.word 508
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_6:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #432]
br x16
.word 528
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_7:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #440]
br x16
.word 556
	.no_dead_strip plt_System_Array_Clone
plt_System_Array_Clone:
_p_8:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #448]
br x16
.word 591
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_9:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #456]
br x16
.word 594
	.no_dead_strip plt_Mono_Security_ASN1_get_Count
plt_Mono_Security_ASN1_get_Count:
_p_10:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #464]
br x16
.word 602
	.no_dead_strip plt_Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___
plt_Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___:
_p_11:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #472]
br x16
.word 607
	.no_dead_strip plt_Mono_Security_ASN1__ctor_byte_byte__
plt_Mono_Security_ASN1__ctor_byte_byte__:
_p_12:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #480]
br x16
.word 612
	.no_dead_strip plt_Mono_Security_ASN1_Add_Mono_Security_ASN1
plt_Mono_Security_ASN1_Add_Mono_Security_ASN1:
_p_13:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #488]
br x16
.word 617
	.no_dead_strip plt__jit_icall_mono_thread_get_undeniable_exception
plt__jit_icall_mono_thread_get_undeniable_exception:
_p_14:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #496]
br x16
.word 622
	.no_dead_strip plt_System_Text_StringBuilder__ctor
plt_System_Text_StringBuilder__ctor:
_p_15:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #504]
br x16
.word 661
	.no_dead_strip plt_byte_ToString_string
plt_byte_ToString_string:
_p_16:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #512]
br x16
.word 664
	.no_dead_strip plt_System_Environment_get_NewLine
plt_System_Environment_get_NewLine:
_p_17:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #520]
br x16
.word 667
	.no_dead_strip plt_System_Text_StringBuilder_AppendFormat_string_object_object
plt_System_Text_StringBuilder_AppendFormat_string_object_object:
_p_18:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #528]
br x16
.word 670
	.no_dead_strip plt_Mono_Security_ASN1_get_Value
plt_Mono_Security_ASN1_get_Value:
_p_19:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #536]
br x16
.word 673
	.no_dead_strip plt_System_Text_StringBuilder_Append_string
plt_System_Text_StringBuilder_Append_string:
_p_20:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #544]
br x16
.word 678
	.no_dead_strip plt_System_Text_StringBuilder_AppendFormat_string_object
plt_System_Text_StringBuilder_AppendFormat_string_object:
_p_21:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #552]
br x16
.word 681
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_22:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #560]
br x16
.word 684
	.no_dead_strip plt_System_Text_StringBuilder_AppendFormat_string_object__
plt_System_Text_StringBuilder_AppendFormat_string_object__:
_p_23:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #568]
br x16
.word 710
	.no_dead_strip plt__jit_icall_mono_thread_force_interruption_checkpoint_noraise
plt__jit_icall_mono_thread_force_interruption_checkpoint_noraise:
_p_24:
adrp x16, mono_aot_Mono_Security_got@PAGE+0
add x16, x16, mono_aot_Mono_Security_got@PAGEOFF
ldr x16, [x16, #576]
br x16
.word 713
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Mono_Security_got, 584
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "2DE55D55-88BA-498E-BA8F-69C257A462EA"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Mono.Security"
.data
	.align 3
_mono_aot_file_info:

	.long 139,0
	.align 3
	.quad mono_aot_Mono_Security_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 48,584,25,16,66,391195135,0,3207
	.long 128,8,8,10,0,26,3848,632
	.long 440,232,0,360,416,280,0,192
	.long 48,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 182,4,105,4,176,18,40,17,148,179,166,205,249,90,134,32
	.globl _mono_aot_module_Mono_Security_info
	.align 3
_mono_aot_module_Mono_Security_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_3:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM7=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_2:

	.byte 5
	.asciz "System_Byte"

	.byte 17,16
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM11=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,16,0,7
	.asciz "System_Byte"

LDIFF_SYM12=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_5:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM16=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM17=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_4:

	.byte 5
	.asciz "System_Collections_ArrayList"

	.byte 32,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM21=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,6
	.asciz "_size"

LDIFF_SYM22=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,24,6
	.asciz "_version"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,28,0,7
	.asciz "System_Collections_ArrayList"

LDIFF_SYM24=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM25=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM26=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_0:

	.byte 5
	.asciz "Mono_Security_ASN1"

	.byte 40,16
LDIFF_SYM27=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,35,0,6
	.asciz "m_nTag"

LDIFF_SYM28=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,32,6
	.asciz "m_aValue"

LDIFF_SYM29=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,16,6
	.asciz "elist"

LDIFF_SYM30=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,24,0,7
	.asciz "Mono_Security_ASN1"

LDIFF_SYM31=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2
	.asciz "Mono.Security.ASN1:.ctor"
	.asciz "Mono_Security_ASN1__ctor_byte_byte__"

	.byte 1,58
	.quad Mono_Security_ASN1__ctor_byte_byte__
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM34=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,141,16,3
	.asciz "tag"

LDIFF_SYM35=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,141,24,3
	.asciz "data"

LDIFF_SYM36=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM37=Lfde0_end - Lfde0_start
	.long LDIFF_SYM37
Lfde0_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1__ctor_byte_byte__

LDIFF_SYM38=Lme_0 - Mono_Security_ASN1__ctor_byte_byte__
	.long LDIFF_SYM38
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:.ctor"
	.asciz "Mono_Security_ASN1__ctor_byte__"

	.byte 1,64
	.quad Mono_Security_ASN1__ctor_byte__
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM39=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 1,105,3
	.asciz "data"

LDIFF_SYM40=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 1,106,11
	.asciz "nLenLength"

LDIFF_SYM41=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 1,104,11
	.asciz "nLength"

LDIFF_SYM42=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 1,103,11
	.asciz "i"

LDIFF_SYM43=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 1,102,11
	.asciz "nStart"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,141,56,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM45=Lfde1_end - Lfde1_start
	.long LDIFF_SYM45
Lfde1_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1__ctor_byte__

LDIFF_SYM46=Lme_1 - Mono_Security_ASN1__ctor_byte__
	.long LDIFF_SYM46
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8,151,7,68,152,6,153,5,68,154,4
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:get_Count"
	.asciz "Mono_Security_ASN1_get_Count"

	.byte 1,96
	.quad Mono_Security_ASN1_get_Count
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM47=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM47
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM48=Lfde2_end - Lfde2_start
	.long LDIFF_SYM48
Lfde2_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_get_Count

LDIFF_SYM49=Lme_2 - Mono_Security_ASN1_get_Count
	.long LDIFF_SYM49
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:get_Tag"
	.asciz "Mono_Security_ASN1_get_Tag"

	.byte 1,103
	.quad Mono_Security_ASN1_get_Tag
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM50=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM51=Lfde3_end - Lfde3_start
	.long LDIFF_SYM51
Lfde3_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_get_Tag

LDIFF_SYM52=Lme_3 - Mono_Security_ASN1_get_Tag
	.long LDIFF_SYM52
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:get_Value"
	.asciz "Mono_Security_ASN1_get_Value"

	.byte 1,117
	.quad Mono_Security_ASN1_get_Value
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM53=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM54=Lfde4_end - Lfde4_start
	.long LDIFF_SYM54
Lfde4_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_get_Value

LDIFF_SYM55=Lme_4 - Mono_Security_ASN1_get_Value
	.long LDIFF_SYM55
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:Add"
	.asciz "Mono_Security_ASN1_Add_Mono_Security_ASN1"

	.byte 1,151,1
	.quad Mono_Security_ASN1_Add_Mono_Security_ASN1
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM56=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 1,105,3
	.asciz "asn1"

LDIFF_SYM57=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM58=Lfde5_end - Lfde5_start
	.long LDIFF_SYM58
Lfde5_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_Add_Mono_Security_ASN1

LDIFF_SYM59=Lme_5 - Mono_Security_ASN1_Add_Mono_Security_ASN1
	.long LDIFF_SYM59
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 17
	.asciz "System_Collections_IEnumerator"

	.byte 16,7
	.asciz "System_Collections_IEnumerator"

LDIFF_SYM60=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM61=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM62=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_7:

	.byte 17
	.asciz "System_IDisposable"

	.byte 16,7
	.asciz "System_IDisposable"

LDIFF_SYM63=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 2
	.asciz "Mono.Security.ASN1:GetBytes"
	.asciz "Mono_Security_ASN1_GetBytes"

	.byte 1,161,1
	.quad Mono_Security_ASN1_GetBytes
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM66=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 1,106,11
	.asciz "val"

LDIFF_SYM67=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 1,105,11
	.asciz "der"

LDIFF_SYM68=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 1,103,11
	.asciz "nLengthLen"

LDIFF_SYM69=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 1,104,11
	.asciz "esize"

LDIFF_SYM70=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 1,105,11
	.asciz "al"

LDIFF_SYM71=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 1,104,11
	.asciz "pos"

LDIFF_SYM72=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 1,103,11
	.asciz "V_6"

LDIFF_SYM73=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 3,141,200,0,11
	.asciz "item"

LDIFF_SYM74=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 1,103,11
	.asciz "V_8"

LDIFF_SYM75=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 3,141,208,0,11
	.asciz "i"

LDIFF_SYM76=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 1,102,11
	.asciz "item"

LDIFF_SYM77=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 1,100,11
	.asciz "nLength"

LDIFF_SYM78=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 1,102,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM79=Lfde6_end - Lfde6_start
	.long LDIFF_SYM79
Lfde6_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_GetBytes

LDIFF_SYM80=Lme_6 - Mono_Security_ASN1_GetBytes
	.long LDIFF_SYM80
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,148,18,149,17,68,150,16,151,15,68,152,14,153,13,68,154,12
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:Decode"
	.asciz "Mono_Security_ASN1_Decode_byte___int__int"

	.byte 1,0
	.quad Mono_Security_ASN1_Decode_byte___int__int
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM81=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM81
	.byte 1,103,3
	.asciz "asn1"

LDIFF_SYM82=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 1,104,3
	.asciz "anPos"

LDIFF_SYM83=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 1,105,3
	.asciz "anLength"

LDIFF_SYM84=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM84
	.byte 1,106,11
	.asciz "nTag"

LDIFF_SYM85=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM85
	.byte 2,141,56,11
	.asciz "nLength"

LDIFF_SYM86=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 3,141,192,0,11
	.asciz "aValue"

LDIFF_SYM87=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 3,141,200,0,11
	.asciz "elm"

LDIFF_SYM88=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM88
	.byte 1,102,11
	.asciz "nConstructedPos"

LDIFF_SYM89=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM89
	.byte 3,141,208,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM90=Lfde7_end - Lfde7_start
	.long LDIFF_SYM90
Lfde7_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_Decode_byte___int__int

LDIFF_SYM91=Lme_7 - Mono_Security_ASN1_Decode_byte___int__int
	.long LDIFF_SYM91
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,150,14,151,13,68,152,12,153,11,68,154,10
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:DecodeTLV"
	.asciz "Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___"

	.byte 1,139,2
	.quad Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM92=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 0,3
	.asciz "asn1"

LDIFF_SYM93=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 1,102,3
	.asciz "pos"

LDIFF_SYM94=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 1,103,3
	.asciz "tag"

LDIFF_SYM95=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 1,104,3
	.asciz "length"

LDIFF_SYM96=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 1,105,3
	.asciz "content"

LDIFF_SYM97=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 3,141,200,0,11
	.asciz "V_0"

LDIFF_SYM98=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 1,101,11
	.asciz "nLengthLen"

LDIFF_SYM99=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 1,104,11
	.asciz "i"

LDIFF_SYM100=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 1,100,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM101=Lfde8_end - Lfde8_start
	.long LDIFF_SYM101
Lfde8_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___

LDIFF_SYM102=Lme_8 - Mono_Security_ASN1_DecodeTLV_byte___int__byte__int__byte___
	.long LDIFF_SYM102
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,148,10,149,9,68,150,8,151,7,68,152,6,153,5
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Mono.Security.ASN1:get_Item"
	.asciz "Mono_Security_ASN1_get_Item_int"

	.byte 1,157,2
	.quad Mono_Security_ASN1_get_Item_int
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM103=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM103
	.byte 2,141,24,3
	.asciz "index"

LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 1,106,11
	.asciz "V_0"

LDIFF_SYM105=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM106=Lfde9_end - Lfde9_start
	.long LDIFF_SYM106
Lfde9_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_get_Item_int

LDIFF_SYM107=Lme_9 - Mono_Security_ASN1_get_Item_int
	.long LDIFF_SYM107
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 5
	.asciz "System_Text_StringBuilder"

	.byte 48,16
LDIFF_SYM108=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,35,0,6
	.asciz "m_ChunkChars"

LDIFF_SYM109=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM109
	.byte 2,35,16,6
	.asciz "m_ChunkPrevious"

LDIFF_SYM110=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM110
	.byte 2,35,24,6
	.asciz "m_ChunkLength"

LDIFF_SYM111=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,32,6
	.asciz "m_ChunkOffset"

LDIFF_SYM112=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,36,6
	.asciz "m_MaxCapacity"

LDIFF_SYM113=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,40,0,7
	.asciz "System_Text_StringBuilder"

LDIFF_SYM114=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM115=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM116=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2
	.asciz "Mono.Security.ASN1:ToString"
	.asciz "Mono_Security_ASN1_ToString"

	.byte 1,186,2
	.quad Mono_Security_ASN1_ToString
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM117=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 1,106,11
	.asciz "hexLine"

LDIFF_SYM118=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 1,105,11
	.asciz "i"

LDIFF_SYM119=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM119
	.byte 1,104,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM120=Lfde10_end - Lfde10_start
	.long LDIFF_SYM120
Lfde10_start:

	.long 0
	.align 3
	.quad Mono_Security_ASN1_ToString

LDIFF_SYM121=Lme_a - Mono_Security_ASN1_ToString
	.long LDIFF_SYM121
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,152,24,153,23,68,154,22
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_unknown)_byte[]:Get"
	.asciz "wrapper_unknown_byte___Get_int"

	.byte 0,0
	.quad wrapper_unknown_byte___Get_int
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM122=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM123=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM124=Lfde11_end - Lfde11_start
	.long LDIFF_SYM124
Lfde11_start:

	.long 0
	.align 3
	.quad wrapper_unknown_byte___Get_int

LDIFF_SYM125=Lme_c - wrapper_unknown_byte___Get_int
	.long LDIFF_SYM125
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_runtime-invoke)_<Module>:runtime_invoke_byte__this___int"
	.asciz "wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr"

	.byte 0,0
	.quad wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr
	.quad Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM126=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,141,24,3
	.asciz "params"

LDIFF_SYM127=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,141,32,3
	.asciz "exc"

LDIFF_SYM128=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,141,40,3
	.asciz "method"

LDIFF_SYM129=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM130=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,141,56,11
	.asciz "V_1"

LDIFF_SYM131=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM132=Lfde12_end - Lfde12_start
	.long LDIFF_SYM132
Lfde12_start:

	.long 0
	.align 3
	.quad wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr

LDIFF_SYM133=Lme_d - wrapper_runtime_invoke__Module_runtime_invoke_byte__this___int_object_intptr_intptr_intptr
	.long LDIFF_SYM133
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,151,14
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_unknown)_byte[]:Set"
	.asciz "wrapper_unknown_byte___Set_int_byte"

	.byte 0,0
	.quad wrapper_unknown_byte___Set_int_byte
	.quad Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM134=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,141,16,3
	.asciz "param0"

LDIFF_SYM135=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,141,24,3
	.asciz "param1"

LDIFF_SYM136=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,141,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM137=Lfde13_end - Lfde13_start
	.long LDIFF_SYM137
Lfde13_start:

	.long 0
	.align 3
	.quad wrapper_unknown_byte___Set_int_byte

LDIFF_SYM138=Lme_e - wrapper_unknown_byte___Set_int_byte
	.long LDIFF_SYM138
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_runtime-invoke)_<Module>:runtime_invoke_void__this___int_byte"
	.asciz "wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr"

	.byte 0,0
	.quad wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr
	.quad Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM139=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,141,32,3
	.asciz "params"

LDIFF_SYM140=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 1,105,3
	.asciz "exc"

LDIFF_SYM141=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,141,40,3
	.asciz "method"

LDIFF_SYM142=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM142
	.byte 2,141,48,11
	.asciz "V_0"

LDIFF_SYM143=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,141,56,11
	.asciz "V_1"

LDIFF_SYM144=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 3,141,192,0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM145=Lfde14_end - Lfde14_start
	.long LDIFF_SYM145
Lfde14_start:

	.long 0
	.align 3
	.quad wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr

LDIFF_SYM146=Lme_f - wrapper_runtime_invoke__Module_runtime_invoke_void__this___int_byte_object_intptr_intptr_intptr
	.long LDIFF_SYM146
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,151,14,68,153,13
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
