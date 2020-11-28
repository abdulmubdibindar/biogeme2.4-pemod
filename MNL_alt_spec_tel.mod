// Residential telephone services case study
//
// File created on : Wed Jan 29 13:11:40 2003
// Michel Bierlaire, EPFL (c) 2003

[DataFile]
$COLUMNS = 24

[Choice]
choice

[Beta]
// Name Value  LowerBound UpperBound  status (0=variable, 1=fixed)
ASC_1	    0.0          -10.0     10.0         0
ASC_2	    0.0          -10.0     10.0         1
ASC_3	    0.0          -10.0     10.0         0
ASC_4	    0.0          -10.0     10.0         0
ASC_5	    0.0          -10.0     10.0         0
B1_FCOST  0.0          -10.0     10.0         0
B2_MCOST  0.0          -10.0     10.0         0
// 



[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
  1     BM   avail1   ASC_1 * one + B2_MCOST * cost1 
  2     SM   avail2   ASC_2 * one + B2_MCOST * cost2 
  3     LF   avail3   ASC_3 * one + B1_FCOST * cost3 
  4     EF   avail4   ASC_4 * one + B1_FCOST * cost4    
  5     MF   avail5   ASC_5 * one + B1_FCOST * cost5     


[Expressions] 
// Define here arithmetic expressions for name that are not directly 
// available from the data
one = 1


[Model]
// Currently, only $MNL (multinomial logit), $NL (nested logit), $CNL
// (cross-nested logit) and $NGEV (Network GEV model) are valid keywords
//
$MNL
