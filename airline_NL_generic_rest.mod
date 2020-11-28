// Nyobain tubes anak pemodelan hehe
// 1nested Logit Unrestricted Generic
// Muhammad Abdul Mubdi Bindar, 2020
// Dataset: airline.dat


[DataFile]
$COLUMNS = 56

[Choice]
BestAlt


[Beta]
// Name Value  LowerBound UpperBound  status (0=variable, 1=fixed)
ASC_1   0.0     -100.0  100.0   0
ASC_2   0.0     -100.0  100.0   0
ASC_3   0.0     -100.0  100.0   1
B_COST 0.0     -100.0  100.0   0
B_TRIP_TIME  0.0     -100.0  100.0   0

[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
1   NonStop one     ASC_1 * one + B_COST * Fare_1 + B_TRIP_TIME * TripTimeHours_1
2   OneStop1  one     ASC_2 * one + B_COST * Fare_2 + B_TRIP_TIME * TripTimeHours_2
3   OneStop2  one     ASC_3 * one + B_COST * Fare_3 + B_TRIP_TIME * TripTimeHours_3


[Expressions]
one = 1


[Model]
$NL

[NLNests]
// Name paramvalue  LowerBound UpperBound  status list of alt
N_NONS    1.0          1.0        10.0       0      1
N_STOP    1.0          1.0        10.0       0      2 3


[ConstraintNestCoef]
// List of pairs of nests for which the associated
// coefficients  must be constrained to be equal
// Syntax: COEF_NEST_A = COEF_NEST_B
N_NONS = N_STOP