$PROB PK model
1. Based on: run007 NONMEM
2. Description: 1_CMT_IIV_EXP_WT_on_V_exp_ADVAN13

$CMT CENT AUC

$MAIN
double TVCL = THETA1;
double CL = TVCL * exp(ETA(1));
double TVV1 = THETA2 * pow(WT/75, THETA3);
double V = TVV1 * exp(ETA(2));
double dose = self.amt;

// PK parameter
if(NEWIND <= 1 || EVID == 1 || EVID == 4) {
 double CMAX = 0;
 double TMAX = 0;
}

$PARAM
THETA1 = 5.86,         // CL
THETA2 = 55.1,         // V1
THETA3 = 1.14,         // WT on V1
WT = 75,               // body weight (kg)
AGE = 50

$OMEGA
@labels ETA_CL ETA_V
0 0

$SIGMA 
0


$DES

// max
double C1 = CENT/V;

if(C1 > CMAX) TMAX = SOLVERTIME;
if(C1 > CMAX) CMAX = C1;

dxdt_CENT = -CL/V * CENT;
dxdt_AUC  = CENT/V;

$TABLE
double T_max = TMAX;

$ERROR
double Y = C1 * (1 + EPS(1)); // proportiopal 

$CAPTURE C1 TVCL CL ETA_CL TVV1 V ETA_V CMAX TMAX T_max WT AGE dose;

