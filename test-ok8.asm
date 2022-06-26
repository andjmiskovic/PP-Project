
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$12,%15
@main_body:
		SUBS	$4,$2,%0
		MOV 	$1,%1
@for_exp_init1:
		MOV 	$5,%2
@for_exp_test1:
		CMPU 	%2,$0
		JLEU 	@for_exp_end1
@for_exp_body1:
		MULU	%1,%0,%1
@for_exp_dec1:
		SUBU 	%2,$1,%2
		JMP 	@for_exp_test1
@for_exp_end1:
		MOV 	%1,-4(%14)
		MOV 	$1,%2
@for_exp_init2:
		MOV 	$2,%3
@for_exp_test2:
		CMPU 	%3,$0
		JLEU 	@for_exp_end2
@for_exp_body2:
		MULU	%2,-4(%14),%2
@for_exp_dec2:
		SUBU 	%3,$1,%3
		JMP 	@for_exp_test2
@for_exp_end2:
		MOV 	%2,-8(%14)
		ADDS	-4(%14),-8(%14),%3
		MOV 	%3,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET