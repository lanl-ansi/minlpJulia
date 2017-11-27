using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 69, 70, 71]
@variable(m, x[x_Idx])
setlowerbound(x[16], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[65], 0.0)
setupperbound(x[15], 25000.0)
setupperbound(x[16], 25000.0)
setupperbound(x[17], 25000.0)
setupperbound(x[18], 25000.0)
setupperbound(x[19], 25000.0)
setupperbound(x[20], 25000.0)
setupperbound(x[21], 25000.0)
setupperbound(x[22], 25000.0)
setupperbound(x[23], 25000.0)
setupperbound(x[24], 25000.0)
setupperbound(x[25], 25000.0)
setupperbound(x[26], 25000.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4] <= 4000.0)
@constraint(m, e2, x[1]+x[2]+x[3]+x[4] <= 4000.0)
@constraint(m, e3, x[1]+0.5*x[2]+x[3]+x[4]+0.5*x[5] <= 4000.0)
@constraint(m, e4, x[1]+x[3]+x[4]+x[5] <= 4000.0)
@constraint(m, e5, x[1]+0.25*x[4]+x[5]+0.25*x[6] <= 4000.0)
@constraint(m, e6, x[5]+x[6] <= 4000.0)
@constraint(m, e7, x[5]+x[6]+0.75*x[7] <= 4000.0)
@constraint(m, e8, x[5]+x[6]+x[7] <= 4000.0)
@constraint(m, e9, x[5]+x[6]+x[7] <= 4000.0)
@constraint(m, e10, x[5]+0.5*x[6]+x[7] <= 4000.0)
@constraint(m, e11, 0.5*x[1]+0.25*x[2]+0.25*x[3]+0.5*x[4]+0.75*x[5]+0.75*x[7] <= 4000.0)
@constraint(m, e12, x[1]+x[2]+x[3]+x[4] <= 4000.0)
@constraint(m, e13, 1.72*x[1]+4.5*x[2]+0.75*x[3]+5.16*x[4]-x[15]-x[27]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e14, 0.5*x[1]+x[2]+0.75*x[3]+5*x[4]-x[16]-x[28]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e15, x[1]+8*x[2]+0.75*x[3]+5*x[4]+5*x[5]-x[17]-x[29]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e16, x[1]+16*x[3]+19.58*x[4]+5*x[5]-x[18]-x[30]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e17, 17.16*x[1]+2.42*x[4]+9*x[5]+4.3*x[6]-x[19]-x[31]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e18, 2.34*x[1]+2*x[5]+5.04*x[6]-x[20]-x[32]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e19, 1.5*x[5]+7.16*x[6]+17*x[7]-x[21]-x[33]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e20, 2*x[5]+7.97*x[6]+15*x[7]-x[22]-x[34]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e21, x[5]+4.41*x[6]+12*x[7]-x[23]-x[35]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e22, 26*x[5]+1.12*x[6]+7*x[7]-x[24]-x[36]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e23, 2.43*x[1]+2.5*x[2]+7.5*x[3]+11.16*x[4]+12*x[5]+6*x[7]-x[25]-x[37]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e24, 1.35*x[1]+7.5*x[2]+0.75*x[3]+4.68*x[4]-x[26]-x[38]+2*x[39]+2*x[40] <= 0.0)
@constraint(m, e25, x[5]+x[6]+x[7]-2*x[39]-2*x[40]-x[48] <= 0.0)
@constraint(m, e26, x[1]+x[2]+x[3]+x[4]-2*x[39]-2*x[40]-x[49] <= 0.0)
@constraint(m, e27, x[13]-3*x[15]-3*x[16]-3*x[17]-3*x[18]-3*x[19]-3*x[20]-3*x[21]-3*x[22]-3*x[23]-3*x[24]-3*x[25]-3*x[26] == 0.0)
@NLconstraint(m, e28, -(225*x[50]-0.0462962962962963* (x[50])^2-0.555555555555555* (x[51])^2+700*x[51]-0.178571428571429* (x[52])^2+250*x[52]-0.166666666666667* (x[53])^2+700*x[53]-0.0368421052631579* (x[54])^2+210*x[54]-0.2* (x[55])^2+220*x[55])+x[9]-40*x[62]-300*x[63]-60*x[64] == 0.0)
@constraint(m, e29, x[12]-4*x[27]-4*x[28]-4*x[29]-4*x[30]-4*x[31]-4*x[32]-4*x[33]-4*x[34]-4*x[35]-4*x[36]-4*x[37]-4*x[38] == 0.0)
@constraint(m, e30, -x[10]-x[11]-x[12]-x[13]+x[14] == 0.0)
@constraint(m, e31, -x[41]+x[50]-x[65] == 0.0)
@constraint(m, e32, -x[43]+x[51]-x[66] == 0.0)
@constraint(m, e33, -x[44]+x[52]+x[62] == 0.0)
@constraint(m, e34, -x[45]+x[53]+x[63] == 0.0)
@constraint(m, e35, -x[46]+x[54]-x[67] == 0.0)
@constraint(m, e36, -x[47]+x[55]+x[64] == 0.0)
@constraint(m, e37, -0.0916666666666667*x[1]-0.0783333333333333*x[2]-0.0883333333333333*x[3]-0.176666666666667*x[4]-0.211666666666667*x[5]-0.1*x[6]-0.19*x[7]-0.00666666666666667*x[39]-0.00666666666666667*x[40]+x[70] == 0.0)
@constraint(m, e38, -1.5*x[1]+x[41] == 0.0)
@constraint(m, e39, -6*x[2]+x[42] == 0.0)
@constraint(m, e40, -x[3]+x[43] == 0.0)
@constraint(m, e41, -3*x[4]+x[44] == 0.0)
@constraint(m, e42, -1.5*x[5]+x[45] == 0.0)
@constraint(m, e43, -2*x[6]+x[46] == 0.0)
@constraint(m, e44, -3*x[7]+x[47] == 0.0)
@constraint(m, e45, -100*x[41]-200*x[43]-125*x[44]-350*x[45]-70*x[46]-120*x[47]+x[69] == 0.0)
@constraint(m, e46, -10*x[1]-5*x[3]-50*x[4]-80*x[5]-5*x[6]-50*x[7]+x[10] == 0.0)
@constraint(m, e47, x[11]-40*x[48]-40*x[49] == 0.0)
@constraint(m, e48, 6*x[2]-1.3*x[39]-2*x[40] >= 0.0)
@constraint(m, e49, 1.75*x[1]-1.6*x[39]-0.8*x[40] >= 0.0)
@constraint(m, e50, -x[8]-x[9]-x[13]+x[14] == 0.0)
@constraint(m, e51, -40*x[62]-300*x[63]-60*x[64]+140*x[65]+270*x[66]+85*x[67]+x[71] == 0.0)
@constraint(m, e52, 0.0462962962962963*x[50]+x[56] == 225.0)
@constraint(m, e53, 0.555555555555555*x[51]+x[57] == 700.0)
@constraint(m, e54, 0.178571428571429*x[52]+x[58] == 250.0)
@constraint(m, e55, 0.166666666666667*x[53]+x[59] == 700.0)
@constraint(m, e56, 0.0368421052631579*x[54]+x[60] == 210.0)
@constraint(m, e57, 0.2*x[55]+x[61] == 220.0)
@NLconstraint(m, e58, -(225*x[50]-0.0231481481481481* (x[50])^2-0.277777777777778* (x[51])^2+700*x[51]-0.0892857142857143* (x[52])^2+250*x[52]-0.0833333333333333* (x[53])^2+700*x[53]-0.0184210526315789* (x[54])^2+210*x[54]-0.1* (x[55])^2+220*x[55])+x[14]-40*x[62]-300*x[63]-60*x[64]+140*x[65]+270*x[66]+85*x[67]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 