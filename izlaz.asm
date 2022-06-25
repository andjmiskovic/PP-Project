
main:
		PUSH	%14
		MOV 	%15,%14
		SUBS	%15,$4,%15
@main_body:
		MOV 	$10,-4(%14)
@for_init:
		sub R0, R0, R0
@for_test:
		sub modul, r0, r2
		jmpz for_end
@for_body:
		muls r7, number, r7
@for_inc:
		inc R0, R0
		jmp for_test
@for_end:
		...

@main_exit:
		MOV 	%14,%15
		POP 	%14
		RET
