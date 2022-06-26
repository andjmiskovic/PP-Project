
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		ADDU	$11,$6,%0
		MOV 	%0,%1
		MOV 	%0,%2
@while_test1:
		SUBS 	%2,$5,%2
		CMPS 	%2,$0
		JLES 	@while_end1
@while_body1:
		SUBS 	%1,$5,%1
		JMP 	@while_test1
@while_end1:
	
		MOV 	%1,-4(%14)
		MOV 	-4(%14),%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET