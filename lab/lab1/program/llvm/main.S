	.text
	.file	"main.ll"
	.globl	_Z4fib1i                        # -- Begin function _Z4fib1i
	.p2align	4, 0x90
	.type	_Z4fib1i,@function
_Z4fib1i:                               # @_Z4fib1i
.Lfunc_begin0:
	.file	0 "/home/bill/Desktop/compilation/lab/lab1/program/llvm" "main.cpp" md5 0xedb13b07ae760a89a4e49642ef93dc85
	.loc	0 6 0                           # main.cpp:6:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -20(%rbp)
.Ltmp0:
	.loc	0 7 9 prologue_end              # main.cpp:7:9
	movl	$0, -16(%rbp)
	.loc	0 8 9                           # main.cpp:8:9
	movl	$1, -12(%rbp)
	.loc	0 9 9                           # main.cpp:9:9
	movl	$0, -8(%rbp)
.Ltmp1:
	.loc	0 10 14                         # main.cpp:10:14
	movl	$0, -4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp2:
	.loc	0 10 21 is_stmt 0               # main.cpp:10:21
	movl	-4(%rbp), %eax
	.loc	0 10 23                         # main.cpp:10:23
	cmpl	-20(%rbp), %eax
.Ltmp3:
	.loc	0 10 5                          # main.cpp:10:5
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp4:
	.loc	0 12 13 is_stmt 1               # main.cpp:12:13
	movl	-16(%rbp), %eax
	.loc	0 12 15 is_stmt 0               # main.cpp:12:15
	addl	-12(%rbp), %eax
	.loc	0 12 11                         # main.cpp:12:11
	movl	%eax, -8(%rbp)
	.loc	0 13 13 is_stmt 1               # main.cpp:13:13
	movl	-12(%rbp), %eax
	.loc	0 13 11 is_stmt 0               # main.cpp:13:11
	movl	%eax, -16(%rbp)
	.loc	0 14 13 is_stmt 1               # main.cpp:14:13
	movl	-8(%rbp), %eax
	.loc	0 14 11 is_stmt 0               # main.cpp:14:11
	movl	%eax, -12(%rbp)
.Ltmp5:
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	0 10 29 is_stmt 1               # main.cpp:10:29
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	.loc	0 10 5 is_stmt 0                # main.cpp:10:5
	jmp	.LBB0_1
.Ltmp6:
.LBB0_4:
	.loc	0 16 12 is_stmt 1               # main.cpp:16:12
	movl	-8(%rbp), %eax
	.loc	0 16 5 is_stmt 0                # main.cpp:16:5
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	_Z4fib1i, .Lfunc_end0-_Z4fib1i
	.cfi_endproc
                                        # -- End function
	.globl	_Z3fibi                         # -- Begin function _Z3fibi
	.p2align	4, 0x90
	.type	_Z3fibi,@function
_Z3fibi:                                # @_Z3fibi
.Lfunc_begin1:
	.loc	0 21 0 is_stmt 1                # main.cpp:21:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
.Ltmp8:
	.loc	0 22 11 prologue_end            # main.cpp:22:11
	cmpl	$0, -12(%rbp)
.Ltmp9:
	.loc	0 22 9 is_stmt 0                # main.cpp:22:9
	jne	.LBB1_2
# %bb.1:
.Ltmp10:
	.loc	0 24 9 is_stmt 1                # main.cpp:24:9
	movl	$0, -16(%rbp)
	jmp	.LBB1_5
.Ltmp11:
.LBB1_2:
	.loc	0 26 11                         # main.cpp:26:11
	cmpl	$1, -12(%rbp)
.Ltmp12:
	.loc	0 26 9 is_stmt 0                # main.cpp:26:9
	jne	.LBB1_4
# %bb.3:
.Ltmp13:
	.loc	0 28 9 is_stmt 1                # main.cpp:28:9
	movl	$1, -16(%rbp)
	jmp	.LBB1_5
.Ltmp14:
.LBB1_4:
	.loc	0 30 16                         # main.cpp:30:16
	movl	-12(%rbp), %edi
	.loc	0 30 18 is_stmt 0               # main.cpp:30:18
	subl	$1, %edi
	.loc	0 30 12                         # main.cpp:30:12
	callq	_Z3fibi
	movl	%eax, %ebx
	.loc	0 30 29                         # main.cpp:30:29
	movl	-12(%rbp), %edi
	.loc	0 30 31                         # main.cpp:30:31
	subl	$2, %edi
	.loc	0 30 25                         # main.cpp:30:25
	callq	_Z3fibi
	.loc	0 30 23                         # main.cpp:30:23
	addl	%eax, %ebx
	.loc	0 30 5                          # main.cpp:30:5
	movl	%ebx, -16(%rbp)
.LBB1_5:
	.loc	0 31 1 is_stmt 1                # main.cpp:31:1
	movl	-16(%rbp), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	_Z3fibi, .Lfunc_end1-_Z3fibi
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin2:
	.loc	0 34 0                          # main.cpp:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.Ltmp16:
	.loc	0 35 12 prologue_end            # main.cpp:35:12
	movl	$10, %edi
	callq	_Z4fib1i
	.loc	0 35 5 is_stmt 0                # main.cpp:35:5
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	11                              # DW_TAG_lexical_block
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x96 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	33                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.byte	2                               # Abbrev [2] 0x23:0x4f DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	3                               # DW_AT_linkage_name
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	157                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x33:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x3e:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.byte	10                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x49:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	11                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x54:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	12                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5f:0x12 DW_TAG_lexical_block
	.byte	1                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp1                   # DW_AT_high_pc
	.byte	4                               # Abbrev [4] 0x65:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	124
	.byte	13                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x72:0x1c DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	6                               # DW_AT_linkage_name
	.byte	7                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	157                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x82:0xb DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.long	157                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8e:0xf DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	157                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x9d:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	60                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1" # string offset=0
.Linfo_string1:
	.asciz	"main.cpp"                      # string offset=37
.Linfo_string2:
	.asciz	"/home/bill/Desktop/compilation/lab/lab1/program/llvm" # string offset=46
.Linfo_string3:
	.asciz	"_Z4fib1i"                      # string offset=99
.Linfo_string4:
	.asciz	"fib1"                          # string offset=108
.Linfo_string5:
	.asciz	"int"                           # string offset=113
.Linfo_string6:
	.asciz	"_Z3fibi"                       # string offset=117
.Linfo_string7:
	.asciz	"fib"                           # string offset=125
.Linfo_string8:
	.asciz	"main"                          # string offset=129
.Linfo_string9:
	.asciz	"n"                             # string offset=134
.Linfo_string10:
	.asciz	"a"                             # string offset=136
.Linfo_string11:
	.asciz	"b"                             # string offset=138
.Linfo_string12:
	.asciz	"c"                             # string offset=140
.Linfo_string13:
	.asciz	"i"                             # string offset=142
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
	.quad	.Ltmp1
	.quad	.Lfunc_begin1
	.quad	.Lfunc_begin2
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
