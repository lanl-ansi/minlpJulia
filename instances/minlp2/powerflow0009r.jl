using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, 1100* (x[55])^2+500*x[55]+850* (x[56])^2+120*x[56]+1225* (x[57])^2+100*x[57]-objvar == -1085.0)
@NLconstraint(m, e2, 8.53242320819113*x[42]*x[48]-8.53242320819113*x[39]*x[51]+8.53242320819113*x[48]*x[42]-8.53242320819113*x[51]*x[39]+x[1] == 0.0)
@NLconstraint(m, e3, 8.53242320819113*x[39]*x[51]-8.53242320819113*x[42]*x[48]-8.53242320819113*x[48]*x[42]+8.53242320819113*x[51]*x[39]+x[2] == 0.0)
@NLconstraint(m, e4, 0.808561236623068*x[43]*x[44]-1.61712247324614* (x[43])^2-6.84898929845422*x[43]*x[53]+0.808561236623068*x[44]*x[43]+6.84898929845422*x[44]*x[52]+6.84898929845422*x[52]*x[44]-1.61712247324614* (x[52])^2+0.808561236623068*x[52]*x[53]-6.84898929845422*x[53]*x[43]+0.808561236623068*x[53]*x[52]+x[3] == 0.0)
@NLconstraint(m, e5, 0.808561236623068*x[43]*x[44]+6.84898929845422*x[43]*x[53]+0.808561236623068*x[44]*x[43]-1.61712247324614* (x[44])^2-6.84898929845422*x[44]*x[52]-6.84898929845422*x[52]*x[44]+0.808561236623068*x[52]*x[53]+6.84898929845422*x[53]*x[43]+0.808561236623068*x[53]*x[52]-1.61712247324614* (x[53])^2+x[4] == 0.0)
@NLconstraint(m, e6, 0.641004569212057*x[41]*x[42]-1.28200913842411* (x[41])^2-2.79412248118076*x[41]*x[51]+0.641004569212057*x[42]*x[41]+2.79412248118076*x[42]*x[50]+2.79412248118076*x[50]*x[42]-1.28200913842411* (x[50])^2+0.641004569212057*x[50]*x[51]-2.79412248118076*x[51]*x[41]+0.641004569212057*x[51]*x[50]+x[5] == 0.0)
@NLconstraint(m, e7, 0.641004569212057*x[41]*x[42]+2.79412248118076*x[41]*x[51]+0.641004569212057*x[42]*x[41]-1.28200913842411* (x[42])^2-2.79412248118076*x[42]*x[50]-2.79412248118076*x[50]*x[42]+0.641004569212057*x[50]*x[51]+2.79412248118076*x[51]*x[41]+0.641004569212057*x[51]*x[50]-1.28200913842411* (x[51])^2+x[6] == 0.0)
@NLconstraint(m, e8, 0.577543740445048*x[42]*x[43]-1.1550874808901* (x[42])^2-4.89213521318159*x[42]*x[52]+0.577543740445048*x[43]*x[42]+4.89213521318159*x[43]*x[51]+4.89213521318159*x[51]*x[43]-1.1550874808901* (x[51])^2+0.577543740445048*x[51]*x[52]-4.89213521318159*x[52]*x[42]+0.577543740445048*x[52]*x[51]+x[7] == 0.0)
@NLconstraint(m, e9, 0.577543740445048*x[42]*x[43]+4.89213521318159*x[42]*x[52]+0.577543740445048*x[43]*x[42]-1.1550874808901* (x[43])^2-4.89213521318159*x[43]*x[51]-4.89213521318159*x[51]*x[43]+0.577543740445048*x[51]*x[52]+4.89213521318159*x[52]*x[42]+0.577543740445048*x[52]*x[51]-1.1550874808901* (x[52])^2+x[8] == 0.0)
@NLconstraint(m, e10, 8*x[38]*x[53]-8*x[44]*x[47]-8*x[47]*x[44]+8*x[53]*x[38]+x[9] == 0.0)
@NLconstraint(m, e11, 8*x[44]*x[47]-8*x[38]*x[53]+8*x[47]*x[44]-8*x[53]*x[38]+x[10] == 0.0)
@NLconstraint(m, e12, 0.971095624357363*x[40]*x[41]-1.94219124871473* (x[40])^2-5.25534102593397*x[40]*x[50]+0.971095624357363*x[41]*x[40]+5.25534102593397*x[41]*x[49]+5.25534102593397*x[49]*x[41]-1.94219124871473* (x[49])^2+0.971095624357363*x[49]*x[50]-5.25534102593397*x[50]*x[40]+0.971095624357363*x[50]*x[49]+x[11] == 0.0)
@NLconstraint(m, e13, 0.971095624357363*x[40]*x[41]+5.25534102593397*x[40]*x[50]+0.971095624357363*x[41]*x[40]-1.94219124871473* (x[41])^2-5.25534102593397*x[41]*x[49]-5.25534102593397*x[49]*x[41]+0.971095624357363*x[49]*x[50]+5.25534102593397*x[50]*x[40]+0.971095624357363*x[50]*x[49]-1.94219124871473* (x[50])^2+x[12] == 0.0)
@NLconstraint(m, e14, 8.68055555555556*x[40]*x[46]-8.68055555555556*x[37]*x[49]+8.68055555555556*x[46]*x[40]-8.68055555555556*x[49]*x[37]+x[13] == 0.0)
@NLconstraint(m, e15, 8.68055555555556*x[37]*x[49]-8.68055555555556*x[40]*x[46]-8.68055555555556*x[46]*x[40]+8.68055555555556*x[49]*x[37]+x[14] == 0.0)
@NLconstraint(m, e16, 0.68259385665529*x[40]*x[45]+5.80204778156997*x[40]*x[54]+0.68259385665529*x[45]*x[40]-1.36518771331058* (x[45])^2-5.80204778156997*x[45]*x[49]-5.80204778156997*x[49]*x[45]+0.68259385665529*x[49]*x[54]+5.80204778156997*x[54]*x[40]+0.68259385665529*x[54]*x[49]-1.36518771331058* (x[54])^2+x[15] == 0.0)
@NLconstraint(m, e17, 0.68259385665529*x[40]*x[45]-1.36518771331058* (x[40])^2-5.80204778156997*x[40]*x[54]+0.68259385665529*x[45]*x[40]+5.80204778156997*x[45]*x[49]+5.80204778156997*x[49]*x[45]-1.36518771331058* (x[49])^2+0.68259385665529*x[49]*x[54]-5.80204778156997*x[54]*x[40]+0.68259385665529*x[54]*x[49]+x[16] == 0.0)
@NLconstraint(m, e18, 0.593802189645574*x[44]*x[45]-1.18760437929115* (x[44])^2-2.9875672666543*x[44]*x[54]+0.593802189645574*x[45]*x[44]+2.9875672666543*x[45]*x[53]+2.9875672666543*x[53]*x[45]-1.18760437929115* (x[53])^2+0.593802189645574*x[53]*x[54]-2.9875672666543*x[54]*x[44]+0.593802189645574*x[54]*x[53]+x[17] == 0.0)
@NLconstraint(m, e19, 0.593802189645574*x[44]*x[45]+2.9875672666543*x[44]*x[54]+0.593802189645574*x[45]*x[44]-1.18760437929115* (x[45])^2-2.9875672666543*x[45]*x[53]-2.9875672666543*x[53]*x[45]+0.593802189645574*x[53]*x[54]+2.9875672666543*x[54]*x[44]+0.593802189645574*x[54]*x[53]-1.18760437929115* (x[54])^2+x[18] == 0.0)
@NLconstraint(m, e20, 8.53242320819113*x[39]*x[42]-17.0648464163823* (x[39])^2+8.53242320819113*x[42]*x[39]-17.0648464163823* (x[48])^2+8.53242320819113*x[48]*x[51]+8.53242320819113*x[51]*x[48]+x[19] == 0.0)
@NLconstraint(m, e21, 8.53242320819113*x[39]*x[42]+8.53242320819113*x[42]*x[39]-17.0648464163823* (x[42])^2+8.53242320819113*x[48]*x[51]+8.53242320819113*x[51]*x[48]-17.0648464163823* (x[51])^2+x[20] == 0.0)
@NLconstraint(m, e22, 6.84898929845422*x[43]*x[44]-13.6234785969084* (x[43])^2+0.808561236623068*x[43]*x[53]+6.84898929845422*x[44]*x[43]-0.808561236623068*x[44]*x[52]-0.808561236623068*x[52]*x[44]-13.6234785969084* (x[52])^2+6.84898929845422*x[52]*x[53]+0.808561236623068*x[53]*x[43]+6.84898929845422*x[53]*x[52]+x[21] == 0.0)
@NLconstraint(m, e23, 6.84898929845422*x[43]*x[44]-0.808561236623068*x[43]*x[53]+6.84898929845422*x[44]*x[43]-13.6234785969084* (x[44])^2+0.808561236623068*x[44]*x[52]+0.808561236623068*x[52]*x[44]+6.84898929845422*x[52]*x[53]-0.808561236623068*x[53]*x[43]+6.84898929845422*x[53]*x[52]-13.6234785969084* (x[53])^2+x[22] == 0.0)
@NLconstraint(m, e24, 2.79412248118076*x[41]*x[42]-5.40924496236153* (x[41])^2+0.641004569212057*x[41]*x[51]+2.79412248118076*x[42]*x[41]-0.641004569212057*x[42]*x[50]-0.641004569212057*x[50]*x[42]-5.40924496236153* (x[50])^2+2.79412248118076*x[50]*x[51]+0.641004569212057*x[51]*x[41]+2.79412248118076*x[51]*x[50]+x[23] == 0.0)
@NLconstraint(m, e25, 2.79412248118076*x[41]*x[42]-0.641004569212057*x[41]*x[51]+2.79412248118076*x[42]*x[41]-5.40924496236153* (x[42])^2+0.641004569212057*x[42]*x[50]+0.641004569212057*x[50]*x[42]+2.79412248118076*x[50]*x[51]-0.641004569212057*x[51]*x[41]+2.79412248118076*x[51]*x[50]-5.40924496236153* (x[51])^2+x[24] == 0.0)
@NLconstraint(m, e26, 4.89213521318159*x[42]*x[43]-9.67977042636317* (x[42])^2+0.577543740445048*x[42]*x[52]+4.89213521318159*x[43]*x[42]-0.577543740445048*x[43]*x[51]-0.577543740445048*x[51]*x[43]-9.67977042636317* (x[51])^2+4.89213521318159*x[51]*x[52]+0.577543740445048*x[52]*x[42]+4.89213521318159*x[52]*x[51]+x[25] == 0.0)
@NLconstraint(m, e27, 4.89213521318159*x[42]*x[43]-0.577543740445048*x[42]*x[52]+4.89213521318159*x[43]*x[42]-9.67977042636317* (x[43])^2+0.577543740445048*x[43]*x[51]+0.577543740445048*x[51]*x[43]+4.89213521318159*x[51]*x[52]-0.577543740445048*x[52]*x[42]+4.89213521318159*x[52]*x[51]-9.67977042636317* (x[52])^2+x[26] == 0.0)
@NLconstraint(m, e28, 8*x[38]*x[44]+8*x[44]*x[38]-16* (x[44])^2+8*x[47]*x[53]+8*x[53]*x[47]-16* (x[53])^2+x[27] == 0.0)
@NLconstraint(m, e29, 8*x[38]*x[44]-16* (x[38])^2+8*x[44]*x[38]-16* (x[47])^2+8*x[47]*x[53]+8*x[53]*x[47]+x[28] == 0.0)
@NLconstraint(m, e30, 5.25534102593397*x[40]*x[41]-10.4316820518679* (x[40])^2+0.971095624357363*x[40]*x[50]+5.25534102593397*x[41]*x[40]-0.971095624357363*x[41]*x[49]-0.971095624357363*x[49]*x[41]-10.4316820518679* (x[49])^2+5.25534102593397*x[49]*x[50]+0.971095624357363*x[50]*x[40]+5.25534102593397*x[50]*x[49]+x[29] == 0.0)
@NLconstraint(m, e31, 5.25534102593397*x[40]*x[41]-0.971095624357363*x[40]*x[50]+5.25534102593397*x[41]*x[40]-10.4316820518679* (x[41])^2+0.971095624357363*x[41]*x[49]+0.971095624357363*x[49]*x[41]+5.25534102593397*x[49]*x[50]-0.971095624357363*x[50]*x[40]+5.25534102593397*x[50]*x[49]-10.4316820518679* (x[50])^2+x[30] == 0.0)
@NLconstraint(m, e32, 8.68055555555556*x[37]*x[40]-17.3611111111111* (x[37])^2+8.68055555555556*x[40]*x[37]-17.3611111111111* (x[46])^2+8.68055555555556*x[46]*x[49]+8.68055555555556*x[49]*x[46]+x[31] == 0.0)
@NLconstraint(m, e33, 8.68055555555556*x[37]*x[40]+8.68055555555556*x[40]*x[37]-17.3611111111111* (x[40])^2+8.68055555555556*x[46]*x[49]+8.68055555555556*x[49]*x[46]-17.3611111111111* (x[49])^2+x[32] == 0.0)
@NLconstraint(m, e34, 5.80204778156997*x[40]*x[45]-0.68259385665529*x[40]*x[54]+5.80204778156997*x[45]*x[40]-11.5160955631399* (x[45])^2+0.68259385665529*x[45]*x[49]+0.68259385665529*x[49]*x[45]+5.80204778156997*x[49]*x[54]-0.68259385665529*x[54]*x[40]+5.80204778156997*x[54]*x[49]-11.5160955631399* (x[54])^2+x[33] == 0.0)
@NLconstraint(m, e35, 5.80204778156997*x[40]*x[45]-11.5160955631399* (x[40])^2+0.68259385665529*x[40]*x[54]+5.80204778156997*x[45]*x[40]-0.68259385665529*x[45]*x[49]-0.68259385665529*x[49]*x[45]-11.5160955631399* (x[49])^2+5.80204778156997*x[49]*x[54]+0.68259385665529*x[54]*x[40]+5.80204778156997*x[54]*x[49]+x[34] == 0.0)
@NLconstraint(m, e36, 2.9875672666543*x[44]*x[45]-5.82213453330859* (x[44])^2+0.593802189645574*x[44]*x[54]+2.9875672666543*x[45]*x[44]-0.593802189645574*x[45]*x[53]-0.593802189645574*x[53]*x[45]-5.82213453330859* (x[53])^2+2.9875672666543*x[53]*x[54]+0.593802189645574*x[54]*x[44]+2.9875672666543*x[54]*x[53]+x[35] == 0.0)
@NLconstraint(m, e37, 2.9875672666543*x[44]*x[45]-0.593802189645574*x[44]*x[54]+2.9875672666543*x[45]*x[44]-5.82213453330859* (x[45])^2+0.593802189645574*x[45]*x[53]+0.593802189645574*x[53]*x[45]+2.9875672666543*x[53]*x[54]-0.593802189645574*x[54]*x[44]+2.9875672666543*x[54]*x[53]-5.82213453330859* (x[54])^2+x[36] == 0.0)
@NLconstraint(m, e38,  (x[1])^2+ (x[19])^2 <= 9.0)
@NLconstraint(m, e39,  (x[2])^2+ (x[20])^2 <= 9.0)
@NLconstraint(m, e40,  (x[3])^2+ (x[21])^2 <= 6.25)
@NLconstraint(m, e41,  (x[4])^2+ (x[22])^2 <= 6.25)
@NLconstraint(m, e42,  (x[5])^2+ (x[23])^2 <= 2.25)
@NLconstraint(m, e43,  (x[6])^2+ (x[24])^2 <= 2.25)
@NLconstraint(m, e44,  (x[7])^2+ (x[25])^2 <= 2.25)
@NLconstraint(m, e45,  (x[8])^2+ (x[26])^2 <= 2.25)
@NLconstraint(m, e46,  (x[9])^2+ (x[27])^2 <= 6.25)
@NLconstraint(m, e47,  (x[10])^2+ (x[28])^2 <= 6.25)
@NLconstraint(m, e48,  (x[11])^2+ (x[29])^2 <= 6.25)
@NLconstraint(m, e49,  (x[12])^2+ (x[30])^2 <= 6.25)
@NLconstraint(m, e50,  (x[13])^2+ (x[31])^2 <= 6.25)
@NLconstraint(m, e51,  (x[14])^2+ (x[32])^2 <= 6.25)
@NLconstraint(m, e52,  (x[15])^2+ (x[33])^2 <= 6.25)
@NLconstraint(m, e53,  (x[16])^2+ (x[34])^2 <= 6.25)
@NLconstraint(m, e54,  (x[17])^2+ (x[35])^2 <= 6.25)
@NLconstraint(m, e55,  (x[18])^2+ (x[36])^2 <= 6.25)
@NLconstraint(m, e56,  (x[37])^2+ (x[46])^2 <= 1.21)
@NLconstraint(m, e57,  (x[38])^2+ (x[47])^2 <= 1.21)
@NLconstraint(m, e58,  (x[39])^2+ (x[48])^2 <= 1.21)
@NLconstraint(m, e59,  (x[40])^2+ (x[49])^2 <= 1.21)
@NLconstraint(m, e60,  (x[41])^2+ (x[50])^2 <= 1.21)
@NLconstraint(m, e61,  (x[42])^2+ (x[51])^2 <= 1.21)
@NLconstraint(m, e62,  (x[43])^2+ (x[52])^2 <= 1.21)
@NLconstraint(m, e63,  (x[44])^2+ (x[53])^2 <= 1.21)
@NLconstraint(m, e64,  (x[45])^2+ (x[54])^2 <= 1.21)
@NLconstraint(m, e65,  (x[37])^2+ (x[46])^2 >= 0.81)
@NLconstraint(m, e66,  (x[38])^2+ (x[47])^2 >= 0.81)
@NLconstraint(m, e67,  (x[39])^2+ (x[48])^2 >= 0.81)
@NLconstraint(m, e68,  (x[40])^2+ (x[49])^2 >= 0.81)
@NLconstraint(m, e69,  (x[41])^2+ (x[50])^2 >= 0.81)
@NLconstraint(m, e70,  (x[42])^2+ (x[51])^2 >= 0.81)
@NLconstraint(m, e71,  (x[43])^2+ (x[52])^2 >= 0.81)
@NLconstraint(m, e72,  (x[44])^2+ (x[53])^2 >= 0.81)
@NLconstraint(m, e73,  (x[45])^2+ (x[54])^2 >= 0.81)
@constraint(m, e74, x[55] <= 2.5)
@constraint(m, e75, x[56] <= 3.0)
@constraint(m, e76, x[57] <= 2.7)
@constraint(m, e77, x[55] >= 0.1)
@constraint(m, e78, x[56] >= 0.1)
@constraint(m, e79, x[57] >= 0.1)
@constraint(m, e80, x[58] <= 3.0)
@constraint(m, e81, x[59] <= 3.0)
@constraint(m, e82, x[60] <= 3.0)
@constraint(m, e83, x[58] >= -3.0)
@constraint(m, e84, x[59] >= -3.0)
@constraint(m, e85, x[60] >= -3.0)
@constraint(m, e86, x[46] == 0.0)
@constraint(m, e87, x[13]-x[55] == 0.0)
@constraint(m, e88, x[10]-x[56] == 0.0)
@constraint(m, e89, x[1]-x[57] == 0.0)
@constraint(m, e90, x[31]-x[58] == 0.0)
@constraint(m, e91, x[28]-x[59] == 0.0)
@constraint(m, e92, x[19]-x[60] == 0.0)
@constraint(m, e93, x[11]+x[14]+x[16] == 0.0)
@constraint(m, e94, x[5]+x[12] == -0.9)
@constraint(m, e95, x[2]+x[6]+x[7] == 0.0)
@constraint(m, e96, x[3]+x[8] == -1.0)
@constraint(m, e97, x[4]+x[9]+x[17] == 0.0)
@constraint(m, e98, x[15]+x[18] == -1.25)
@constraint(m, e99, x[29]+x[32]+x[34] == 0.0)
@constraint(m, e100, x[23]+x[30] == -0.3)
@constraint(m, e101, x[20]+x[24]+x[25] == 0.0)
@constraint(m, e102, x[21]+x[26] == -0.35)
@constraint(m, e103, x[22]+x[27]+x[35] == 0.0)
@constraint(m, e104, x[33]+x[36] == -0.5)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 