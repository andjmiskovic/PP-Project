
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		CMPS 	$2, $0
		JGTS 	@negative1
		JMP 	@positive1
@negative1:
		DIVS 	$2, $-1, $2
@positive1:
		MOV 	$2,-4(%14)
		CMPS 	$-5, $0
		JGTS 	@negative1
		JMP 	@positive1
@negative1:
		DIVS 	$-5, $-1, $-5
@positive1:
		ADDS	-4(%14),$-5,%0
		MOV 	%0,-4(%14)
@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET