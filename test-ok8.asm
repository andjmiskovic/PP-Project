
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$-5,-4(%14)
		MOV 	-4(%14),%0
		CMPS 	%0, $0
		JLTS 	@negative1
		JMP 	@positive1
@negative1:
		DIVS 	%0, $-1, %0
@positive1:
		MOV 	%0,%13
		JMP 	@main_exit
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET