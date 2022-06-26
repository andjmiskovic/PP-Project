
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		MOV 	$1,%0
@for_exp_init1:
		MOV 	$3,%1
@for_exp_test1:
		CMPU 	%1,$0
		JLEU 	@for_exp_end1
@for_exp_body1:
		MULU	%0,$2,%0
@for_exp_dec1:
		SUBU 	%1,$1,%1
		JMP 	@for_exp_test1
@for_exp_end1:
		MOV 	$1,%2
@for_exp_init2:
		MOV 	$4,%3
@for_exp_test2:
		CMPU 	%3,$0
		JLEU 	@for_exp_end2
@for_exp_body2:
		MULU	%2,$1,%2
@for_exp_dec2:
		SUBU 	%3,$1,%3
		JMP 	@for_exp_test2
@for_exp_end2:
		MOV 	$1,%4
@for_exp_init3:
		MOV 	$7,%5
@for_exp_test3:
		CMPU 	%5,$0
		JLEU 	@for_exp_end3
@for_exp_body3:
		MULU	%4,%2,%4
@for_exp_dec3:
		SUBU 	%5,$1,%5
		JMP 	@for_exp_test3
@for_exp_end3:
		ADDU	%0,%4,%4
		MOV 	%4,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET