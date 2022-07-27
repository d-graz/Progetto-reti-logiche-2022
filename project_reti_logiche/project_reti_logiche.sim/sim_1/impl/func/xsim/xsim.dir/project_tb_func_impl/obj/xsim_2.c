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
IKI_DLLESPEC extern void execute_1090(char*, char *);
IKI_DLLESPEC extern void execute_1091(char*, char *);
IKI_DLLESPEC extern void execute_1092(char*, char *);
IKI_DLLESPEC extern void execute_29(char*, char *);
IKI_DLLESPEC extern void execute_30(char*, char *);
IKI_DLLESPEC extern void execute_31(char*, char *);
IKI_DLLESPEC extern void execute_32(char*, char *);
IKI_DLLESPEC extern void execute_34(char*, char *);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_44(char*, char *);
IKI_DLLESPEC extern void execute_47(char*, char *);
IKI_DLLESPEC extern void execute_52(char*, char *);
IKI_DLLESPEC extern void execute_56(char*, char *);
IKI_DLLESPEC extern void execute_61(char*, char *);
IKI_DLLESPEC extern void execute_68(char*, char *);
IKI_DLLESPEC extern void execute_70(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_72(char*, char *);
IKI_DLLESPEC extern void execute_105(char*, char *);
IKI_DLLESPEC extern void execute_109(char*, char *);
IKI_DLLESPEC extern void execute_161(char*, char *);
IKI_DLLESPEC extern void execute_162(char*, char *);
IKI_DLLESPEC extern void execute_163(char*, char *);
IKI_DLLESPEC extern void execute_189(char*, char *);
IKI_DLLESPEC extern void execute_190(char*, char *);
IKI_DLLESPEC extern void execute_191(char*, char *);
IKI_DLLESPEC extern void execute_192(char*, char *);
IKI_DLLESPEC extern void execute_193(char*, char *);
IKI_DLLESPEC extern void execute_194(char*, char *);
IKI_DLLESPEC extern void execute_195(char*, char *);
IKI_DLLESPEC extern void execute_196(char*, char *);
IKI_DLLESPEC extern void execute_197(char*, char *);
IKI_DLLESPEC extern void execute_202(char*, char *);
IKI_DLLESPEC extern void execute_207(char*, char *);
IKI_DLLESPEC extern void execute_209(char*, char *);
IKI_DLLESPEC extern void execute_210(char*, char *);
IKI_DLLESPEC extern void execute_211(char*, char *);
IKI_DLLESPEC extern void execute_225(char*, char *);
IKI_DLLESPEC extern void execute_226(char*, char *);
IKI_DLLESPEC extern void execute_227(char*, char *);
IKI_DLLESPEC extern void execute_228(char*, char *);
IKI_DLLESPEC extern void execute_229(char*, char *);
IKI_DLLESPEC extern void execute_230(char*, char *);
IKI_DLLESPEC extern void execute_231(char*, char *);
IKI_DLLESPEC extern void execute_232(char*, char *);
IKI_DLLESPEC extern void execute_233(char*, char *);
IKI_DLLESPEC extern void execute_235(char*, char *);
IKI_DLLESPEC extern void execute_239(char*, char *);
IKI_DLLESPEC extern void execute_243(char*, char *);
IKI_DLLESPEC extern void execute_245(char*, char *);
IKI_DLLESPEC extern void execute_248(char*, char *);
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
IKI_DLLESPEC extern void execute_275(char*, char *);
IKI_DLLESPEC extern void execute_290(char*, char *);
IKI_DLLESPEC extern void execute_293(char*, char *);
IKI_DLLESPEC extern void execute_296(char*, char *);
IKI_DLLESPEC extern void execute_299(char*, char *);
IKI_DLLESPEC extern void execute_512(char*, char *);
IKI_DLLESPEC extern void execute_525(char*, char *);
IKI_DLLESPEC extern void execute_539(char*, char *);
IKI_DLLESPEC extern void execute_553(char*, char *);
IKI_DLLESPEC extern void execute_567(char*, char *);
IKI_DLLESPEC extern void execute_571(char*, char *);
IKI_DLLESPEC extern void execute_574(char*, char *);
IKI_DLLESPEC extern void execute_577(char*, char *);
IKI_DLLESPEC extern void execute_582(char*, char *);
IKI_DLLESPEC extern void execute_589(char*, char *);
IKI_DLLESPEC extern void execute_594(char*, char *);
IKI_DLLESPEC extern void execute_597(char*, char *);
IKI_DLLESPEC extern void execute_612(char*, char *);
IKI_DLLESPEC extern void execute_617(char*, char *);
IKI_DLLESPEC extern void execute_620(char*, char *);
IKI_DLLESPEC extern void execute_624(char*, char *);
IKI_DLLESPEC extern void execute_629(char*, char *);
IKI_DLLESPEC extern void execute_637(char*, char *);
IKI_DLLESPEC extern void execute_649(char*, char *);
IKI_DLLESPEC extern void execute_652(char*, char *);
IKI_DLLESPEC extern void execute_657(char*, char *);
IKI_DLLESPEC extern void execute_665(char*, char *);
IKI_DLLESPEC extern void execute_684(char*, char *);
IKI_DLLESPEC extern void execute_688(char*, char *);
IKI_DLLESPEC extern void execute_884(char*, char *);
IKI_DLLESPEC extern void execute_889(char*, char *);
IKI_DLLESPEC extern void execute_892(char*, char *);
IKI_DLLESPEC extern void execute_896(char*, char *);
IKI_DLLESPEC extern void execute_900(char*, char *);
IKI_DLLESPEC extern void execute_906(char*, char *);
IKI_DLLESPEC extern void execute_913(char*, char *);
IKI_DLLESPEC extern void execute_918(char*, char *);
IKI_DLLESPEC extern void execute_924(char*, char *);
IKI_DLLESPEC extern void execute_926(char*, char *);
IKI_DLLESPEC extern void execute_927(char*, char *);
IKI_DLLESPEC extern void execute_959(char*, char *);
IKI_DLLESPEC extern void execute_960(char*, char *);
IKI_DLLESPEC extern void execute_1043(char*, char *);
IKI_DLLESPEC extern void execute_1047(char*, char *);
IKI_DLLESPEC extern void execute_1049(char*, char *);
IKI_DLLESPEC extern void execute_1050(char*, char *);
IKI_DLLESPEC extern void execute_1051(char*, char *);
IKI_DLLESPEC extern void execute_1074(char*, char *);
IKI_DLLESPEC extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_255(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_262(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_269(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_283(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_290(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_297(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_311(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_318(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_332(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_338(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_366(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_380(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_403(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_417(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_755(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_779(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_795(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_819(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_833(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_845(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_859(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_866(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_873(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_880(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_887(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_894(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[164] = {(funcp)execute_1090, (funcp)execute_1091, (funcp)execute_1092, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_34, (funcp)execute_41, (funcp)execute_44, (funcp)execute_47, (funcp)execute_52, (funcp)execute_56, (funcp)execute_61, (funcp)execute_68, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_105, (funcp)execute_109, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)execute_202, (funcp)execute_207, (funcp)execute_209, (funcp)execute_210, (funcp)execute_211, (funcp)execute_225, (funcp)execute_226, (funcp)execute_227, (funcp)execute_228, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_235, (funcp)execute_239, (funcp)execute_243, (funcp)execute_245, (funcp)execute_248, (funcp)execute_258, (funcp)execute_261, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_275, (funcp)execute_290, (funcp)execute_293, (funcp)execute_296, (funcp)execute_299, (funcp)execute_512, (funcp)execute_525, (funcp)execute_539, (funcp)execute_553, (funcp)execute_567, (funcp)execute_571, (funcp)execute_574, (funcp)execute_577, (funcp)execute_582, (funcp)execute_589, (funcp)execute_594, (funcp)execute_597, (funcp)execute_612, (funcp)execute_617, (funcp)execute_620, (funcp)execute_624, (funcp)execute_629, (funcp)execute_637, (funcp)execute_649, (funcp)execute_652, (funcp)execute_657, (funcp)execute_665, (funcp)execute_684, (funcp)execute_688, (funcp)execute_884, (funcp)execute_889, (funcp)execute_892, (funcp)execute_896, (funcp)execute_900, (funcp)execute_906, (funcp)execute_913, (funcp)execute_918, (funcp)execute_924, (funcp)execute_926, (funcp)execute_927, (funcp)execute_959, (funcp)execute_960, (funcp)execute_1043, (funcp)execute_1047, (funcp)execute_1049, (funcp)execute_1050, (funcp)execute_1051, (funcp)execute_1074, (funcp)transaction_4, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_44, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_255, (funcp)transaction_262, (funcp)transaction_269, (funcp)transaction_276, (funcp)transaction_283, (funcp)transaction_290, (funcp)transaction_297, (funcp)transaction_304, (funcp)transaction_311, (funcp)transaction_318, (funcp)transaction_325, (funcp)transaction_332, (funcp)transaction_338, (funcp)transaction_346, (funcp)transaction_352, (funcp)transaction_359, (funcp)transaction_366, (funcp)transaction_373, (funcp)transaction_380, (funcp)transaction_396, (funcp)transaction_403, (funcp)transaction_410, (funcp)transaction_417, (funcp)transaction_635, (funcp)transaction_651, (funcp)transaction_659, (funcp)transaction_675, (funcp)transaction_683, (funcp)transaction_699, (funcp)transaction_707, (funcp)transaction_723, (funcp)transaction_731, (funcp)transaction_747, (funcp)transaction_755, (funcp)transaction_771, (funcp)transaction_779, (funcp)transaction_795, (funcp)transaction_803, (funcp)transaction_819, (funcp)transaction_833, (funcp)transaction_845, (funcp)transaction_859, (funcp)transaction_866, (funcp)transaction_873, (funcp)transaction_880, (funcp)transaction_887, (funcp)transaction_894};
const int NumRelocateId= 164;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/project_tb_func_impl/xsim.reloc",  (void **)funcTab, 164);
	iki_vhdl_file_variable_register(dp + 3350416);
	iki_vhdl_file_variable_register(dp + 3350472);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/project_tb_func_impl/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/project_tb_func_impl/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/project_tb_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/project_tb_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/project_tb_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
