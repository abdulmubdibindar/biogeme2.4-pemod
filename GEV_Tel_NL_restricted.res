// This file has automatically been generated.
// 11/27/20 18:32:36
// Michel Bierlaire, EPFL
// biogeme 2.4 [Sun Oct 25 23:01:47 WEST 2015]
// Michel Bierlaire, EPFL

[Choice]
choice 

[Weight]
$NONE

[PanelData]
// First, the attribute in the file containing the ID of the individual
// Then the list of random parameters which are constant for all 
// observations of the same individual
// The syntax for a random paramter with mean BETA and std err SIGMA is
// BETA_SIGMA
$NONE


[Beta]
// Name Value  LowerBound UpperBound  status (0=variable, 1=fixed)
ASC_BM	-0.367671	-10	10	0
ASC_EF	0.833042	-10	10	0
ASC_LF	0.882491	-10	10	0
ASC_MF	1.385	-10	10	0
ASC_SM	0	-10	10	1
B_COST	-1.49927	-10	10	0

[LaTeX]
$NONE

[OrdinalLogit]
$NONE

[Mu]
// In general, the value of mu must be fixed to 1. For testing purposes, you
// may change its value or let it be estimated.
// Value LowerBound UpperBound Status
1	1e-005	1	1

[IIATest]
// Relevant for biosim only
// Description of the choice subsets to compute the new variable for McFadden's IIA test
$NONE

[SampleEnum]
// Relevant for biosim only
// Number of simulated choices to include in the sample enumeration file
0

[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
1	BM	avail1	ASC_BM * one + B_COST * logcostBM
4	EF	avail4	ASC_EF * one + B_COST * logcostEF
3	LF	avail3	ASC_LF * one + B_COST * logcostLF
5	MF	avail5	ASC_MF * one + B_COST * logcostMF
2	SM	avail2	ASC_SM * one + B_COST * logcostSM

[GeneralizedUtilities]
$NONE

[SNP]
$NONE

[AggregateLast]
$NONE

[AggregateWeight]
$NONE

[SelectionBias]
$NONE

[ParameterCovariances]
// Par_i Par_j Value  LowerBound UpperBound  status (0=variable, 1=fixed)
$NONE
[Expressions] 
// Define here arithmetic expressions for name that are not directly 
// available from the data

one  = 1
logcostBM  = log(cost1 )
logcostSM  = log(cost2 )
logcostLF  = log(cost3 )
logcostEF  = log(cost4 )
logcostMF  = log(cost5 )

[Draws]
150

[Group]
1

[Exclude]
$NONE

[Model]
// Currently, the following models are available
// Uncomment exactly one of them
//$BP  // Binary Probit Model
//$OL // Ordinal logit

//$MNL  // Logit Model
$NL  // Nested Logit Model
//$CNL  // Cross-Nested Logit Model
//$NGEV // Network GEV Model


[Scale]
// The sample can be divided in several groups of individuals. The
//utility of an individual in a group will be multiplied by the scale factor
//associated with the group.

// Group_number  scale LowerBound UpperBound status

1	1	1	1	1
[NLNests]
// Name paramvalue  LowerBound UpperBound  status list of alt
N_FLAT	2.16497	1	10	 0 3 4 5
N_MEAS	2.16497	1	10	 0 1 2
[CNLNests]
// Name paramvalue LowerBound UpperBound  status 
$NONE

[CNLAlpha]
// Alt Nest value LowerBound UpperBound  status
$NONE

[Ratios] 
// List of ratios of estimated coefficients that must be produced in
// the output. The most typical is the value-of-time.
// Numerator   Denominator  Name
$NONE


[LinearConstraints]
$NONE

[NonLinearEqualityConstraints]
$NONE

[NonLinearInequalityConstraints]
// At this point, BIOGEME is not able to handle nonlinear inequality
// constraints yet. It should be available in a future version.
$NONE

[NetworkGEVNodes] 
// All nodes of the Network GEV model, except the root,
// must be listed here, with their associated parameter.
// If the nodes corresponding to alternatives are not listed,
// the associated parameter is constrained to 1.0 by default
// Name  mu_param_value	LowerBound	UpperBound	status
$NONE

[NetworkGEVLinks]
// There is a line for each link of the network. 
// The root node is denoted by __ROOT
// All other nodes must be either an alternative or a node listed in
// the section [NetworkGEVNodes]
// Note that an alternative cannot be the a-node of any link,
// and the root node cannot be the b-node of any link.
// a-node  b-node alpha_param_value LowerBound UpperBound  status
$NONE

[ZhengFosgerau]
// This section is used only by biosim for simulation, not by biogeme for estimation
// Syntax: expression  bandwith lb  ub name
// Expression must be a probability ($P) or an expression from the data ($E)
// Examples:
// $P { Alt1 } 1 0 1 "P1"
// $E { x31 } 1 -1000 1000 "x31"  
//
$NONE
