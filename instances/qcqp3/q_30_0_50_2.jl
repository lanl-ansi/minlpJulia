using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
set_lower_bound(x[4], 0.0)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[15], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[10], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)
set_upper_bound(x[5], 1.0)
set_upper_bound(x[6], 1.0)
set_upper_bound(x[7], 1.0)
set_upper_bound(x[8], 1.0)
set_upper_bound(x[9], 1.0)
set_upper_bound(x[10], 1.0)
set_upper_bound(x[11], 1.0)
set_upper_bound(x[12], 1.0)
set_upper_bound(x[13], 1.0)
set_upper_bound(x[14], 1.0)
set_upper_bound(x[15], 1.0)
set_upper_bound(x[16], 1.0)
set_upper_bound(x[17], 1.0)
set_upper_bound(x[18], 1.0)
set_upper_bound(x[19], 1.0)
set_upper_bound(x[20], 1.0)
set_upper_bound(x[21], 1.0)
set_upper_bound(x[22], 1.0)
set_upper_bound(x[23], 1.0)
set_upper_bound(x[24], 1.0)
set_upper_bound(x[25], 1.0)
set_upper_bound(x[26], 1.0)
set_upper_bound(x[27], 1.0)
set_upper_bound(x[28], 1.0)
set_upper_bound(x[29], 1.0)
set_upper_bound(x[30], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.4882*x[1]*x[9]-1.2014*x[1]*x[8]-1.9403*x[1]*x[12]-1.7867*x[1]*x[14]+0.6386*x[1]*x[15]-0.6521*x[1]*x[18]+1.9586*x[1]*x[23]-1.4671*x[1]*x[26]+1.386*x[1]*x[29]+1.7072*x[2]*x[4]+1.5083*x[2]*x[5]+1.1338*x[2]*x[6]+0.1539*x[2]*x[9]+0.758*x[2]*x[11]-0.0111*x[2]*x[12]-1.9311*x[2]*x[13]-1.8128*x[2]*x[16]+0.1984*x[2]*x[17]+0.512*x[2]*x[21]+1.1149*x[2]*x[22]-1.8419*x[2]*x[25]-0.3441*x[2]*x[28]-0.1698*x[2]*x[29]-1.9263*x[2]*x[30]-1.8968*x[3]*x[3]+1.406*x[3]*x[4]-0.6798*x[3]*x[6]+0.977*x[3]*x[8]+0.4627*x[3]*x[9]-0.6004*x[3]*x[10]-0.139*x[3]*x[12]-0.1228*x[3]*x[14]-0.4508*x[3]*x[16]+1.7263*x[3]*x[17]+0.6512*x[3]*x[18]-1.5264*x[3]*x[19]-1.6048*x[3]*x[20]-1.9034*x[3]*x[26]-1.8326*x[3]*x[29]+0.1304*x[3]*x[30]+1.5839*x[4]*x[5]+1.0687*x[4]*x[6]+1.1989*x[4]*x[7]+1.4257*x[4]*x[8]-0.4986*x[4]*x[9]+1.6899*x[4]*x[10]-0.1017*x[4]*x[16]-1.1321*x[4]*x[17]-0.5784*x[4]*x[18]+0.0153*x[4]*x[19]+1.8432*x[4]*x[20]-0.6635*x[4]*x[22]+0.9592*x[4]*x[23]-1.64*x[4]*x[24]+0.8077*x[4]*x[26]+1.5812*x[4]*x[27]-0.6876*x[5]*x[5]-1.3106*x[5]*x[9]+1.4735*x[5]*x[10]-1.2385*x[5]*x[11]+0.6208*x[5]*x[12]+1.8675*x[5]*x[13]-1.8787*x[5]*x[14]+1.5288*x[5]*x[16]+1.4998*x[5]*x[17]+1.9059*x[5]*x[18]+1.9186*x[5]*x[20]-0.081*x[5]*x[21]+0.898*x[5]*x[22]-0.6565*x[5]*x[25]-0.7003*x[5]*x[26]+1.214*x[5]*x[28]-1.5836*x[5]*x[29]+1.5097*x[6]*x[8]-0.9429*x[6]*x[9]-0.8152*x[6]*x[11]+0.5911*x[6]*x[13]-0.8244*x[6]*x[14]+1.1566*x[6]*x[15]+1.1694*x[6]*x[16]+0.6235*x[6]*x[18]+0.2409*x[6]*x[19]-1.8866*x[6]*x[20]+0.4937*x[6]*x[21]+1.5389*x[6]*x[22]-1.5069*x[6]*x[23]-1.1068*x[6]*x[27]-1.01*x[6]*x[28]+0.4564*x[6]*x[29]+1.2459*x[6]*x[30]-0.2592*x[7]*x[9]+1.8214*x[7]*x[11]-0.6313*x[7]*x[15]-0.4876*x[7]*x[16]-0.6673*x[7]*x[19]+0.784*x[7]*x[20]+1.3658*x[7]*x[21]+0.8375*x[7]*x[22]-1.6702*x[7]*x[23]-0.042*x[7]*x[24]+0.7462*x[7]*x[28]+0.7296*x[7]*x[29]-1.8797*x[8]*x[11]-0.2571*x[8]*x[12]+1.3523*x[8]*x[13]-0.4067*x[8]*x[14]-0.9874*x[8]*x[17]-0.7368*x[8]*x[19]+0.1892*x[8]*x[20]-0.8453*x[8]*x[27]-1.0382*x[9]*x[10]-1.1948*x[9]*x[13]+0.675*x[9]*x[15]+0.7279*x[9]*x[17]+0.9061*x[9]*x[18]+1.5276*x[9]*x[19]-1.2389*x[9]*x[22]+1.5305*x[9]*x[25]+1.3412*x[10]*x[10]-1.7808*x[10]*x[14]-0.5229*x[10]*x[20]-0.375*x[10]*x[21]-0.0996*x[10]*x[22]+0.8684*x[10]*x[25]+0.1926*x[10]*x[26]+0.4663*x[10]*x[27]+0.13*x[10]*x[28]-0.9088*x[10]*x[30]+1.5711*x[11]*x[13]-0.7607*x[11]*x[14]+1.025*x[11]*x[16]+0.3299*x[11]*x[17]-0.0744*x[11]*x[18]+0.1531*x[11]*x[20]+1.1407*x[11]*x[21]-1.3033*x[11]*x[22]-1.302*x[11]*x[29]+1.6054*x[12]*x[16]+1.0283*x[12]*x[17]+0.2433*x[12]*x[18]+1.7578*x[12]*x[21]+0.2501*x[12]*x[22]+1.5112*x[12]*x[23]-1.1474*x[12]*x[24]+1.8038*x[12]*x[26]-1.73*x[12]*x[30]-0.5517*x[13]*x[13]+0.9054*x[13]*x[14]-1.0041*x[13]*x[16]+0.9727*x[13]*x[17]-1.8503*x[13]*x[20]-1.7774*x[13]*x[23]+0.5099*x[13]*x[24]-1.5381*x[13]*x[26]-1.8928*x[13]*x[27]-0.4641*x[13]*x[29]-0.6935*x[14]*x[17]-1.0572*x[14]*x[18]-0.2422*x[14]*x[20]+1.0142*x[14]*x[21]-0.1029*x[14]*x[22]-0.8937*x[14]*x[24]+1.0133*x[14]*x[26]-1.5689*x[14]*x[27]+0.078*x[15]*x[16]+0.2848*x[15]*x[17]-1.7087*x[15]*x[19]+1.9758*x[15]*x[22]+1.5862*x[15]*x[27]+1.1349*x[15]*x[28]-0.3947*x[15]*x[29]+1.3579*x[16]*x[18]+0.7282*x[16]*x[19]-1.004*x[16]*x[21]-0.77*x[16]*x[24]+1.0989*x[16]*x[26]+1.7795*x[16]*x[27]+0.044*x[16]*x[28]+0.1382*x[16]*x[29]-0.4086*x[16]*x[30]-0.9378*x[17]*x[17]-0.1795*x[17]*x[18]+1.9501*x[17]*x[21]+1.8886*x[17]*x[24]+0.7388*x[17]*x[25]+1.3798*x[17]*x[29]+1.3531*x[17]*x[30]+1.7136*x[18]*x[20]-0.7786*x[18]*x[21]-1.3297*x[18]*x[24]-1.9992*x[18]*x[25]-1.2152*x[18]*x[26]+0.1581*x[18]*x[28]+1.4601*x[18]*x[29]-1.3706*x[19]*x[20]-1.6128*x[19]*x[21]+1.6224*x[19]*x[24]+0.7016*x[19]*x[25]-0.6358*x[19]*x[26]-0.7907*x[19]*x[28]-1.7822*x[19]*x[29]+1.7414*x[20]*x[21]+1.6767*x[20]*x[24]+0.5583*x[20]*x[26]+1.4751*x[20]*x[27]-0.4237*x[21]*x[22]-1.6428*x[21]*x[24]-1.2061*x[21]*x[25]-1.3197*x[21]*x[27]-0.6917*x[21]*x[28]+0.9312*x[21]*x[29]-0.4851*x[22]*x[22]-1.2849*x[22]*x[24]+1.4736*x[22]*x[27]-0.0472*x[22]*x[28]-0.8719*x[23]*x[24]-0.7819*x[23]*x[25]+1.5495*x[23]*x[26]+1.9334*x[23]*x[27]+0.3717*x[23]*x[30]+0.3758*x[24]*x[24]+0.221*x[24]*x[25]+0.3534*x[24]*x[26]+0.1197*x[24]*x[29]+0.9597*x[25]*x[25]-0.6479*x[25]*x[26]+0.179*x[26]*x[26]-0.9006*x[26]*x[27]+1.5628*x[26]*x[30]-1.7831*x[27]*x[29]+1.4247*x[28]*x[28]+0.5246*x[29]*x[30]-0.9526*x[1]-0.9404*x[2]-0.4876*x[3]-0.4892*x[4]-0.8809*x[5]+0.5844*x[6]-0.5909*x[7]+0.8432*x[8]+0.4261*x[9]-0.7159*x[10]+0.6584*x[11]+0.0654*x[12]+0.9716*x[13]+0.3374*x[14]-0.6073*x[15]-0.4237*x[16]+0.4155*x[17]+0.8152*x[18]-0.6799*x[19]-0.7925*x[20]-0.3313*x[21]-0.8543*x[22]+0.6806*x[23]-0.7313*x[24]+0.7493*x[25]-0.1795*x[26]-0.6154*x[27]+0.4774*x[28]+0.2237*x[29]+0.819*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 