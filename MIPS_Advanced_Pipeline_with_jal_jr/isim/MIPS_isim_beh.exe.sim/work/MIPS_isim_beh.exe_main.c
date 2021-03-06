/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000000593349665_1069848932_init();
    work_m_00000000003192444441_1946989469_init();
    work_m_00000000004097444558_3631796253_init();
    work_m_00000000004201844604_3401777568_init();
    work_m_00000000003329010838_0610666722_init();
    work_m_00000000002404236490_0707918053_init();
    work_m_00000000002732162845_1351276808_init();
    work_m_00000000002644103504_0819075620_init();
    work_m_00000000000186013042_0080203875_init();
    work_m_00000000000086366899_3492611789_init();
    work_m_00000000000154792931_0886308060_init();
    work_m_00000000004282830342_1081490573_init();
    work_m_00000000002817587062_1221364950_init();
    work_m_00000000001560921722_3258266500_init();
    work_m_00000000003317024328_4284950183_init();
    work_m_00000000000075298100_3932694078_init();
    work_m_00000000003214090725_0195718820_init();
    work_m_00000000003192444441_3079598322_init();
    work_m_00000000000913571136_1320818866_init();
    work_m_00000000000817618119_0451555461_init();
    work_m_00000000001590205622_2288028230_init();
    work_m_00000000004132927324_2841081303_init();
    work_m_00000000000305665897_4175224440_init();
    work_m_00000000002031561211_3722609711_init();
    work_m_00000000002465742815_3515808994_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002465742815_3515808994");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
