#ifndef CODEGEN_H
#define CODEGEN_H

#include "defs.h"

// funkcije za zauzimanje, oslobadjanje registra
int  take_reg(void);
void free_reg(void);
// oslobadja ako jeste indeks registra
void free_if_reg(int reg_index); 

// ispisuje simbol (u odgovarajucem obliku) 
// koji se nalazi na datom indeksu u tabeli simbola
void gen_sym_name(int index);

// generise CMP naredbu, parametri su indeksi operanada u TS-a 
void gen_cmp(int operand1_index, int operand2_index);

// generise MOV naredbu, parametri su indeksi operanada u TS-a 
void gen_mov(int input_index, int output_index);

// generisanje aritmetickih i matematickih operacija
int gen_arop(int op1_index, int operation, int op2_index);

// generisanje apsolutne vrednosti
int gen_abs(int exp_index, int abs_num);

// generisanje modula
unsigned gen_mod(unsigned number_index, unsigned modul_index, int mod_num);

// generisanje faktorijela
unsigned gen_fac(unsigned number_index, int fac_num);

// generisanje faktorijela
unsigned gen_exp(unsigned number_index, unsigned exp_index, int exponent_num);

#endif
