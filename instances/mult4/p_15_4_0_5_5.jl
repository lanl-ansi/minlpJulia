using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.4891*x[13]^4-0.2254*x[13]+(-0.9659*x[1]*x[3])-0.9413*x[2]*x[5]-0.9696*x[2]*x[14]-0.9793*x[6]*x[11]-0.9573*x[7]*x[13]-0.387*x[1]-0.2135*x[2]+0.0129*x[3]-0.6481*x[5]-0.7218*x[6]-0.7735*x[7]-0.1725*x[11]+0.3023*x[14]+(-0.6408*x[1]*x[2]*x[10])-0.594*x[1]*x[3]*x[8]-0.6852*x[1]*x[5]*x[14]-0.8373*x[1]*x[9]*x[15]-0.7983*x[2]*x[3]*x[10]-0.8364*x[2]*x[4]*x[7]-0.9363*x[2]*x[7]*x[12]-0.9364*x[2]*x[10]*x[15]-0.6654*x[2]*x[13]*x[14]-0.9013*x[2]*x[13]*x[15]-0.8567*x[3]*x[4]*x[8]-0.8772*x[3]*x[5]*x[8]-0.7759*x[3]*x[5]*x[10]-0.8868*x[3]*x[6]*x[10]-0.8452*x[3]*x[8]*x[10]-0.8556*x[3]*x[8]*x[12]-0.8866*x[3]*x[8]*x[14]-0.9046*x[4]*x[6]*x[12]-0.7104*x[4]*x[7]*x[9]-0.8971*x[5]*x[8]*x[15]-0.6181*x[5]*x[9]*x[10]-0.7802*x[5]*x[9]*x[11]-0.6551*x[5]*x[9]*x[15]-0.7207*x[6]*x[7]*x[10]-0.7796*x[6]*x[7]*x[13]-0.6641*x[6]*x[9]*x[13]-0.7436*x[6]*x[10]*x[11]-0.6838*x[6]*x[12]*x[13]-0.7351*x[7]*x[9]*x[13]-0.9093*x[8]*x[11]*x[14]-0.851*x[8]*x[12]*x[14]-0.6666*x[10]*x[13]*x[15]-0.7882*x[11]*x[12]*x[14]-0.4558*x[4]+0.5381*x[8]+0.9237*x[9]+0.088*x[10]-0.7814*x[12]-0.9957*x[15]+0.0512*x[1]*x[2]*x[6]*x[12]-0.5328*x[1]*x[2]*x[4]*x[11]+0.6741*x[1]*x[2]*x[9]*x[11]+0.3039*x[1]*x[3]*x[7]*x[11]-0.4392*x[1]*x[3]*x[11]*x[15]+0.5527*x[1]*x[3]*x[12]*x[13]-0.5705*x[1]*x[4]*x[5]*x[7]+0.9226*x[1]*x[4]*x[6]*x[7]+0.8437*x[1]*x[5]*x[6]*x[11]-0.0194*x[1]*x[6]*x[13]*x[14]-0.0005*x[1]*x[8]*x[9]*x[12]-0.5182*x[2]*x[3]*x[4]*x[7]+0.2871*x[2]*x[3]*x[4]*x[10]+0.8533*x[2]*x[3]*x[6]*x[10]+0.8451*x[2]*x[3]*x[10]*x[11]-0.0799*x[2]*x[3]*x[11]*x[12]-0.1539*x[2]*x[3]*x[13]*x[14]+0.1786*x[2]*x[4]*x[5]*x[14]+0.6878*x[2]*x[4]*x[6]*x[9]-0.2551*x[2]*x[4]*x[7]*x[9]-0.0824*x[2]*x[4]*x[7]*x[10]+0.5997*x[2]*x[4]*x[8]*x[12]+0.9131*x[2]*x[4]*x[11]*x[13]+0.0747*x[2]*x[4]*x[12]*x[15]+0.4965*x[2]*x[4]*x[13]*x[14]-0.5187*x[2]*x[5]*x[6]*x[9]+0.5227*x[2]*x[5]*x[7]*x[9]+0.0392*x[2]*x[5]*x[8]*x[14]+0.7511*x[2]*x[5]*x[10]*x[13]+0.9595*x[2]*x[5]*x[12]*x[14]+0.8762*x[2]*x[6]*x[7]*x[8]+0.6108*x[2]*x[6]*x[7]*x[14]+0.7388*x[2]*x[6]*x[8]*x[9]+0.1137*x[2]*x[7]*x[8]*x[11]+0.7283*x[2]*x[8]*x[11]*x[13]+0.3785*x[2]*x[9]*x[10]*x[13]-0.3545*x[2]*x[9]*x[14]*x[15]-0.0666*x[2]*x[11]*x[12]*x[13]+0.4155*x[3]*x[4]*x[6]*x[8]-0.3787*x[3]*x[4]*x[6]*x[14]+0.6806*x[3]*x[4]*x[7]*x[13]+0.9736*x[3]*x[4]*x[9]*x[12]+0.5186*x[3]*x[4]*x[11]*x[12]+0.3404*x[3]*x[4]*x[11]*x[14]-0.3342*x[3]*x[5]*x[6]*x[7]+0.5405*x[3]*x[5]*x[6]*x[13]+0.5599*x[3]*x[5]*x[9]*x[13]+0.6056*x[3]*x[6]*x[9]*x[13]+0.9372*x[3]*x[6]*x[12]*x[14]-0.0381*x[3]*x[7]*x[8]*x[11]+0.2915*x[3]*x[7]*x[13]*x[14]+0.6628*x[3]*x[8]*x[9]*x[10]+0.8432*x[3]*x[8]*x[11]*x[13]-0.4916*x[3]*x[9]*x[10]*x[11]+0.6049*x[3]*x[12]*x[14]*x[15]+0.7725*x[4]*x[5]*x[7]*x[10]+0.8048*x[4]*x[5]*x[8]*x[11]+0.5795*x[4]*x[5]*x[8]*x[14]-0.1247*x[4]*x[5]*x[9]*x[13]+0.9716*x[4]*x[5]*x[10]*x[11]+0.9976*x[4]*x[6]*x[7]*x[8]+0.3039*x[4]*x[6]*x[8]*x[15]-0.5397*x[4]*x[6]*x[9]*x[14]+0.2682*x[4]*x[6]*x[11]*x[12]+0.4025*x[4]*x[6]*x[12]*x[15]+0.5581*x[4]*x[6]*x[14]*x[15]+0.3269*x[4]*x[7]*x[8]*x[12]+0.8271*x[4]*x[7]*x[13]*x[14]+0.0826*x[4]*x[8]*x[11]*x[13]-0.4433*x[4]*x[8]*x[12]*x[14]+0.1779*x[4]*x[9]*x[10]*x[15]-0.4859*x[4]*x[9]*x[12]*x[13]+0.4111*x[4]*x[10]*x[11]*x[13]-0.1092*x[4]*x[11]*x[12]*x[14]+0.102*x[4]*x[12]*x[13]*x[15]+0.4774*x[5]*x[6]*x[10]*x[14]+0.3928*x[5]*x[7]*x[8]*x[11]+0.6555*x[5]*x[7]*x[8]*x[15]+0.579*x[5]*x[9]*x[13]*x[14]+0.4136*x[5]*x[10]*x[14]*x[15]+0.8577*x[5]*x[11]*x[13]*x[15]-0.3498*x[6]*x[7]*x[10]*x[14]-0.2558*x[6]*x[8]*x[9]*x[12]+0.8204*x[6]*x[8]*x[9]*x[13]+0.0107*x[6]*x[8]*x[10]*x[14]-0.1975*x[6]*x[8]*x[10]*x[15]-0.1372*x[6]*x[8]*x[12]*x[14]+0.7806*x[6]*x[8]*x[12]*x[15]-0.0939*x[6]*x[9]*x[14]*x[15]-0.0813*x[6]*x[11]*x[14]*x[15]+0.0743*x[6]*x[12]*x[13]*x[15]-0.066*x[8]*x[9]*x[10]*x[11]+0.9802*x[8]*x[9]*x[10]*x[13]-0.1219*x[8]*x[10]*x[13]*x[14]+0.7824*x[8]*x[11]*x[13]*x[15]+0.1227*x[8]*x[11]*x[14]*x[15]-0.5763*x[9]*x[10]*x[13]*x[14]+0.1278*x[9]*x[12]*x[13]*x[15]-0.4248*x[10]*x[12]*x[14]*x[15]-0.4031*x[13]^3*x[2]+0.0778*x[5]^2*x[9]^2-0.5155*x[3]^2*x[10]^2+0.8667*x[5]^2*x[11]^2+0.4122*x[10]^2*x[11]^2+0.0843*x[10]^2*x[13]^2+(-0.7958*x[6]^2*x[5])-0.5938*x[12]^2*x[9]-0.7202*x[13]^2*x[9]-0.884*x[14]^2*x[6]+0.7937*x[1]^2*x[2]*x[6]+0.8152*x[2]^2*x[3]*x[6]+0.2509*x[2]^2*x[3]*x[12]+0.6835*x[2]^2*x[12]*x[14]+0.8727*x[3]^2*x[1]*x[6]+0.8969*x[3]^2*x[7]*x[11]+0.6946*x[3]^2*x[11]*x[13]+0.5236*x[4]^2*x[2]*x[5]-0.5077*x[4]^2*x[2]*x[13]+0.9739*x[4]^2*x[9]*x[14]+0.4575*x[4]^2*x[10]*x[13]-0.506*x[4]^2*x[11]*x[15]+0.179*x[5]^2*x[9]*x[13]+0.372*x[6]^2*x[3]*x[13]-0.0243*x[6]^2*x[9]*x[11]+0.0772*x[7]^2*x[3]*x[5]+0.8792*x[7]^2*x[10]*x[13]-0.4714*x[8]^2*x[3]*x[15]+0.4195*x[8]^2*x[5]*x[10]+0.7515*x[8]^2*x[6]*x[7]+0.2404*x[9]^2*x[1]*x[10]-0.0381*x[9]^2*x[3]*x[4]-0.5735*x[9]^2*x[3]*x[8]+0.4125*x[9]^2*x[5]*x[8]-0.4278*x[9]^2*x[7]*x[14]-0.1751*x[10]^2*x[5]*x[13]+0.7962*x[10]^2*x[7]*x[12]-0.199*x[10]^2*x[11]*x[12]-0.5851*x[11]^2*x[1]*x[14]-0.4766*x[11]^2*x[6]*x[14]+0.7112*x[12]^2*x[2]*x[6]-0.1821*x[12]^2*x[2]*x[10]-0.0278*x[12]^2*x[8]*x[15]+0.2491*x[13]^2*x[2]*x[3]+0.6039*x[13]^2*x[3]*x[7]-0.0142*x[13]^2*x[3]*x[12]-0.3871*x[13]^2*x[3]*x[14]-0.1423*x[13]^2*x[5]*x[9]+0.2352*x[13]^2*x[8]*x[12]-0.1155*x[13]^2*x[11]*x[14]+0.1038*x[14]^2*x[3]*x[6]-0.0257*x[14]^2*x[4]*x[6]+0.5307*x[14]^2*x[6]*x[12]+0.9344*x[14]^2*x[10]*x[11]+0.8656*x[15]^2*x[9]*x[10])+x[16] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[16])
m = m 		 # model get returned when including this script. 