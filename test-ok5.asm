
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		MOV 	$1,%0
@for_init1:
		MOV 	$3,%1
@for_test1:
		ADDS 	%1,$0,%1
		JLES 	@for_end1
@for_body1:
		MULS	%0,%1,%0
@for_dec1:
		SUBS 	%1,$1,%1
		JMP 	@for_test1
@for_end1:
		MOV 	$1,%2
@for_init2:
		MOV 	$3,%3
@for_test2:
		ADDS 	%3,$0,%3
		JLES 	@for_end2
@for_body2:
		MULS	%2,%3,%2
@for_dec2:
		SUBS 	%3,$1,%3
		JMP 	@for_test2
@for_end2:
		MOV 	$3,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET