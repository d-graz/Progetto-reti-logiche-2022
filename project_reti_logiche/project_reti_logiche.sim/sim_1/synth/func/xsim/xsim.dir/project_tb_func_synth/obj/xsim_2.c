/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_1115(char*, char *);
IKI_DLLESPEC extern void execute_1116(char*, char *);
IKI_DLLESPEC extern void execute_1117(char*, char *);
IKI_DLLESPEC extern void execute_29(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_39(char*, char *);
IKI_DLLESPEC extern void execute_42(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void execute_50(char*, char *);
IKI_DLLESPEC extern void execute_54(char*, char *);
IKI_DLLESPEC extern void execute_63(char*, char *);
IKI_DLLESPEC extern void execute_65(char*, char *);
IKI_DLLESPEC extern void execute_66(char*, char *);
IKI_DLLESPEC extern void execute_67(char*, char *);
IKI_DLLESPEC extern void execute_100(char*, char *);
IKI_DLLESPEC extern void execute_104(char*, char *);
IKI_DLLESPEC extern void execute_156(char*, char *);
IKI_DLLESPEC extern void execute_157(char*, char *);
IKI_DLLESPEC extern void execute_158(char*, char *);
IKI_DLLESPEC extern void execute_184(char*, char *);
IKI_DLLESPEC extern void execute_185(char*, char *);
IKI_DLLESPEC extern void execute_186(char*, char *);
IKI_DLLESPEC extern void execute_187(char*, char *);
IKI_DLLESPEC extern void execute_188(char*, char *);
IKI_DLLESPEC extern void execute_189(char*, char *);
IKI_DLLESPEC extern void execute_190(char*, char *);
IKI_DLLESPEC extern void execute_191(char*, char *);
IKI_DLLESPEC extern void execute_192(char*, char *);
IKI_DLLESPEC extern void execute_197(char*, char *);
IKI_DLLESPEC extern void execute_202(char*, char *);
IKI_DLLESPEC extern void execute_204(char*, char *);
IKI_DLLESPEC extern void execute_205(char*, char *);
IKI_DLLESPEC extern void execute_206(char*, char *);
IKI_DLLESPEC extern void execute_220(char*, char *);
IKI_DLLESPEC extern void execute_221(char*, char *);
IKI_DLLESPEC extern void execute_222(char*, char *);
IKI_DLLESPEC extern void execute_223(char*, char *);
IKI_DLLESPEC extern void execute_224(char*, char *);
IKI_DLLESPEC extern void execute_225(char*, char *);
IKI_DLLESPEC extern void execute_226(char*, char *);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_230(char*, char *);
IKI_DLLESPEC extern void execute_234(char*, char *);
IKI_DLLESPEC extern void execute_238(char*, char *);
IKI_DLLESPEC extern void execute_240(char*, char *);
IKI_DLLESPEC extern void execute_243(char*, char *);
IKI_DLLESPEC extern void execute_246(char*, char *);
IKI_DLLESPEC extern void execute_255(char*, char *);
IKI_DLLESPEC extern void execute_258(char*, char *);
IKI_DLLESPEC extern void execute_261(char*, char *);
IKI_DLLESPEC extern void execute_263(char*, char *);
IKI_DLLESPEC extern void execute_264(char*, char *);
IKI_DLLESPEC extern void execute_265(char*, char *);
IKI_DLLESPEC extern void execute_266(char*, char *);
IKI_DLLESPEC extern void execute_267(char*, char *);
IKI_DLLESPEC extern void execute_268(char*, char *);
IKI_DLLESPEC extern void execute_269(char*, char *);
IKI_DLLESPEC extern void execute_270(char*, char *);
IKI_DLLESPEC extern void execute_271(char*, char *);
IKI_DLLESPEC extern void execute_288(char*, char *);
IKI_DLLESPEC extern void execute_293(char*, char *);
IKI_DLLESPEC extern void execute_298(char*, char *);
IKI_DLLESPEC extern void execute_303(char*, char *);
IKI_DLLESPEC extern void execute_507(char*, char *);
IKI_DLLESPEC extern void execute_521(char*, char *);
IKI_DLLESPEC extern void execute_529(char*, char *);
IKI_DLLESPEC extern void execute_534(char*, char *);
IKI_DLLESPEC extern void execute_549(char*, char *);
IKI_DLLESPEC extern void execute_564(char*, char *);
IKI_DLLESPEC extern void execute_578(char*, char *);
IKI_DLLESPEC extern void execute_582(char*, char *);
IKI_DLLESPEC extern void execute_585(char*, char *);
IKI_DLLESPEC extern void execute_590(char*, char *);
IKI_DLLESPEC extern void execute_596(char*, char *);
IKI_DLLESPEC extern void execute_599(char*, char *);
IKI_DLLESPEC extern void execute_602(char*, char *);
IKI_DLLESPEC extern void execute_605(char*, char *);
IKI_DLLESPEC extern void execute_610(char*, char *);
IKI_DLLESPEC extern void execute_617(char*, char *);
IKI_DLLESPEC extern void execute_622(char*, char *);
IKI_DLLESPEC extern void execute_625(char*, char *);
IKI_DLLESPEC extern void execute_629(char*, char *);
IKI_DLLESPEC extern void execute_640(char*, char *);
IKI_DLLESPEC extern void execute_645(char*, char *);
IKI_DLLESPEC extern void execute_648(char*, char *);
IKI_DLLESPEC extern void execute_652(char*, char *);
IKI_DLLESPEC extern void execute_657(char*, char *);
IKI_DLLESPEC extern void execute_665(char*, char *);
IKI_DLLESPEC extern void execute_670(char*, char *);
IKI_DLLESPEC extern void execute_673(char*, char *);
IKI_DLLESPEC extern void execute_677(char*, char *);
IKI_DLLESPEC extern void execute_680(char*, char *);
IKI_DLLESPEC extern void execute_685(char*, char *);
IKI_DLLESPEC extern void execute_704(char*, char *);
IKI_DLLESPEC extern void execute_708(char*, char *);
IKI_DLLESPEC extern void execute_911(char*, char *);
IKI_DLLESPEC extern void execute_921(char*, char *);
IKI_DLLESPEC extern void execute_927(char*, char *);
IKI_DLLESPEC extern void execute_931(char*, char *);
IKI_DLLESPEC extern void execute_935(char*, char *);
IKI_DLLESPEC extern void execute_940(char*, char *);
IKI_DLLESPEC extern void execute_943(char*, char *);
IKI_DLLESPEC extern void execute_945(char*, char *);
IKI_DLLESPEC extern void execute_957(char*, char *);
IKI_DLLESPEC extern void execute_959(char*, char *);
IKI_DLLESPEC extern void execute_960(char*, char *);
IKI_DLLESPEC extern void execute_992(char*, char *);
IKI_DLLESPEC extern void execute_993(char*, char *);
IKI_DLLESPEC extern void execute_1074(char*, char *);
IKI_DLLESPEC extern void execute_1075(char*, char *);
IKI_DLLESPEC extern void execute_1076(char*, char *);
IKI_DLLESPEC extern void execute_1099(char*, char *);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_265(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_348(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_376(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_383(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_406(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_413(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_427(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_645(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_661(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_669(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_693(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_709(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_717(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_733(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_741(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_757(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_765(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_781(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_789(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_805(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_813(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_829(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_843(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_852(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_862(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_869(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_876(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_883(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_890(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_897(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[168] = {(funcp)execute_1115, (funcp)execute_1116, (funcp)execute_1117, (funcp)execute_29, (funcp)execute_30, (funcp)execute_32, (funcp)execute_39, (funcp)execute_42, (funcp)execute_45, (funcp)execute_50, (funcp)execute_54, (funcp)execute_63, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_100, (funcp)execute_104, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_197, (funcp)execute_202, (funcp)execute_204, (funcp)execute_205, (funcp)execute_206, (funcp)execute_220, (funcp)execute_221, (funcp)execute_222, (funcp)execute_223, (funcp)execute_224, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_230, (funcp)execute_234, (funcp)execute_238, (funcp)execute_240, (funcp)execute_243, (funcp)execute_246, (funcp)execute_255, (funcp)execute_258, (funcp)execute_261, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_288, (funcp)execute_293, (funcp)execute_298, (funcp)execute_303, (funcp)execute_507, (funcp)execute_521, (funcp)execute_529, (funcp)execute_534, (funcp)execute_549, (funcp)execute_564, (funcp)execute_578, (funcp)execute_582, (funcp)execute_585, (funcp)execute_590, (funcp)execute_596, (funcp)execute_599, (funcp)execute_602, (funcp)execute_605, (funcp)execute_610, (funcp)execute_617, (funcp)execute_622, (funcp)execute_625, (funcp)execute_629, (funcp)execute_640, (funcp)execute_645, (funcp)execute_648, (funcp)execute_652, (funcp)execute_657, (funcp)execute_665, (funcp)execute_670, (funcp)execute_673, (funcp)execute_677, (funcp)execute_680, (funcp)execute_685, (funcp)execute_704, (funcp)execute_708, (funcp)execute_911, (funcp)execute_921, (funcp)execute_927, (funcp)execute_931, (funcp)execute_935, (funcp)execute_940, (funcp)execute_943, (funcp)execute_945, (funcp)execute_957, (funcp)execute_959, (funcp)execute_960, (funcp)execute_992, (funcp)execute_993, (funcp)execute_1074, (funcp)execute_1075, (funcp)execute_1076, (funcp)execute_1099, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_44, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_265, (funcp)transaction_272, (funcp)transaction_279, (funcp)transaction_286, (funcp)transaction_293, (funcp)transaction_300, (funcp)transaction_307, (funcp)transaction_314, (funcp)transaction_321, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_342, (funcp)transaction_348, (funcp)transaction_356, (funcp)transaction_362, (funcp)transaction_369, (funcp)transaction_376, (funcp)transaction_383, (funcp)transaction_390, (funcp)transaction_406, (funcp)transaction_413, (funcp)transaction_420, (funcp)transaction_427, (funcp)transaction_645, (funcp)transaction_661, (funcp)transaction_669, (funcp)transaction_685, (funcp)transaction_693, (funcp)transaction_709, (funcp)transaction_717, (funcp)transaction_733, (funcp)transaction_741, (funcp)transaction_757, (funcp)transaction_765, (funcp)transaction_781, (funcp)transaction_789, (funcp)transaction_805, (funcp)transaction_813, (funcp)transaction_829, (funcp)transaction_843, (funcp)transaction_852, (funcp)transaction_862, (funcp)transaction_869, (funcp)transaction_876, (funcp)transaction_883, (funcp)transaction_890, (funcp)transaction_897};
const int NumRelocateId= 168;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_synth/xsim.reloc",  (void **)funcTab, 168);
	iki_vhdl_file_variable_register(dp + 3351192);
	iki_vhdl_file_variable_register(dp + 3351248);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_synth/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
