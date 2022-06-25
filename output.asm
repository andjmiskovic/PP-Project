
main:
		PUSH	%14
		MOV 	%15,%14
@main_body:
		CMPS 	$-165, $0
		JGTS 	@negative1
		JMP 	@positive1
@negative1:
		DIVS 	$-165, $-1, $-165
@positive1:
		MOV 	$-165,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET