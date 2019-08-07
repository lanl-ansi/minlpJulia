using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56]
@variable(m, i[i_Idx] <= 100, Int)
setlowerbound(x[76], 2.5298)
setupperbound(x[76], 6.3246)
setlowerbound(x[77], 2.5298)
setupperbound(x[77], 6.3246)
setlowerbound(x[78], 2.5298)
setupperbound(x[78], 6.3246)
setlowerbound(x[79], 2.5298)
setupperbound(x[79], 6.3246)
setlowerbound(x[80], 2.5298)
setupperbound(x[80], 6.3246)
setlowerbound(x[82], 2.5298)
setupperbound(x[82], 6.3246)
setlowerbound(x[84], 3.7947)
setupperbound(x[84], 9.4868)
setlowerbound(x[86], 3.7947)
setupperbound(x[86], 9.4868)
setlowerbound(x[88], 3.7947)
setupperbound(x[88], 9.4868)
setlowerbound(x[90], 3.7947)
setupperbound(x[90], 9.4868)
setlowerbound(x[92], 1.8974)
setupperbound(x[92], 4.7434)
setlowerbound(x[94], 1.8974)
setupperbound(x[94], 4.7434)
setlowerbound(x[96], 1.8974)
setupperbound(x[96], 4.7434)
setlowerbound(x[98], 1.8974)
setupperbound(x[98], 4.7434)
setlowerbound(x[100], 1.8974)
setupperbound(x[100], 4.7434)
setlowerbound(x[102], 1.8974)
setupperbound(x[102], 4.7434)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[58]-x[59]-x[60]-x[61]-x[62]-x[63]-x[64]-x[65]-x[66]-x[67]-x[68]-x[69]-x[70]-x[71] == 0.0)
@constraint(m, e2, x[72]-x[73] >= 0.0)
@constraint(m, e3, x[74]-x[75] >= 0.0)
@constraint(m, e4, i[1]-i[2] == 0.0)
@constraint(m, e5, -11.31*i[1]-x[58]+0.5*x[76]+0.5*x[77] <= 0.0)
@constraint(m, e6, 13*i[1]-x[59]+0.5*x[78]+0.5*x[79] <= 13.0)
@constraint(m, e7, -11.31*i[3]+0.5*x[76]+0.5*x[80]-x[81] <= 0.0)
@constraint(m, e8, 13*i[3]+0.5*x[78]+0.5*x[82]-x[83] <= 13.0)
@constraint(m, e9, -11.31*i[5]+0.5*x[76]+0.5*x[84]-x[85] <= 0.0)
@constraint(m, e10, 13*i[5]+0.5*x[78]+0.5*x[86]-x[87] <= 13.0)
@constraint(m, e11, -11.31*i[7]+0.5*x[76]+0.5*x[88]-x[89] <= 0.0)
@constraint(m, e12, 13*i[7]+0.5*x[78]+0.5*x[90]-x[91] <= 13.0)
@constraint(m, e13, -11.31*i[9]+0.5*x[76]+0.5*x[92]-x[93] <= 0.0)
@constraint(m, e14, 13*i[9]+0.5*x[78]+0.5*x[94]-x[95] <= 13.0)
@constraint(m, e15, -11.31*i[11]+0.5*x[76]+0.5*x[96]-x[97] <= 0.0)
@constraint(m, e16, 13*i[11]+0.5*x[78]+0.5*x[98]-x[99] <= 13.0)
@constraint(m, e17, -11.31*i[13]+0.5*x[76]+0.5*x[100]-x[101] <= 0.0)
@constraint(m, e18, 13*i[13]+0.5*x[78]+0.5*x[102]-x[103] <= 13.0)
@constraint(m, e19, -11.31*i[15]-x[60]+0.5*x[77]+0.5*x[80] <= 0.0)
@constraint(m, e20, 13*i[15]-x[61]+0.5*x[79]+0.5*x[82] <= 13.0)
@constraint(m, e21, -11.31*i[17]+0.5*x[77]+0.5*x[84]-x[104] <= 0.0)
@constraint(m, e22, 13*i[17]+0.5*x[79]+0.5*x[86]-x[105] <= 13.0)
@constraint(m, e23, -11.31*i[19]+0.5*x[77]+0.5*x[88]-x[106] <= 0.0)
@constraint(m, e24, 13*i[19]+0.5*x[79]+0.5*x[90]-x[107] <= 13.0)
@constraint(m, e25, -11.31*i[21]+0.5*x[77]+0.5*x[92]-x[108] <= 0.0)
@constraint(m, e26, 13*i[21]+0.5*x[79]+0.5*x[94]-x[109] <= 13.0)
@constraint(m, e27, -11.31*i[23]+0.5*x[77]+0.5*x[96]-x[110] <= 0.0)
@constraint(m, e28, 13*i[23]+0.5*x[79]+0.5*x[98]-x[111] <= 13.0)
@constraint(m, e29, -11.31*i[25]+0.5*x[77]+0.5*x[100]-x[112] <= 0.0)
@constraint(m, e30, 13*i[25]+0.5*x[79]+0.5*x[102]-x[113] <= 13.0)
@constraint(m, e31, -11.31*i[27]-x[62]+0.5*x[80]+0.5*x[84] <= 0.0)
@constraint(m, e32, 13*i[27]-x[63]+0.5*x[82]+0.5*x[86] <= 13.0)
@constraint(m, e33, -11.31*i[29]+0.5*x[80]+0.5*x[88]-x[114] <= 0.0)
@constraint(m, e34, 13*i[29]+0.5*x[82]+0.5*x[90]-x[115] <= 13.0)
@constraint(m, e35, -11.31*i[31]+0.5*x[80]+0.5*x[92]-x[116] <= 0.0)
@constraint(m, e36, 13*i[31]+0.5*x[82]+0.5*x[94]-x[117] <= 13.0)
@constraint(m, e37, -11.31*i[33]+0.5*x[80]+0.5*x[96]-x[118] <= 0.0)
@constraint(m, e38, 13*i[33]+0.5*x[82]+0.5*x[98]-x[119] <= 13.0)
@constraint(m, e39, -11.31*i[35]+0.5*x[80]+0.5*x[100]-x[120] <= 0.0)
@constraint(m, e40, 13*i[35]+0.5*x[82]+0.5*x[102]-x[121] <= 13.0)
@constraint(m, e41, -11.31*i[37]-x[64]+0.5*x[84]+0.5*x[88] <= 0.0)
@constraint(m, e42, 13*i[37]-x[65]+0.5*x[86]+0.5*x[90] <= 13.0)
@constraint(m, e43, -11.31*i[39]+0.5*x[84]+0.5*x[92]-x[122] <= 0.0)
@constraint(m, e44, 13*i[39]+0.5*x[86]+0.5*x[94]-x[123] <= 13.0)
@constraint(m, e45, -11.31*i[41]+0.5*x[84]+0.5*x[96]-x[124] <= 0.0)
@constraint(m, e46, 13*i[41]+0.5*x[86]+0.5*x[98]-x[125] <= 13.0)
@constraint(m, e47, -11.31*i[43]+0.5*x[84]+0.5*x[100]-x[126] <= 0.0)
@constraint(m, e48, 13*i[43]+0.5*x[86]+0.5*x[102]-x[127] <= 13.0)
@constraint(m, e49, -11.31*i[45]-x[66]+0.5*x[88]+0.5*x[92] <= 0.0)
@constraint(m, e50, 13*i[45]-x[67]+0.5*x[90]+0.5*x[94] <= 13.0)
@constraint(m, e51, -11.31*i[47]+0.5*x[88]+0.5*x[96]-x[128] <= 0.0)
@constraint(m, e52, 13*i[47]+0.5*x[90]+0.5*x[98]-x[129] <= 13.0)
@constraint(m, e53, -11.31*i[49]+0.5*x[88]+0.5*x[100]-x[130] <= 0.0)
@constraint(m, e54, 13*i[49]+0.5*x[90]+0.5*x[102]-x[131] <= 13.0)
@constraint(m, e55, -11.31*i[51]-x[68]+0.5*x[92]+0.5*x[96] <= 0.0)
@constraint(m, e56, 13*i[51]-x[69]+0.5*x[94]+0.5*x[98] <= 13.0)
@constraint(m, e57, -11.31*i[53]+0.5*x[92]+0.5*x[100]-x[132] <= 0.0)
@constraint(m, e58, 13*i[53]+0.5*x[94]+0.5*x[102]-x[133] <= 13.0)
@constraint(m, e59, -11.31*i[55]-x[70]+0.5*x[96]+0.5*x[100] <= 0.0)
@constraint(m, e60, 13*i[55]-x[71]+0.5*x[98]+0.5*x[102] <= 13.0)
@constraint(m, e61, -0.395288*x[76]-0.158112*x[78] <= -2.0)
@constraint(m, e62, -0.158113*x[76]-0.395288*x[78] <= -2.0)
@constraint(m, e63, -0.395288*x[77]-0.158112*x[79] <= -2.0)
@constraint(m, e64, -0.158113*x[77]-0.395288*x[79] <= -2.0)
@constraint(m, e65, -0.395288*x[80]-0.158112*x[82] <= -2.0)
@constraint(m, e66, -0.158113*x[80]-0.395288*x[82] <= -2.0)
@constraint(m, e67, -0.263525*x[84]-0.105408*x[86] <= -2.0)
@constraint(m, e68, -0.10541*x[84]-0.263522*x[86] <= -2.0)
@constraint(m, e69, -0.263525*x[88]-0.105408*x[90] <= -2.0)
@constraint(m, e70, -0.10541*x[88]-0.263522*x[90] <= -2.0)
@constraint(m, e71, -0.527037*x[92]-0.210822*x[94] <= -2.0)
@constraint(m, e72, -0.210819*x[92]-0.527044*x[94] <= -2.0)
@constraint(m, e73, -0.527037*x[96]-0.210822*x[98] <= -2.0)
@constraint(m, e74, -0.210819*x[96]-0.527044*x[98] <= -2.0)
@constraint(m, e75, -0.527037*x[100]-0.210822*x[102] <= -2.0)
@constraint(m, e76, -0.210819*x[100]-0.527044*x[102] <= -2.0)
@constraint(m, e77, x[72]+0.5*x[76] <= 11.31)
@constraint(m, e78, -x[72]+0.5*x[76] <= 0.0)
@constraint(m, e79, x[75]+0.5*x[78] <= 13.0)
@constraint(m, e80, -x[75]+0.5*x[78] <= 0.0)
@constraint(m, e81, x[73]+0.5*x[77] <= 11.31)
@constraint(m, e82, -x[73]+0.5*x[77] <= 0.0)
@constraint(m, e83, x[74]+0.5*x[79] <= 13.0)
@constraint(m, e84, -x[74]+0.5*x[79] <= 0.0)
@constraint(m, e85, 0.5*x[80]+x[134] <= 11.31)
@constraint(m, e86, 0.5*x[80]-x[134] <= 0.0)
@constraint(m, e87, 0.5*x[82]+x[135] <= 13.0)
@constraint(m, e88, 0.5*x[82]-x[135] <= 0.0)
@constraint(m, e89, 0.5*x[84]+x[136] <= 11.31)
@constraint(m, e90, 0.5*x[84]-x[136] <= 0.0)
@constraint(m, e91, 0.5*x[86]+x[137] <= 13.0)
@constraint(m, e92, 0.5*x[86]-x[137] <= 0.0)
@constraint(m, e93, 0.5*x[88]+x[138] <= 11.31)
@constraint(m, e94, 0.5*x[88]-x[138] <= 0.0)
@constraint(m, e95, 0.5*x[90]+x[139] <= 13.0)
@constraint(m, e96, 0.5*x[90]-x[139] <= 0.0)
@constraint(m, e97, 0.5*x[92]+x[140] <= 11.31)
@constraint(m, e98, 0.5*x[92]-x[140] <= 0.0)
@constraint(m, e99, 0.5*x[94]+x[141] <= 13.0)
@constraint(m, e100, 0.5*x[94]-x[141] <= 0.0)
@constraint(m, e101, 0.5*x[96]+x[142] <= 11.31)
@constraint(m, e102, 0.5*x[96]-x[142] <= 0.0)
@constraint(m, e103, 0.5*x[98]+x[143] <= 13.0)
@constraint(m, e104, 0.5*x[98]-x[143] <= 0.0)
@constraint(m, e105, 0.5*x[100]+x[144] <= 11.31)
@constraint(m, e106, 0.5*x[100]-x[144] <= 0.0)
@constraint(m, e107, 0.5*x[102]+x[145] <= 13.0)
@constraint(m, e108, 0.5*x[102]-x[145] <= 0.0)
@constraint(m, e109, -x[58]+x[72]-x[73] <= 0.0)
@constraint(m, e110, -x[58]-x[72]+x[73] <= 0.0)
@constraint(m, e111, -x[59]-x[74]+x[75] <= 0.0)
@constraint(m, e112, -x[59]+x[74]-x[75] <= 0.0)
@constraint(m, e113, -11.31*i[1]-11.31*i[2]-x[72]+x[73]+0.5*x[76]+0.5*x[77] <= 0.0)
@constraint(m, e114, -11.31*i[1]+11.31*i[2]+x[72]-x[73]+0.5*x[76]+0.5*x[77] <= 11.31)
@constraint(m, e115, 13*i[1]-13*i[2]+x[74]-x[75]+0.5*x[78]+0.5*x[79] <= 13.0)
@constraint(m, e116, 13*i[1]+13*i[2]-x[74]+x[75]+0.5*x[78]+0.5*x[79] <= 26.0)
@constraint(m, e117, x[72]-x[81]-x[134] <= 0.0)
@constraint(m, e118, -x[72]-x[81]+x[134] <= 0.0)
@constraint(m, e119, x[75]-x[83]-x[135] <= 0.0)
@constraint(m, e120, -x[75]-x[83]+x[135] <= 0.0)
@constraint(m, e121, -11.31*i[3]-11.31*i[4]-x[72]+0.5*x[76]+0.5*x[80]+x[134] <= 0.0)
@constraint(m, e122, -11.31*i[3]+11.31*i[4]+x[72]+0.5*x[76]+0.5*x[80]-x[134] <= 11.31)
@constraint(m, e123, 13*i[3]-13*i[4]-x[75]+0.5*x[78]+0.5*x[82]+x[135] <= 13.0)
@constraint(m, e124, 13*i[3]+13*i[4]+x[75]+0.5*x[78]+0.5*x[82]-x[135] <= 26.0)
@constraint(m, e125, x[72]-x[85]-x[136] <= 0.0)
@constraint(m, e126, -x[72]-x[85]+x[136] <= 0.0)
@constraint(m, e127, x[75]-x[87]-x[137] <= 0.0)
@constraint(m, e128, -x[75]-x[87]+x[137] <= 0.0)
@constraint(m, e129, -11.31*i[5]-11.31*i[6]-x[72]+0.5*x[76]+0.5*x[84]+x[136] <= 0.0)
@constraint(m, e130, -11.31*i[5]+11.31*i[6]+x[72]+0.5*x[76]+0.5*x[84]-x[136] <= 11.31)
@constraint(m, e131, 13*i[5]-13*i[6]-x[75]+0.5*x[78]+0.5*x[86]+x[137] <= 13.0)
@constraint(m, e132, 13*i[5]+13*i[6]+x[75]+0.5*x[78]+0.5*x[86]-x[137] <= 26.0)
@constraint(m, e133, x[72]-x[89]-x[138] <= 0.0)
@constraint(m, e134, -x[72]-x[89]+x[138] <= 0.0)
@constraint(m, e135, x[75]-x[91]-x[139] <= 0.0)
@constraint(m, e136, -x[75]-x[91]+x[139] <= 0.0)
@constraint(m, e137, -11.31*i[7]-11.31*i[8]-x[72]+0.5*x[76]+0.5*x[88]+x[138] <= 0.0)
@constraint(m, e138, -11.31*i[7]+11.31*i[8]+x[72]+0.5*x[76]+0.5*x[88]-x[138] <= 11.31)
@constraint(m, e139, 13*i[7]-13*i[8]-x[75]+0.5*x[78]+0.5*x[90]+x[139] <= 13.0)
@constraint(m, e140, 13*i[7]+13*i[8]+x[75]+0.5*x[78]+0.5*x[90]-x[139] <= 26.0)
@constraint(m, e141, x[72]-x[93]-x[140] <= 0.0)
@constraint(m, e142, -x[72]-x[93]+x[140] <= 0.0)
@constraint(m, e143, x[75]-x[95]-x[141] <= 0.0)
@constraint(m, e144, -x[75]-x[95]+x[141] <= 0.0)
@constraint(m, e145, -11.31*i[9]-11.31*i[10]-x[72]+0.5*x[76]+0.5*x[92]+x[140] <= 0.0)
@constraint(m, e146, -11.31*i[9]+11.31*i[10]+x[72]+0.5*x[76]+0.5*x[92]-x[140] <= 11.31)
@constraint(m, e147, 13*i[9]-13*i[10]-x[75]+0.5*x[78]+0.5*x[94]+x[141] <= 13.0)
@constraint(m, e148, 13*i[9]+13*i[10]+x[75]+0.5*x[78]+0.5*x[94]-x[141] <= 26.0)
@constraint(m, e149, x[72]-x[97]-x[142] <= 0.0)
@constraint(m, e150, -x[72]-x[97]+x[142] <= 0.0)
@constraint(m, e151, x[75]-x[99]-x[143] <= 0.0)
@constraint(m, e152, -x[75]-x[99]+x[143] <= 0.0)
@constraint(m, e153, -11.31*i[11]-11.31*i[12]-x[72]+0.5*x[76]+0.5*x[96]+x[142] <= 0.0)
@constraint(m, e154, -11.31*i[11]+11.31*i[12]+x[72]+0.5*x[76]+0.5*x[96]-x[142] <= 11.31)
@constraint(m, e155, 13*i[11]-13*i[12]-x[75]+0.5*x[78]+0.5*x[98]+x[143] <= 13.0)
@constraint(m, e156, 13*i[11]+13*i[12]+x[75]+0.5*x[78]+0.5*x[98]-x[143] <= 26.0)
@constraint(m, e157, x[72]-x[101]-x[144] <= 0.0)
@constraint(m, e158, -x[72]-x[101]+x[144] <= 0.0)
@constraint(m, e159, x[75]-x[103]-x[145] <= 0.0)
@constraint(m, e160, -x[75]-x[103]+x[145] <= 0.0)
@constraint(m, e161, -11.31*i[13]-11.31*i[14]-x[72]+0.5*x[76]+0.5*x[100]+x[144] <= 0.0)
@constraint(m, e162, -11.31*i[13]+11.31*i[14]+x[72]+0.5*x[76]+0.5*x[100]-x[144] <= 11.31)
@constraint(m, e163, 13*i[13]-13*i[14]-x[75]+0.5*x[78]+0.5*x[102]+x[145] <= 13.0)
@constraint(m, e164, 13*i[13]+13*i[14]+x[75]+0.5*x[78]+0.5*x[102]-x[145] <= 26.0)
@constraint(m, e165, -x[60]+x[73]-x[134] <= 0.0)
@constraint(m, e166, -x[60]-x[73]+x[134] <= 0.0)
@constraint(m, e167, -x[61]+x[74]-x[135] <= 0.0)
@constraint(m, e168, -x[61]-x[74]+x[135] <= 0.0)
@constraint(m, e169, -11.31*i[15]-11.31*i[16]-x[73]+0.5*x[77]+0.5*x[80]+x[134] <= 0.0)
@constraint(m, e170, -11.31*i[15]+11.31*i[16]+x[73]+0.5*x[77]+0.5*x[80]-x[134] <= 11.31)
@constraint(m, e171, 13*i[15]-13*i[16]-x[74]+0.5*x[79]+0.5*x[82]+x[135] <= 13.0)
@constraint(m, e172, 13*i[15]+13*i[16]+x[74]+0.5*x[79]+0.5*x[82]-x[135] <= 26.0)
@constraint(m, e173, x[73]-x[104]-x[136] <= 0.0)
@constraint(m, e174, -x[73]-x[104]+x[136] <= 0.0)
@constraint(m, e175, x[74]-x[105]-x[137] <= 0.0)
@constraint(m, e176, -x[74]-x[105]+x[137] <= 0.0)
@constraint(m, e177, -11.31*i[17]-11.31*i[18]-x[73]+0.5*x[77]+0.5*x[84]+x[136] <= 0.0)
@constraint(m, e178, -11.31*i[17]+11.31*i[18]+x[73]+0.5*x[77]+0.5*x[84]-x[136] <= 11.31)
@constraint(m, e179, 13*i[17]-13*i[18]-x[74]+0.5*x[79]+0.5*x[86]+x[137] <= 13.0)
@constraint(m, e180, 13*i[17]+13*i[18]+x[74]+0.5*x[79]+0.5*x[86]-x[137] <= 26.0)
@constraint(m, e181, x[73]-x[106]-x[138] <= 0.0)
@constraint(m, e182, -x[73]-x[106]+x[138] <= 0.0)
@constraint(m, e183, x[74]-x[107]-x[139] <= 0.0)
@constraint(m, e184, -x[74]-x[107]+x[139] <= 0.0)
@constraint(m, e185, -11.31*i[19]-11.31*i[20]-x[73]+0.5*x[77]+0.5*x[88]+x[138] <= 0.0)
@constraint(m, e186, -11.31*i[19]+11.31*i[20]+x[73]+0.5*x[77]+0.5*x[88]-x[138] <= 11.31)
@constraint(m, e187, 13*i[19]-13*i[20]-x[74]+0.5*x[79]+0.5*x[90]+x[139] <= 13.0)
@constraint(m, e188, 13*i[19]+13*i[20]+x[74]+0.5*x[79]+0.5*x[90]-x[139] <= 26.0)
@constraint(m, e189, x[73]-x[108]-x[140] <= 0.0)
@constraint(m, e190, -x[73]-x[108]+x[140] <= 0.0)
@constraint(m, e191, x[74]-x[109]-x[141] <= 0.0)
@constraint(m, e192, -x[74]-x[109]+x[141] <= 0.0)
@constraint(m, e193, -11.31*i[21]-11.31*i[22]-x[73]+0.5*x[77]+0.5*x[92]+x[140] <= 0.0)
@constraint(m, e194, -11.31*i[21]+11.31*i[22]+x[73]+0.5*x[77]+0.5*x[92]-x[140] <= 11.31)
@constraint(m, e195, 13*i[21]-13*i[22]-x[74]+0.5*x[79]+0.5*x[94]+x[141] <= 13.0)
@constraint(m, e196, 13*i[21]+13*i[22]+x[74]+0.5*x[79]+0.5*x[94]-x[141] <= 26.0)
@constraint(m, e197, x[73]-x[110]-x[142] <= 0.0)
@constraint(m, e198, -x[73]-x[110]+x[142] <= 0.0)
@constraint(m, e199, x[74]-x[111]-x[143] <= 0.0)
@constraint(m, e200, -x[74]-x[111]+x[143] <= 0.0)
@constraint(m, e201, -11.31*i[23]-11.31*i[24]-x[73]+0.5*x[77]+0.5*x[96]+x[142] <= 0.0)
@constraint(m, e202, -11.31*i[23]+11.31*i[24]+x[73]+0.5*x[77]+0.5*x[96]-x[142] <= 11.31)
@constraint(m, e203, 13*i[23]-13*i[24]-x[74]+0.5*x[79]+0.5*x[98]+x[143] <= 13.0)
@constraint(m, e204, 13*i[23]+13*i[24]+x[74]+0.5*x[79]+0.5*x[98]-x[143] <= 26.0)
@constraint(m, e205, x[73]-x[112]-x[144] <= 0.0)
@constraint(m, e206, -x[73]-x[112]+x[144] <= 0.0)
@constraint(m, e207, x[74]-x[113]-x[145] <= 0.0)
@constraint(m, e208, -x[74]-x[113]+x[145] <= 0.0)
@constraint(m, e209, -11.31*i[25]-11.31*i[26]-x[73]+0.5*x[77]+0.5*x[100]+x[144] <= 0.0)
@constraint(m, e210, -11.31*i[25]+11.31*i[26]+x[73]+0.5*x[77]+0.5*x[100]-x[144] <= 11.31)
@constraint(m, e211, 13*i[25]-13*i[26]-x[74]+0.5*x[79]+0.5*x[102]+x[145] <= 13.0)
@constraint(m, e212, 13*i[25]+13*i[26]+x[74]+0.5*x[79]+0.5*x[102]-x[145] <= 26.0)
@constraint(m, e213, -x[62]+x[134]-x[136] <= 0.0)
@constraint(m, e214, -x[62]-x[134]+x[136] <= 0.0)
@constraint(m, e215, -x[63]+x[135]-x[137] <= 0.0)
@constraint(m, e216, -x[63]-x[135]+x[137] <= 0.0)
@constraint(m, e217, -11.31*i[27]-11.31*i[28]+0.5*x[80]+0.5*x[84]-x[134]+x[136] <= 0.0)
@constraint(m, e218, -11.31*i[27]+11.31*i[28]+0.5*x[80]+0.5*x[84]+x[134]-x[136] <= 11.31)
@constraint(m, e219, 13*i[27]-13*i[28]+0.5*x[82]+0.5*x[86]-x[135]+x[137] <= 13.0)
@constraint(m, e220, 13*i[27]+13*i[28]+0.5*x[82]+0.5*x[86]+x[135]-x[137] <= 26.0)
@constraint(m, e221, -x[114]+x[134]-x[138] <= 0.0)
@constraint(m, e222, -x[114]-x[134]+x[138] <= 0.0)
@constraint(m, e223, -x[115]+x[135]-x[139] <= 0.0)
@constraint(m, e224, -x[115]-x[135]+x[139] <= 0.0)
@constraint(m, e225, -11.31*i[29]-11.31*i[30]+0.5*x[80]+0.5*x[88]-x[134]+x[138] <= 0.0)
@constraint(m, e226, -11.31*i[29]+11.31*i[30]+0.5*x[80]+0.5*x[88]+x[134]-x[138] <= 11.31)
@constraint(m, e227, 13*i[29]-13*i[30]+0.5*x[82]+0.5*x[90]-x[135]+x[139] <= 13.0)
@constraint(m, e228, 13*i[29]+13*i[30]+0.5*x[82]+0.5*x[90]+x[135]-x[139] <= 26.0)
@constraint(m, e229, -x[116]+x[134]-x[140] <= 0.0)
@constraint(m, e230, -x[116]-x[134]+x[140] <= 0.0)
@constraint(m, e231, -x[117]+x[135]-x[141] <= 0.0)
@constraint(m, e232, -x[117]-x[135]+x[141] <= 0.0)
@constraint(m, e233, -11.31*i[31]-11.31*i[32]+0.5*x[80]+0.5*x[92]-x[134]+x[140] <= 0.0)
@constraint(m, e234, -11.31*i[31]+11.31*i[32]+0.5*x[80]+0.5*x[92]+x[134]-x[140] <= 11.31)
@constraint(m, e235, 13*i[31]-13*i[32]+0.5*x[82]+0.5*x[94]-x[135]+x[141] <= 13.0)
@constraint(m, e236, 13*i[31]+13*i[32]+0.5*x[82]+0.5*x[94]+x[135]-x[141] <= 26.0)
@constraint(m, e237, -x[118]+x[134]-x[142] <= 0.0)
@constraint(m, e238, -x[118]-x[134]+x[142] <= 0.0)
@constraint(m, e239, -x[119]+x[135]-x[143] <= 0.0)
@constraint(m, e240, -x[119]-x[135]+x[143] <= 0.0)
@constraint(m, e241, -11.31*i[33]-11.31*i[34]+0.5*x[80]+0.5*x[96]-x[134]+x[142] <= 0.0)
@constraint(m, e242, -11.31*i[33]+11.31*i[34]+0.5*x[80]+0.5*x[96]+x[134]-x[142] <= 11.31)
@constraint(m, e243, 13*i[33]-13*i[34]+0.5*x[82]+0.5*x[98]-x[135]+x[143] <= 13.0)
@constraint(m, e244, 13*i[33]+13*i[34]+0.5*x[82]+0.5*x[98]+x[135]-x[143] <= 26.0)
@constraint(m, e245, -x[120]+x[134]-x[144] <= 0.0)
@constraint(m, e246, -x[120]-x[134]+x[144] <= 0.0)
@constraint(m, e247, -x[121]+x[135]-x[145] <= 0.0)
@constraint(m, e248, -x[121]-x[135]+x[145] <= 0.0)
@constraint(m, e249, -11.31*i[35]-11.31*i[36]+0.5*x[80]+0.5*x[100]-x[134]+x[144] <= 0.0)
@constraint(m, e250, -11.31*i[35]+11.31*i[36]+0.5*x[80]+0.5*x[100]+x[134]-x[144] <= 11.31)
@constraint(m, e251, 13*i[35]-13*i[36]+0.5*x[82]+0.5*x[102]-x[135]+x[145] <= 13.0)
@constraint(m, e252, 13*i[35]+13*i[36]+0.5*x[82]+0.5*x[102]+x[135]-x[145] <= 26.0)
@constraint(m, e253, -x[64]+x[136]-x[138] <= 0.0)
@constraint(m, e254, -x[64]-x[136]+x[138] <= 0.0)
@constraint(m, e255, -x[65]+x[137]-x[139] <= 0.0)
@constraint(m, e256, -x[65]-x[137]+x[139] <= 0.0)
@constraint(m, e257, -11.31*i[37]-11.31*i[38]+0.5*x[84]+0.5*x[88]-x[136]+x[138] <= 0.0)
@constraint(m, e258, -11.31*i[37]+11.31*i[38]+0.5*x[84]+0.5*x[88]+x[136]-x[138] <= 11.31)
@constraint(m, e259, 13*i[37]-13*i[38]+0.5*x[86]+0.5*x[90]-x[137]+x[139] <= 13.0)
@constraint(m, e260, 13*i[37]+13*i[38]+0.5*x[86]+0.5*x[90]+x[137]-x[139] <= 26.0)
@constraint(m, e261, -x[122]+x[136]-x[140] <= 0.0)
@constraint(m, e262, -x[122]-x[136]+x[140] <= 0.0)
@constraint(m, e263, -x[123]+x[137]-x[141] <= 0.0)
@constraint(m, e264, -x[123]-x[137]+x[141] <= 0.0)
@constraint(m, e265, -11.31*i[39]-11.31*i[40]+0.5*x[84]+0.5*x[92]-x[136]+x[140] <= 0.0)
@constraint(m, e266, -11.31*i[39]+11.31*i[40]+0.5*x[84]+0.5*x[92]+x[136]-x[140] <= 11.31)
@constraint(m, e267, 13*i[39]-13*i[40]+0.5*x[86]+0.5*x[94]-x[137]+x[141] <= 13.0)
@constraint(m, e268, 13*i[39]+13*i[40]+0.5*x[86]+0.5*x[94]+x[137]-x[141] <= 26.0)
@constraint(m, e269, -x[124]+x[136]-x[142] <= 0.0)
@constraint(m, e270, -x[124]-x[136]+x[142] <= 0.0)
@constraint(m, e271, -x[125]+x[137]-x[143] <= 0.0)
@constraint(m, e272, -x[125]-x[137]+x[143] <= 0.0)
@constraint(m, e273, -11.31*i[41]-11.31*i[42]+0.5*x[84]+0.5*x[96]-x[136]+x[142] <= 0.0)
@constraint(m, e274, -11.31*i[41]+11.31*i[42]+0.5*x[84]+0.5*x[96]+x[136]-x[142] <= 11.31)
@constraint(m, e275, 13*i[41]-13*i[42]+0.5*x[86]+0.5*x[98]-x[137]+x[143] <= 13.0)
@constraint(m, e276, 13*i[41]+13*i[42]+0.5*x[86]+0.5*x[98]+x[137]-x[143] <= 26.0)
@constraint(m, e277, -x[126]+x[136]-x[144] <= 0.0)
@constraint(m, e278, -x[126]-x[136]+x[144] <= 0.0)
@constraint(m, e279, -x[127]+x[137]-x[145] <= 0.0)
@constraint(m, e280, -x[127]-x[137]+x[145] <= 0.0)
@constraint(m, e281, -11.31*i[43]-11.31*i[44]+0.5*x[84]+0.5*x[100]-x[136]+x[144] <= 0.0)
@constraint(m, e282, -11.31*i[43]+11.31*i[44]+0.5*x[84]+0.5*x[100]+x[136]-x[144] <= 11.31)
@constraint(m, e283, 13*i[43]-13*i[44]+0.5*x[86]+0.5*x[102]-x[137]+x[145] <= 13.0)
@constraint(m, e284, 13*i[43]+13*i[44]+0.5*x[86]+0.5*x[102]+x[137]-x[145] <= 26.0)
@constraint(m, e285, -x[66]+x[138]-x[140] <= 0.0)
@constraint(m, e286, -x[66]-x[138]+x[140] <= 0.0)
@constraint(m, e287, -x[67]+x[139]-x[141] <= 0.0)
@constraint(m, e288, -x[67]-x[139]+x[141] <= 0.0)
@constraint(m, e289, -11.31*i[45]-11.31*i[46]+0.5*x[88]+0.5*x[92]-x[138]+x[140] <= 0.0)
@constraint(m, e290, -11.31*i[45]+11.31*i[46]+0.5*x[88]+0.5*x[92]+x[138]-x[140] <= 11.31)
@constraint(m, e291, 13*i[45]-13*i[46]+0.5*x[90]+0.5*x[94]-x[139]+x[141] <= 13.0)
@constraint(m, e292, 13*i[45]+13*i[46]+0.5*x[90]+0.5*x[94]+x[139]-x[141] <= 26.0)
@constraint(m, e293, -x[128]+x[138]-x[142] <= 0.0)
@constraint(m, e294, -x[128]-x[138]+x[142] <= 0.0)
@constraint(m, e295, -x[129]+x[139]-x[143] <= 0.0)
@constraint(m, e296, -x[129]-x[139]+x[143] <= 0.0)
@constraint(m, e297, -11.31*i[47]-11.31*i[48]+0.5*x[88]+0.5*x[96]-x[138]+x[142] <= 0.0)
@constraint(m, e298, -11.31*i[47]+11.31*i[48]+0.5*x[88]+0.5*x[96]+x[138]-x[142] <= 11.31)
@constraint(m, e299, 13*i[47]-13*i[48]+0.5*x[90]+0.5*x[98]-x[139]+x[143] <= 13.0)
@constraint(m, e300, 13*i[47]+13*i[48]+0.5*x[90]+0.5*x[98]+x[139]-x[143] <= 26.0)
@constraint(m, e301, -x[130]+x[138]-x[144] <= 0.0)
@constraint(m, e302, -x[130]-x[138]+x[144] <= 0.0)
@constraint(m, e303, -x[131]+x[139]-x[145] <= 0.0)
@constraint(m, e304, -x[131]-x[139]+x[145] <= 0.0)
@constraint(m, e305, -11.31*i[49]-11.31*i[50]+0.5*x[88]+0.5*x[100]-x[138]+x[144] <= 0.0)
@constraint(m, e306, -11.31*i[49]+11.31*i[50]+0.5*x[88]+0.5*x[100]+x[138]-x[144] <= 11.31)
@constraint(m, e307, 13*i[49]-13*i[50]+0.5*x[90]+0.5*x[102]-x[139]+x[145] <= 13.0)
@constraint(m, e308, 13*i[49]+13*i[50]+0.5*x[90]+0.5*x[102]+x[139]-x[145] <= 26.0)
@constraint(m, e309, -x[68]+x[140]-x[142] <= 0.0)
@constraint(m, e310, -x[68]-x[140]+x[142] <= 0.0)
@constraint(m, e311, -x[69]+x[141]-x[143] <= 0.0)
@constraint(m, e312, -x[69]-x[141]+x[143] <= 0.0)
@constraint(m, e313, -11.31*i[51]-11.31*i[52]+0.5*x[92]+0.5*x[96]-x[140]+x[142] <= 0.0)
@constraint(m, e314, -11.31*i[51]+11.31*i[52]+0.5*x[92]+0.5*x[96]+x[140]-x[142] <= 11.31)
@constraint(m, e315, 13*i[51]-13*i[52]+0.5*x[94]+0.5*x[98]-x[141]+x[143] <= 13.0)
@constraint(m, e316, 13*i[51]+13*i[52]+0.5*x[94]+0.5*x[98]+x[141]-x[143] <= 26.0)
@constraint(m, e317, -x[132]+x[140]-x[144] <= 0.0)
@constraint(m, e318, -x[132]-x[140]+x[144] <= 0.0)
@constraint(m, e319, -x[133]+x[141]-x[145] <= 0.0)
@constraint(m, e320, -x[133]-x[141]+x[145] <= 0.0)
@constraint(m, e321, -11.31*i[53]-11.31*i[54]+0.5*x[92]+0.5*x[100]-x[140]+x[144] <= 0.0)
@constraint(m, e322, -11.31*i[53]+11.31*i[54]+0.5*x[92]+0.5*x[100]+x[140]-x[144] <= 11.31)
@constraint(m, e323, 13*i[53]-13*i[54]+0.5*x[94]+0.5*x[102]-x[141]+x[145] <= 13.0)
@constraint(m, e324, 13*i[53]+13*i[54]+0.5*x[94]+0.5*x[102]+x[141]-x[145] <= 26.0)
@constraint(m, e325, -x[70]+x[142]-x[144] <= 0.0)
@constraint(m, e326, -x[70]-x[142]+x[144] <= 0.0)
@constraint(m, e327, -x[71]+x[143]-x[145] <= 0.0)
@constraint(m, e328, -x[71]-x[143]+x[145] <= 0.0)
@constraint(m, e329, -11.31*i[55]-11.31*i[56]+0.5*x[96]+0.5*x[100]-x[142]+x[144] <= 0.0)
@constraint(m, e330, -11.31*i[55]+11.31*i[56]+0.5*x[96]+0.5*x[100]+x[142]-x[144] <= 11.31)
@constraint(m, e331, 13*i[55]-13*i[56]+0.5*x[98]+0.5*x[102]-x[143]+x[145] <= 13.0)
@constraint(m, e332, 13*i[55]+13*i[56]+0.5*x[98]+0.5*x[102]+x[143]-x[145] <= 26.0)
@NLconstraint(m, e333, 16/x[76]-x[78] <= 0.0)
@NLconstraint(m, e334, 16/x[78]-x[76] <= 0.0)
@NLconstraint(m, e335, 16/x[77]-x[79] <= 0.0)
@NLconstraint(m, e336, 16/x[79]-x[77] <= 0.0)
@NLconstraint(m, e337, 16/x[80]-x[82] <= 0.0)
@NLconstraint(m, e338, 16/x[82]-x[80] <= 0.0)
@NLconstraint(m, e339, 36/x[84]-x[86] <= 0.0)
@NLconstraint(m, e340, 36/x[86]-x[84] <= 0.0)
@NLconstraint(m, e341, 36/x[88]-x[90] <= 0.0)
@NLconstraint(m, e342, 36/x[90]-x[88] <= 0.0)
@NLconstraint(m, e343, 9/x[92]-x[94] <= 0.0)
@NLconstraint(m, e344, 9/x[94]-x[92] <= 0.0)
@NLconstraint(m, e345, 9/x[96]-x[98] <= 0.0)
@NLconstraint(m, e346, 9/x[98]-x[96] <= 0.0)
@NLconstraint(m, e347, 9/x[100]-x[102] <= 0.0)
@NLconstraint(m, e348, 9/x[102]-x[100] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
