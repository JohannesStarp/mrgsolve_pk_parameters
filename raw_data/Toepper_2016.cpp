$PROB
Model of Toepper et al. 2016
Description: IV 1 CMT model linear Eliminatin
Author: Johahnnes Starp

$CMT AMT_CENT AUC TMIC_05 TMIC_1 TMIC_2 TMIC_4
// AUC  : Compartment calculation of AUC
// AMT_CENT : Amount in central PK compartment (mg)
// TMIC_x: Time above given MIC

$SET
delta= 0.5

$MAIN
double CL=TVCL * exp(ETA(1));
double V1=TVV1 * exp(ETA(2));
double ke=CL/V1;
double dose = self.amt;

$ODE
dxdt_AMT_CENT=-ke*AMT_CENT;
dxdt_AUC=AMT_CENT/V1;

// Time above MIC
double C1 = AMT_CENT/V1;

double RT05 = 0;
double RT1 = 0;
double RT2 = 0;
double RT4 = 0;

if(C1 > 0.5) RT05 = 1.0;
if(C1 > 1) RT1 = 1.0;
if(C1 > 2) RT2 = 1.0;
if(C1 > 4) RT4 = 1.0;

dxdt_TMIC_05 = RT05;
dxdt_TMIC_1 = RT1;
dxdt_TMIC_2 = RT2;
dxdt_TMIC_4 = RT4;

$PARAM @annotated
TVCL: 5.71 : Clearance 
TVV1: 52.1 : Volume of distribution

$OMEGA @annotated
ETACL: 0.775 : ETA on clearance
ETAVC: 0.253 : ETA on V1

$SIGMA @annotated
ADD:  0.589 : Additive error
PROP:  0.027: Proportional error

$TABLE
double CP = C1+C1*PROP+ADD;

$CAPTURE C1 CP ADD PROP dose

