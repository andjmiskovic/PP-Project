
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	$1,%0
@for_init1:
		MOV 	-4(%14),%1
@for_test1:
		ADDS 	%1,$0,%1
		JLES 	@for_end1
@for_body1:
		MULS	%0,%1,%0
@for_dec1:
		SUBS 	%1,$1,%1
		JMP 	@for_test1
@for_end1:
		MOV 	-4(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET