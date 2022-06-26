
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$5,-4(%14)
		MOV 	-4(%14),%0
		MOV 	-4(%14),%1
@while_test1:
		SUBS 	%1,$2,%1
		CMPS 	%1,$0
		JLES 	@while_end1
@while_body1:
		SUBS 	%0,$2,%0
		JMP 	@while_test1
@while_end1:
	
		MOV 	%0,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET