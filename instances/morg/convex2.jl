using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 101]
@variable(m, x[x_Idx])
b_Idx = Any[41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]
@variable(m, b[b_Idx],  Bin)

set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[6], 0.0)
set_upper_bound(x[1], 1.6094379124341)
set_upper_bound(x[2], 1.6094379124341)
set_upper_bound(x[3], 1.6094379124341)
set_upper_bound(x[4], 1.6094379124341)
set_upper_bound(x[5], 1.6094379124341)
set_upper_bound(x[6], 1.6094379124341)
set_upper_bound(x[7], 1.6094379124341)
set_upper_bound(x[8], 1.6094379124341)
set_upper_bound(x[9], 1.6094379124341)
set_upper_bound(x[10], 1.6094379124341)
set_upper_bound(x[11], 1.6094379124341)
set_upper_bound(x[12], 1.6094379124341)
set_lower_bound(x[13], 5.7037824746562)
set_upper_bound(x[13], 8.00636756765025)
set_lower_bound(x[14], 5.7037824746562)
set_upper_bound(x[14], 8.00636756765025)
set_lower_bound(x[15], 5.7037824746562)
set_upper_bound(x[15], 8.00636756765025)
set_lower_bound(x[16], 5.7037824746562)
set_upper_bound(x[16], 8.00636756765025)
set_lower_bound(x[17], 5.7037824746562)
set_upper_bound(x[17], 8.00636756765025)
set_lower_bound(x[18], 5.7037824746562)
set_upper_bound(x[18], 8.00636756765025)
set_lower_bound(x[19], 5.7037824746562)
set_upper_bound(x[19], 8.00636756765025)
set_lower_bound(x[20], 5.7037824746562)
set_upper_bound(x[20], 8.00636756765025)
set_lower_bound(x[21], 5.7037824746562)
set_upper_bound(x[21], 8.00636756765025)
set_lower_bound(x[22], 5.7037824746562)
set_upper_bound(x[22], 8.00636756765025)
set_lower_bound(x[23], 5.7037824746562)
set_upper_bound(x[23], 8.00636756765025)
set_lower_bound(x[24], 5.7037824746562)
set_upper_bound(x[24], 8.00636756765025)
set_lower_bound(x[25], 4.89920702407788)
set_upper_bound(x[25], 5.93950480817727)
set_lower_bound(x[26], 4.2094573693226)
set_upper_bound(x[26], 6.78259213602813)
set_lower_bound(x[27], 4.8436620142491)
set_upper_bound(x[27], 6.4803112641552)
set_lower_bound(x[28], 3.49701248447645)
set_upper_bound(x[28], 6.45880505893423)
set_lower_bound(x[29], 4.2336716274432)
set_upper_bound(x[29], 6.50229017087397)
set_lower_bound(x[30], 3.62545142726039)
set_upper_bound(x[30], 6.08944495546819)
set_lower_bound(x[31], 3.74336763939801)
set_upper_bound(x[31], 6.35770894206286)
set_lower_bound(x[32], 3.03415138345794)
set_upper_bound(x[32], 7.21791020728598)
set_lower_bound(x[33], 0.506817602368452)
set_upper_bound(x[33], 2.11625551480255)
set_lower_bound(x[34], 0.307484699747961)
set_upper_bound(x[34], 1.91692261218206)
set_lower_bound(x[35], 0.867100487683383)
set_upper_bound(x[35], 2.47653840011748)
set_lower_bound(x[36], -0.356674943938732)
set_upper_bound(x[36], 1.25276296849537)
set_lower_bound(x[37], 0.131028262406404)
set_upper_bound(x[37], 1.7404661748405)
set_lower_bound(x[38], -0.162518929497775)
set_upper_bound(x[38], 1.44691898293633)
set_lower_bound(x[39], -0.127833371509885)
set_upper_bound(x[39], 1.48160454092422)
set_lower_bound(x[40], -0.150822889734584)
set_upper_bound(x[40], 1.45861502269952)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(250*exp(x[1]+0.6*x[13])+550*exp(x[2]+0.6*x[14])+250*exp(x[3]+0.6*x[15])+1000*exp(x[4]+0.6*x[16])+300*exp(x[5]+0.6*x[17])+800*exp(x[6]+0.6*x[18])+200*exp(x[7]+0.6*x[19])+1200*exp(x[8]+0.6*x[20])+250*exp(x[9]+0.6*x[21])+250*exp(x[10]+0.6*x[22])+450*exp(x[11]+0.6*x[23])+700*exp(x[12]+0.6*x[24]))+x[101] == 0.0)
@constraint(m, e2, x[13]-x[25] >= 2.06686275947298)
@constraint(m, e3, x[14]-x[25] >= 0.693147180559945)
@constraint(m, e4, x[15]-x[25] >= 1.64865862558738)
@constraint(m, e5, x[16]-x[25] >= 1.58923520511658)
@constraint(m, e6, x[17]-x[25] >= 1.80828877117927)
@constraint(m, e7, x[18]-x[25] >= 1.43508452528932)
@constraint(m, e8, x[19]-x[25] >= 1.02961941718116)
@constraint(m, e9, x[20]-x[25] >= 1.19392246847243)
@constraint(m, e10, x[21]-x[25] >= 1.41098697371026)
@constraint(m, e11, x[22]-x[25] >= 1.33500106673234)
@constraint(m, e12, x[23]-x[25] >= 1.02961941718116)
@constraint(m, e13, x[24]-x[25] >= 1.3609765531356)
@constraint(m, e14, x[13]-x[26] >= -0.356674943938732)
@constraint(m, e15, x[14]-x[26] >= -0.22314355131421)
@constraint(m, e16, x[15]-x[26] >= -0.105360515657826)
@constraint(m, e17, x[16]-x[26] >= 1.22377543162212)
@constraint(m, e18, x[17]-x[26] >= 0.741937344729377)
@constraint(m, e19, x[18]-x[26] >= 0.916290731874155)
@constraint(m, e20, x[19]-x[26] >= 1.19392246847243)
@constraint(m, e21, x[20]-x[26] >= 1.09861228866811)
@constraint(m, e22, x[21]-x[26] >= 0.993251773010283)
@constraint(m, e23, x[22]-x[26] >= 0.8754687373539)
@constraint(m, e24, x[23]-x[26] >= 0.78845736036427)
@constraint(m, e25, x[24]-x[26] >= 1.1314021114911)
@constraint(m, e26, x[13]-x[27] >= -0.356674943938732)
@constraint(m, e27, x[14]-x[27] >= 0.955511445027436)
@constraint(m, e28, x[15]-x[27] >= 0.470003629245736)
@constraint(m, e29, x[16]-x[27] >= 1.28093384546206)
@constraint(m, e30, x[17]-x[27] >= 1.16315080980568)
@constraint(m, e31, x[18]-x[27] >= 1.06471073699243)
@constraint(m, e32, x[19]-x[27] >= 0.955511445027436)
@constraint(m, e33, x[20]-x[27] >= 0.78845736036427)
@constraint(m, e34, x[21]-x[27] >= 1.52605630349505)
@constraint(m, e35, x[22]-x[27] >= 1.45861502269952)
@constraint(m, e36, x[23]-x[27] >= 1.43508452528932)
@constraint(m, e37, x[24]-x[27] >= 1.52605630349505)
@constraint(m, e38, x[13]-x[28] >= 1.54756250871601)
@constraint(m, e39, x[14]-x[28] >= 0.832909122935104)
@constraint(m, e40, x[15]-x[28] >= 0.470003629245736)
@constraint(m, e41, x[16]-x[28] >= 0.993251773010283)
@constraint(m, e42, x[17]-x[28] >= 0.182321556793955)
@constraint(m, e43, x[18]-x[28] >= 0.916290731874155)
@constraint(m, e44, x[19]-x[28] >= 0.405465108108164)
@constraint(m, e45, x[20]-x[28] >= 0.405465108108164)
@constraint(m, e46, x[21]-x[28] >= 0.262364264467491)
@constraint(m, e47, x[22]-x[28] >= 0.53062825106217)
@constraint(m, e48, x[23]-x[28] >= 0.405465108108164)
@constraint(m, e49, x[24]-x[28] >= 0.587786664902119)
@constraint(m, e50, x[13]-x[29] >= 0.182321556793955)
@constraint(m, e51, x[14]-x[29] >= 1.28093384546206)
@constraint(m, e52, x[15]-x[29] >= 0.8754687373539)
@constraint(m, e53, x[16]-x[29] >= 1.50407739677627)
@constraint(m, e54, x[17]-x[29] >= 0.470003629245736)
@constraint(m, e55, x[18]-x[29] >= 0.741937344729377)
@constraint(m, e56, x[19]-x[29] >= 0.8754687373539)
@constraint(m, e57, x[20]-x[29] >= 0.993251773010283)
@constraint(m, e58, x[21]-x[29] >= 1.02961941718116)
@constraint(m, e59, x[22]-x[29] >= 1.25276296849537)
@constraint(m, e60, x[23]-x[29] >= 1.25276296849537)
@constraint(m, e61, x[24]-x[29] >= 1.45861502269952)
@constraint(m, e62, x[13]-x[30] >= -0.356674943938732)
@constraint(m, e63, x[14]-x[30] >= 0.8754687373539)
@constraint(m, e64, x[15]-x[30] >= 1.1314021114911)
@constraint(m, e65, x[16]-x[30] >= 0.78845736036427)
@constraint(m, e66, x[17]-x[30] >= 1.30833281965018)
@constraint(m, e67, x[18]-x[30] >= 1.56861591791385)
@constraint(m, e68, x[19]-x[30] >= 1.50407739677627)
@constraint(m, e69, x[20]-x[30] >= 1.64865862558738)
@constraint(m, e70, x[21]-x[30] >= 1.85629799036563)
@constraint(m, e71, x[22]-x[30] >= 1.7404661748405)
@constraint(m, e72, x[23]-x[30] >= 1.85629799036563)
@constraint(m, e73, x[24]-x[30] >= 1.91692261218206)
@constraint(m, e74, x[13]-x[31] >= 0.832909122935104)
@constraint(m, e75, x[14]-x[31] >= 1.54756250871601)
@constraint(m, e76, x[15]-x[31] >= 1.64865862558738)
@constraint(m, e77, x[16]-x[31] >= 1.25276296849537)
@constraint(m, e78, x[17]-x[31] >= 1.06471073699243)
@constraint(m, e79, x[18]-x[31] >= 1.28093384546206)
@constraint(m, e80, x[19]-x[31] >= 1.19392246847243)
@constraint(m, e81, x[20]-x[31] >= 1.16315080980568)
@constraint(m, e82, x[21]-x[31] >= 1.41098697371026)
@constraint(m, e83, x[22]-x[31] >= 1.30833281965018)
@constraint(m, e84, x[23]-x[31] >= 1.22377543162212)
@constraint(m, e85, x[24]-x[31] >= 1.30833281965018)
@constraint(m, e86, x[13]-x[32] >= -0.916290731874155)
@constraint(m, e87, x[14]-x[32] >= -0.105360515657826)
@constraint(m, e88, x[15]-x[32] >= 0.0953101798043249)
@constraint(m, e89, x[16]-x[32] >= 0.336472236621213)
@constraint(m, e90, x[17]-x[32] >= 0.470003629245736)
@constraint(m, e91, x[18]-x[32] >= 0.78845736036427)
@constraint(m, e92, x[19]-x[32] >= 0.693147180559945)
@constraint(m, e93, x[20]-x[32] >= 0.587786664902119)
@constraint(m, e94, x[21]-x[32] >= 0.587786664902119)
@constraint(m, e95, x[22]-x[32] >= 0.470003629245736)
@constraint(m, e96, x[23]-x[32] >= 0.587786664902119)
@constraint(m, e97, x[24]-x[32] >= 0.693147180559945)
@constraint(m, e98, x[1]+x[33] >= 1.85629799036563)
@constraint(m, e99, x[2]+x[33] >= 1.54756250871601)
@constraint(m, e100, x[3]+x[33] >= 2.11625551480255)
@constraint(m, e101, x[4]+x[33] >= 1.3609765531356)
@constraint(m, e102, x[5]+x[33] >= 0.741937344729377)
@constraint(m, e103, x[6]+x[33] >= 0.182321556793955)
@constraint(m, e104, x[7]+x[33] >= -0.22314355131421)
@constraint(m, e105, x[8]+x[33] >= 0.78845736036427)
@constraint(m, e106, x[9]+x[33] >= 0.182321556793955)
@constraint(m, e107, x[10]+x[33] >= 0.916290731874155)
@constraint(m, e108, x[11]+x[33] >= 1.22377543162212)
@constraint(m, e109, x[12]+x[33] >= 1.33500106673234)
@constraint(m, e110, x[1]+x[34] >= 1.91692261218206)
@constraint(m, e111, x[2]+x[34] >= 1.85629799036563)
@constraint(m, e112, x[3]+x[34] >= 1.87180217690159)
@constraint(m, e113, x[4]+x[34] >= 1.48160454092422)
@constraint(m, e114, x[5]+x[34] >= 0.832909122935104)
@constraint(m, e115, x[6]+x[34] >= 1.16315080980568)
@constraint(m, e116, x[7]+x[34] >= -0.916290731874155)
@constraint(m, e117, x[8]+x[34] >= -1.6094379124341)
@constraint(m, e118, x[9]+x[34] >= -0.693147180559945)
@constraint(m, e119, x[10]+x[34] >= 1.19392246847243)
@constraint(m, e120, x[11]+x[34] >= -0.510825623765991)
@constraint(m, e121, x[12]+x[34] >= 0.182321556793955)
@constraint(m, e122, x[1]+x[35] >= 0.0)
@constraint(m, e123, x[2]+x[35] >= 1.84054963339749)
@constraint(m, e124, x[3]+x[35] >= 1.68639895357023)
@constraint(m, e125, x[4]+x[35] >= 2.47653840011748)
@constraint(m, e126, x[5]+x[35] >= 1.7404661748405)
@constraint(m, e127, x[6]+x[35] >= 1.82454929205105)
@constraint(m, e128, x[7]+x[35] >= 0.0953101798043249)
@constraint(m, e129, x[8]+x[35] >= -0.510825623765991)
@constraint(m, e130, x[9]+x[35] >= 0.182321556793955)
@constraint(m, e131, x[10]+x[35] >= 1.45861502269952)
@constraint(m, e132, x[11]+x[35] >= 1.02961941718116)
@constraint(m, e133, x[12]+x[35] >= 1.64865862558738)
@constraint(m, e134, x[1]+x[36] >= 1.16315080980568)
@constraint(m, e135, x[2]+x[36] >= 1.09861228866811)
@constraint(m, e136, x[3]+x[36] >= 1.25276296849537)
@constraint(m, e137, x[4]+x[36] >= 1.19392246847243)
@constraint(m, e138, x[5]+x[36] >= 1.02961941718116)
@constraint(m, e139, x[6]+x[36] >= 1.22377543162212)
@constraint(m, e140, x[7]+x[36] >= 0.53062825106217)
@constraint(m, e141, x[8]+x[36] >= -0.105360515657826)
@constraint(m, e142, x[9]+x[36] >= 0.78845736036427)
@constraint(m, e143, x[10]+x[36] >= 0.765467842139571)
@constraint(m, e144, x[11]+x[36] >= 0.587786664902119)
@constraint(m, e145, x[12]+x[36] >= 0.916290731874155)
@constraint(m, e146, x[1]+x[37] >= 0.741937344729377)
@constraint(m, e147, x[2]+x[37] >= 0.916290731874155)
@constraint(m, e148, x[3]+x[37] >= 1.43508452528932)
@constraint(m, e149, x[4]+x[37] >= 1.28093384546206)
@constraint(m, e150, x[5]+x[37] >= 1.7404661748405)
@constraint(m, e151, x[6]+x[37] >= 0.78845736036427)
@constraint(m, e152, x[7]+x[37] >= 0.182321556793955)
@constraint(m, e153, x[8]+x[37] >= -0.510825623765991)
@constraint(m, e154, x[9]+x[37] >= 0.139761942375159)
@constraint(m, e155, x[10]+x[37] >= 1.1314021114911)
@constraint(m, e156, x[11]+x[37] >= 1.43508452528932)
@constraint(m, e157, x[12]+x[37] >= 0.470003629245736)
@constraint(m, e158, x[1]+x[38] >= 0.0953101798043249)
@constraint(m, e159, x[2]+x[38] >= -0.22314355131421)
@constraint(m, e160, x[3]+x[38] >= -0.916290731874155)
@constraint(m, e161, x[4]+x[38] >= 0.0953101798043249)
@constraint(m, e162, x[5]+x[38] >= 0.587786664902119)
@constraint(m, e163, x[6]+x[38] >= 0.916290731874155)
@constraint(m, e164, x[7]+x[38] >= -0.693147180559945)
@constraint(m, e165, x[8]+x[38] >= 0.262364264467491)
@constraint(m, e166, x[9]+x[38] >= 0.336472236621213)
@constraint(m, e167, x[10]+x[38] >= 1.44691898293633)
@constraint(m, e168, x[11]+x[38] >= 0.993251773010283)
@constraint(m, e169, x[12]+x[38] >= -0.105360515657826)
@constraint(m, e170, x[1]+x[39] >= 1.43508452528932)
@constraint(m, e171, x[2]+x[39] >= 1.38629436111989)
@constraint(m, e172, x[3]+x[39] >= 0.78845736036427)
@constraint(m, e173, x[4]+x[39] >= -0.693147180559945)
@constraint(m, e174, x[5]+x[39] >= 1.22377543162212)
@constraint(m, e175, x[6]+x[39] >= 0.78845736036427)
@constraint(m, e176, x[7]+x[39] >= 0.336472236621213)
@constraint(m, e177, x[8]+x[39] >= -0.105360515657826)
@constraint(m, e178, x[9]+x[39] >= 0.741937344729377)
@constraint(m, e179, x[10]+x[39] >= 1.48160454092422)
@constraint(m, e180, x[11]+x[39] >= 0.78845736036427)
@constraint(m, e181, x[12]+x[39] >= 1.16315080980568)
@constraint(m, e182, x[1]+x[40] >= 0.993251773010283)
@constraint(m, e183, x[2]+x[40] >= 1.45861502269952)
@constraint(m, e184, x[3]+x[40] >= 0.641853886172395)
@constraint(m, e185, x[4]+x[40] >= 0.693147180559945)
@constraint(m, e186, x[5]+x[40] >= 0.53062825106217)
@constraint(m, e187, x[6]+x[40] >= -0.356674943938732)
@constraint(m, e188, x[7]+x[40] >= -1.20397280432594)
@constraint(m, e189, x[8]+x[40] >= -1.6094379124341)
@constraint(m, e190, x[9]+x[40] >= 0.470003629245736)
@constraint(m, e191, x[10]+x[40] >= 1.25276296849537)
@constraint(m, e192, x[11]+x[40] >= 1.22377543162212)
@constraint(m, e193, x[12]+x[40] >= 0.741937344729377)
@NLconstraint(m, e194, 485000*exp(x[33]-x[25])+297000*exp(x[34]-x[26])+320000*exp(x[35]-x[27])+283000*exp(x[36]-x[28])+363000*exp(x[37]-x[29])+265000*exp(x[38]-x[30])+288000*exp(x[39]-x[31])+145000*exp(x[40]-x[32]) <= 6000.0)
@constraint(m, e195, x[1]-0.693147180559945*b[53]-1.09861228866811*b[65]-1.38629436111989*b[77]-1.6094379124341*b[89] == 0.0)
@constraint(m, e196, x[2]-0.693147180559945*b[54]-1.09861228866811*b[66]-1.38629436111989*b[78]-1.6094379124341*b[90] == 0.0)
@constraint(m, e197, x[3]-0.693147180559945*b[55]-1.09861228866811*b[67]-1.38629436111989*b[79]-1.6094379124341*b[91] == 0.0)
@constraint(m, e198, x[4]-0.693147180559945*b[56]-1.09861228866811*b[68]-1.38629436111989*b[80]-1.6094379124341*b[92] == 0.0)
@constraint(m, e199, x[5]-0.693147180559945*b[57]-1.09861228866811*b[69]-1.38629436111989*b[81]-1.6094379124341*b[93] == 0.0)
@constraint(m, e200, x[6]-0.693147180559945*b[58]-1.09861228866811*b[70]-1.38629436111989*b[82]-1.6094379124341*b[94] == 0.0)
@constraint(m, e201, x[7]-0.693147180559945*b[59]-1.09861228866811*b[71]-1.38629436111989*b[83]-1.6094379124341*b[95] == 0.0)
@constraint(m, e202, x[8]-0.693147180559945*b[60]-1.09861228866811*b[72]-1.38629436111989*b[84]-1.6094379124341*b[96] == 0.0)
@constraint(m, e203, x[9]-0.693147180559945*b[61]-1.09861228866811*b[73]-1.38629436111989*b[85]-1.6094379124341*b[97] == 0.0)
@constraint(m, e204, x[10]-0.693147180559945*b[62]-1.09861228866811*b[74]-1.38629436111989*b[86]-1.6094379124341*b[98] == 0.0)
@constraint(m, e205, x[11]-0.693147180559945*b[63]-1.09861228866811*b[75]-1.38629436111989*b[87]-1.6094379124341*b[99] == 0.0)
@constraint(m, e206, x[12]-0.693147180559945*b[64]-1.09861228866811*b[76]-1.38629436111989*b[88]-1.6094379124341*b[100] == 0.0)
@constraint(m, e207, b[41]+b[53]+b[65]+b[77]+b[89] == 1.0)
@constraint(m, e208, b[42]+b[54]+b[66]+b[78]+b[90] == 1.0)
@constraint(m, e209, b[43]+b[55]+b[67]+b[79]+b[91] == 1.0)
@constraint(m, e210, b[44]+b[56]+b[68]+b[80]+b[92] == 1.0)
@constraint(m, e211, b[45]+b[57]+b[69]+b[81]+b[93] == 1.0)
@constraint(m, e212, b[46]+b[58]+b[70]+b[82]+b[94] == 1.0)
@constraint(m, e213, b[47]+b[59]+b[71]+b[83]+b[95] == 1.0)
@constraint(m, e214, b[48]+b[60]+b[72]+b[84]+b[96] == 1.0)
@constraint(m, e215, b[49]+b[61]+b[73]+b[85]+b[97] == 1.0)
@constraint(m, e216, b[50]+b[62]+b[74]+b[86]+b[98] == 1.0)
@constraint(m, e217, b[51]+b[63]+b[75]+b[87]+b[99] == 1.0)
@constraint(m, e218, b[52]+b[64]+b[76]+b[88]+b[100] == 1.0)


# ----- Objective ----- #
@objective(m, Min, x[101])

m = m 		 # model get returned when including this script. 
