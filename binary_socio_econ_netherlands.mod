// Simple Binary Logit model for mode choice  with socio economic variables included
//Revealed preference data from Netherland
// Charisma Choudhury, MIT, 2005

[DataFile]
$COLUMNS = 12

[Choice]
choice

[Beta]
// Name Value  LowerBound UpperBound  status (0=variable, 1=fixed)
ASC_CAR	     0.0          -100.0     100.0         0
ASC_RAIL     0.0          -100.0     100.0         1
BETA_COST    0.0          -100.0     100.0         0
BETA_TT_CAR  0.0          -100.0     100.0         0
BETA_TT_RAIL 0.0          -100.0     100.0         0
BETA_SEX     0.0          -100.0     100.0         0

[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
  0     Car  one      ASC_CAR * one + BETA_COST * car_cost + BETA_TT_CAR * car_time 
  1     Rail one      ASC_RAIL * one +BETA_COST * rail_cost + BETA_TT_RAIL * rail_time + BETA_SEX * gender

[Expressions] 
// Define here arithmetic expressions for name that are not directly 
// available from the data
one =1
rail_time =rail_ivtt +rail_acc_time + rail_egr_time
car_time =car_ivtt +car_walk_time



[Model]
// Currently, only $MNL (multinomial logit), $NL (nested logit), $CNL
// (cross-nested logit) and $NGEV (Network GEV model) are valid keywords
//
$MNL

