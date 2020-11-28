// Residential telephone services case study
// Authors : G. Antonini, E. Frejinger, C. Gioia, M. Thémans
//
// File created on : Wed Jan 29 13:11:40 2003
// Michel Bierlaire, EPFL (c) 2003

[Choice]
choice

[Beta]
// Name Value  LowerBound UpperBound  status (0=variable, 1=fixed)
ASC_BM	    0.0          -10.0     10.0         0
ASC_SM	    0.0          -10.0     10.0         1
ASC_LF	    0.0          -10.0     10.0         0
ASC_EF	    0.0          -10.0     10.0         0
ASC_MF	    0.0          -10.0     10.0         0
B_COST      0.0          -10.0     10.0         0

[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
  1     BM   avail1   ASC_BM * one + B_COST * logcostBM
  2     SM   avail2   ASC_SM * one + B_COST * logcostSM
  3     LF   avail3   ASC_LF * one + B_COST * logcostLF
  4     EF   avail4   ASC_EF * one + B_COST * logcostEF
  5     MF   avail5   ASC_MF * one + B_COST * logcostMF

[Mu]
// Value LowerBound UpperBound Status
+1.0000000e+00	+0.0000000e+00	+1.0000000e+00	1

[Expressions] 
// Define here arithmetic expressions for name that are not directly 
// available from the data
one = 1
logcostBM = log(cost1 ) 
logcostSM = log(cost2 ) 
logcostLF = log(cost3 ) 
logcostEF = log(cost4 ) 
logcostMF = log(cost5 )
city = ((area = 1) || (area = 2) )



[Model]
// Currently, only $MNL (multinomial logit), $NL (nested logit), $CNL
// (cross-nested logit) and $NGEV (Network GEV model) are valid keywords
//
$CNL

[CNLNests]
// Name       paramvalue LowerBound UpperBound  status 
N_MEAS         1.0        1          10        0
N_FLAT         1.0        1          10        0

[CNLAlpha]
// Alt     Nest       value   LowerBound    UpperBound  status
BM      N_MEAS	 1       0        1.0        1
SM      N_MEAS     0.5     0        1.0        1
SM      N_FLAT     0.5     0        1.0        1
LF      N_FLAT     1       0        1.0        1
EF      N_FLAT     1       0        1.0        1
MF      N_FLAT     1       0        1.0        1

[Mu]
// In general, the value of mu must be fixed to 1. For testing purposes, you
// may change its value or let it be estimated.
// Value LowerBound UpperBound Status
+1.0000000e+00	+0.0000000e+00	+1.0000000e+00	1

