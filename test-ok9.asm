
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$1,%0
@for_exp_init1:
		MOV 	$3,%1
@for_exp_test1:
		CMPU 	%1,$0
		JLEU 	@for_exp_end1
@for_exp_body1:
		MULU	%0,$-5,%0
@for_exp_dec1:
		SUBU 	%1,$1,%1
		JMP 	@for_exp_test1
@for_exp_end1:
		MOV 	%0,-4(%14)
		MOV 	-4(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET