#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "codegen.h"
#include "symtab.h"


extern FILE *output;
int free_reg_num = 0;
char invalid_value[] = "???";

// REGISTERS

int take_reg(void) {
  if(free_reg_num > LAST_WORKING_REG) {
    err("Compiler error! No free registers!");
    exit(EXIT_FAILURE);
  }
  return free_reg_num++;
}

void free_reg(void) {
   if(free_reg_num < 1) {
      err("Compiler error! No more registers to free!");
      exit(EXIT_FAILURE);
   }
   else
      set_type(--free_reg_num, NO_TYPE);
}

// Ako je u pitanju indeks registra, oslobodi registar
void free_if_reg(int reg_index) {
  if(reg_index >= 0 && reg_index <= LAST_WORKING_REG)
    free_reg();
}

// SYMBOL
void gen_sym_name(int index) {
  if(index > -1) {
    if(get_kind(index) == VAR) // -n*4(%14)
      code("-%d(%%14)", get_atr1(index) * 4);
    else 
      if(get_kind(index) == PAR) // m*4(%14)
        code("%d(%%14)", 4 + get_atr1(index) *4);
      else
        if(get_kind(index) == LIT)
          code("$%s", get_name(index));
        else //function, reg
          code("%s", get_name(index));
  }
}

// OTHER

void gen_cmp(int op1_index, int op2_index) {
  if(get_type(op1_index) == INT)
    code("\n\t\tCMPS \t");
  else
    code("\n\t\tCMPU \t");
  gen_sym_name(op1_index);
  code(",");
  gen_sym_name(op2_index);
  free_if_reg(op2_index);
  free_if_reg(op1_index);
}

void gen_mov(int input_index, int output_index) {
  code("\n\t\tMOV \t");
  gen_sym_name(input_index);
  code(",");
  gen_sym_name(output_index);

  //ako se smešta u registar, treba preneti tip 
  if(output_index >= 0 && output_index <= LAST_WORKING_REG)
    set_type(output_index, get_type(input_index));
  free_if_reg(input_index);
}

int gen_arop(int op1_index, int operation, int op2_index) {
        int type = get_type(op1_index);    
        code("\n\t\t%s\t", ar_instructions[operation + (type - 1) * AROP_NUMBER]);
        gen_sym_name(op1_index);
        code(",");
        gen_sym_name(op2_index);
        code(",");
        free_if_reg(op2_index);
        free_if_reg(op1_index);
        
        int taken_reg = take_reg();
        gen_sym_name(taken_reg);
        set_type(taken_reg, type);
        return taken_reg;
}

int gen_abs(int exp_index, int abs_num) {
	abs_num++;
	code("\n\t\tCMPS \t");
	gen_sym_name(exp_index);
	code(", $0");
	code("\n\t\tJGTS \t@negative%d", abs_num);
	code("\n\t\tJMP \t@positive%d", abs_num);
	code("\n@negative%d:", abs_num);
	code("\n\t\tDIVS \t");
	gen_sym_name(exp_index);
        code(", $-1, ");
        gen_sym_name(exp_index);
	code("\n@positive%d:", abs_num);
	return exp_index;
}
