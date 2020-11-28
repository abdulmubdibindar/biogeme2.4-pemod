// Nyobain tubes anak pemodelan hehe
// Multinomial Logit Generic
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
B_COST1 0.0     -100.0  100.0   0
B_COST2 0.0     -100.0  100.0   0
B_COST3 0.0     -100.0  100.0   0
B_TRIP_TIME1  0.0     -100.0  100.0   0
B_TRIP_TIME2  0.0     -100.0  100.0   0
B_TRIP_TIME3  0.0     -100.0  100.0   0

[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
1   NonStop one     ASC_1 * one + B_COST1 * Fare_1 + B_TRIP_TIME1 * TripTimeHours_1
2   OneStop1  one     ASC_2 * one + B_COST2 * Fare_2 + B_TRIP_TIME2 * TripTimeHours_2
3   OneStop2  one     ASC_3 * one + B_COST3 * Fare_3 + B_TRIP_TIME3 * TripTimeHours_3


[Expressions]
one = 1


[Model]
$MNL