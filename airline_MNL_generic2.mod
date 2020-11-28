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
B_COST  0.0     -100.0  100.0   0
B_TRIP_TIME  0.0     -100.0  100.0   0
B_LEGROOM1  0.0     -100.0  100.0   0
B_LEGROOM2  0.0     -100.0  100.0   0
B_LEGROOM3  0.0     -100.0  100.0   0


[Utilities]
// Id Name  Avail  linear-in-parameter expression (beta1*x1 + beta2*x2 + ... )
1   NonStop one     ASC_1 * one + B_COST * Fare_1 + B_TRIP_TIME * TripTimeHours_1 + B_LEGROOM1 * Legroom_1 + B_LEGROOM2 * Legroom_2 + B_LEGROOM3 * Legroom_3
2   OneStop1  one     ASC_2 * one + B_COST * Fare_2 + B_TRIP_TIME * TripTimeHours_2 + B_LEGROOM1 * Legroom_1 + B_LEGROOM2 * Legroom_2 + B_LEGROOM3 * Legroom_3
3   OneStop2  one     ASC_3 * one + B_COST * Fare_3 + B_TRIP_TIME * TripTimeHours_3 + B_LEGROOM1 * Legroom_1 + B_LEGROOM2 * Legroom_2 + B_LEGROOM3 * Legroom_3


[Expressions]
one = 1


[Model]
$MNL