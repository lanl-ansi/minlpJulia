using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72]
@variable(m, b[b_Idx], Bin)
x_Idx = Any[74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183]
@variable(m, x[x_Idx])
setlowerbound(x[146], 2.0)
setupperbound(x[146], 8.0)
setlowerbound(x[147], 2.0)
setupperbound(x[147], 8.0)
setlowerbound(x[148], 2.0)
setupperbound(x[148], 8.0)
setlowerbound(x[149], 3.0)
setupperbound(x[149], 12.0)
setlowerbound(x[150], 3.0)
setupperbound(x[150], 12.0)
setlowerbound(x[151], 1.5)
setupperbound(x[151], 6.0)
setlowerbound(x[152], 1.5)
setupperbound(x[152], 6.0)
setlowerbound(x[153], 1.5)
setupperbound(x[153], 6.0)
setlowerbound(x[154], 1.5)
setupperbound(x[154], 6.0)
setlowerbound(x[155], 12.0)
setupperbound(x[155], 12.0)
setlowerbound(x[156], 2.0)
setupperbound(x[156], 8.0)
setlowerbound(x[157], 2.0)
setupperbound(x[157], 8.0)
setlowerbound(x[158], 2.0)
setupperbound(x[158], 8.0)
setlowerbound(x[159], 3.0)
setupperbound(x[159], 12.0)
setlowerbound(x[160], 3.0)
setupperbound(x[160], 12.0)
setlowerbound(x[161], 1.5)
setupperbound(x[161], 6.0)
setlowerbound(x[162], 1.5)
setupperbound(x[162], 6.0)
setlowerbound(x[163], 1.5)
setupperbound(x[163], 6.0)
setlowerbound(x[164], 1.5)
setupperbound(x[164], 6.0)
setlowerbound(x[165], 13.0)
setupperbound(x[165], 13.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-x[74]-x[75]-x[90]-x[91]-x[104]-x[105]-x[116]-x[117]-x[126]-x[127]-x[134]-x[135]-x[140]-x[141]-x[144]-x[145] == 0.0)
@constraint(m, e2, x[166]-x[167] <= 0.0)
@constraint(m, e3, 0.5*x[146]-x[155]+x[166] <= 0.0)
@constraint(m, e4, 0.5*x[146]-x[166] <= 0.0)
@constraint(m, e5, 0.5*x[156]-x[165]+x[175] <= 0.0)
@constraint(m, e6, 0.5*x[156]-x[175] <= 0.0)
@constraint(m, e7, 0.5*x[147]-x[155]+x[167] <= 0.0)
@constraint(m, e8, 0.5*x[147]-x[167] <= 0.0)
@constraint(m, e9, 0.5*x[157]-x[165]+x[176] <= 0.0)
@constraint(m, e10, 0.5*x[157]-x[176] <= 0.0)
@constraint(m, e11, 0.5*x[148]-x[155]+x[168] <= 0.0)
@constraint(m, e12, 0.5*x[148]-x[168] <= 0.0)
@constraint(m, e13, 0.5*x[158]-x[165]+x[177] <= 0.0)
@constraint(m, e14, 0.5*x[158]-x[177] <= 0.0)
@constraint(m, e15, 0.5*x[149]-x[155]+x[169] <= 0.0)
@constraint(m, e16, 0.5*x[149]-x[169] <= 0.0)
@constraint(m, e17, 0.5*x[159]-x[165]+x[178] <= 0.0)
@constraint(m, e18, 0.5*x[159]-x[178] <= 0.0)
@constraint(m, e19, 0.5*x[150]-x[155]+x[170] <= 0.0)
@constraint(m, e20, 0.5*x[150]-x[170] <= 0.0)
@constraint(m, e21, 0.5*x[160]-x[165]+x[179] <= 0.0)
@constraint(m, e22, 0.5*x[160]-x[179] <= 0.0)
@constraint(m, e23, 0.5*x[151]-x[155]+x[171] <= 0.0)
@constraint(m, e24, 0.5*x[151]-x[171] <= 0.0)
@constraint(m, e25, 0.5*x[161]-x[165]+x[180] <= 0.0)
@constraint(m, e26, 0.5*x[161]-x[180] <= 0.0)
@constraint(m, e27, 0.5*x[152]-x[155]+x[172] <= 0.0)
@constraint(m, e28, 0.5*x[152]-x[172] <= 0.0)
@constraint(m, e29, 0.5*x[162]-x[165]+x[181] <= 0.0)
@constraint(m, e30, 0.5*x[162]-x[181] <= 0.0)
@constraint(m, e31, 0.5*x[153]-x[155]+x[173] <= 0.0)
@constraint(m, e32, 0.5*x[153]-x[173] <= 0.0)
@constraint(m, e33, 0.5*x[163]-x[165]+x[182] <= 0.0)
@constraint(m, e34, 0.5*x[163]-x[182] <= 0.0)
@constraint(m, e35, 0.5*x[154]-x[155]+x[174] <= 0.0)
@constraint(m, e36, 0.5*x[154]-x[174] <= 0.0)
@constraint(m, e37, 0.5*x[164]-x[165]+x[183] <= 0.0)
@constraint(m, e38, 0.5*x[164]-x[183] <= 0.0)
@constraint(m, e39, -x[74]+x[166]-x[167] <= 0.0)
@constraint(m, e40, -x[74]-x[166]+x[167] <= 0.0)
@constraint(m, e41, -x[75]+x[175]-x[176] <= 0.0)
@constraint(m, e42, -x[75]-x[175]+x[176] <= 0.0)
@constraint(m, e43, -12*b[1]-12*b[2]+0.5*x[146]+0.5*x[147]-x[166]+x[167] <= 0.0)
@constraint(m, e44, -12*b[1]+12*b[2]+0.5*x[146]+0.5*x[147]+x[166]-x[167] <= 12.0)
@constraint(m, e45, 13*b[1]-13*b[2]+0.5*x[156]+0.5*x[157]-x[175]+x[176] <= 13.0)
@constraint(m, e46, 13*b[1]+13*b[2]+0.5*x[156]+0.5*x[157]+x[175]-x[176] <= 26.0)
@constraint(m, e47, -x[76]+x[166]-x[168] <= 0.0)
@constraint(m, e48, -x[76]-x[166]+x[168] <= 0.0)
@constraint(m, e49, -x[77]+x[175]-x[177] <= 0.0)
@constraint(m, e50, -x[77]-x[175]+x[177] <= 0.0)
@constraint(m, e51, -12*b[3]-12*b[4]+0.5*x[146]+0.5*x[148]-x[166]+x[168] <= 0.0)
@constraint(m, e52, -12*b[3]+12*b[4]+0.5*x[146]+0.5*x[148]+x[166]-x[168] <= 12.0)
@constraint(m, e53, 13*b[3]-13*b[4]+0.5*x[156]+0.5*x[158]-x[175]+x[177] <= 13.0)
@constraint(m, e54, 13*b[3]+13*b[4]+0.5*x[156]+0.5*x[158]+x[175]-x[177] <= 26.0)
@constraint(m, e55, -x[78]+x[166]-x[169] <= 0.0)
@constraint(m, e56, -x[78]-x[166]+x[169] <= 0.0)
@constraint(m, e57, -x[79]+x[175]-x[178] <= 0.0)
@constraint(m, e58, -x[79]-x[175]+x[178] <= 0.0)
@constraint(m, e59, -12*b[5]-12*b[6]+0.5*x[146]+0.5*x[149]-x[166]+x[169] <= 0.0)
@constraint(m, e60, -12*b[5]+12*b[6]+0.5*x[146]+0.5*x[149]+x[166]-x[169] <= 12.0)
@constraint(m, e61, 13*b[5]-13*b[6]+0.5*x[156]+0.5*x[159]-x[175]+x[178] <= 13.0)
@constraint(m, e62, 13*b[5]+13*b[6]+0.5*x[156]+0.5*x[159]+x[175]-x[178] <= 26.0)
@constraint(m, e63, -x[80]+x[166]-x[170] <= 0.0)
@constraint(m, e64, -x[80]-x[166]+x[170] <= 0.0)
@constraint(m, e65, -x[81]+x[175]-x[179] <= 0.0)
@constraint(m, e66, -x[81]-x[175]+x[179] <= 0.0)
@constraint(m, e67, -12*b[7]-12*b[8]+0.5*x[146]+0.5*x[150]-x[166]+x[170] <= 0.0)
@constraint(m, e68, -12*b[7]+12*b[8]+0.5*x[146]+0.5*x[150]+x[166]-x[170] <= 12.0)
@constraint(m, e69, 13*b[7]-13*b[8]+0.5*x[156]+0.5*x[160]-x[175]+x[179] <= 13.0)
@constraint(m, e70, 13*b[7]+13*b[8]+0.5*x[156]+0.5*x[160]+x[175]-x[179] <= 26.0)
@constraint(m, e71, -x[82]+x[166]-x[171] <= 0.0)
@constraint(m, e72, -x[82]-x[166]+x[171] <= 0.0)
@constraint(m, e73, -x[83]+x[175]-x[180] <= 0.0)
@constraint(m, e74, -x[83]-x[175]+x[180] <= 0.0)
@constraint(m, e75, -12*b[9]-12*b[10]+0.5*x[146]+0.5*x[151]-x[166]+x[171] <= 0.0)
@constraint(m, e76, -12*b[9]+12*b[10]+0.5*x[146]+0.5*x[151]+x[166]-x[171] <= 12.0)
@constraint(m, e77, 13*b[9]-13*b[10]+0.5*x[156]+0.5*x[161]-x[175]+x[180] <= 13.0)
@constraint(m, e78, 13*b[9]+13*b[10]+0.5*x[156]+0.5*x[161]+x[175]-x[180] <= 26.0)
@constraint(m, e79, -x[84]+x[166]-x[172] <= 0.0)
@constraint(m, e80, -x[84]-x[166]+x[172] <= 0.0)
@constraint(m, e81, -x[85]+x[175]-x[181] <= 0.0)
@constraint(m, e82, -x[85]-x[175]+x[181] <= 0.0)
@constraint(m, e83, -12*b[11]-12*b[12]+0.5*x[146]+0.5*x[152]-x[166]+x[172] <= 0.0)
@constraint(m, e84, -12*b[11]+12*b[12]+0.5*x[146]+0.5*x[152]+x[166]-x[172] <= 12.0)
@constraint(m, e85, 13*b[11]-13*b[12]+0.5*x[156]+0.5*x[162]-x[175]+x[181] <= 13.0)
@constraint(m, e86, 13*b[11]+13*b[12]+0.5*x[156]+0.5*x[162]+x[175]-x[181] <= 26.0)
@constraint(m, e87, -x[86]+x[166]-x[173] <= 0.0)
@constraint(m, e88, -x[86]-x[166]+x[173] <= 0.0)
@constraint(m, e89, -x[87]+x[175]-x[182] <= 0.0)
@constraint(m, e90, -x[87]-x[175]+x[182] <= 0.0)
@constraint(m, e91, -12*b[13]-12*b[14]+0.5*x[146]+0.5*x[153]-x[166]+x[173] <= 0.0)
@constraint(m, e92, -12*b[13]+12*b[14]+0.5*x[146]+0.5*x[153]+x[166]-x[173] <= 12.0)
@constraint(m, e93, 13*b[13]-13*b[14]+0.5*x[156]+0.5*x[163]-x[175]+x[182] <= 13.0)
@constraint(m, e94, 13*b[13]+13*b[14]+0.5*x[156]+0.5*x[163]+x[175]-x[182] <= 26.0)
@constraint(m, e95, -x[88]+x[166]-x[174] <= 0.0)
@constraint(m, e96, -x[88]-x[166]+x[174] <= 0.0)
@constraint(m, e97, -x[89]+x[175]-x[183] <= 0.0)
@constraint(m, e98, -x[89]-x[175]+x[183] <= 0.0)
@constraint(m, e99, -12*b[15]-12*b[16]+0.5*x[146]+0.5*x[154]-x[166]+x[174] <= 0.0)
@constraint(m, e100, -12*b[15]+12*b[16]+0.5*x[146]+0.5*x[154]+x[166]-x[174] <= 12.0)
@constraint(m, e101, 13*b[15]-13*b[16]+0.5*x[156]+0.5*x[164]-x[175]+x[183] <= 13.0)
@constraint(m, e102, 13*b[15]+13*b[16]+0.5*x[156]+0.5*x[164]+x[175]-x[183] <= 26.0)
@constraint(m, e103, -x[90]+x[167]-x[168] <= 0.0)
@constraint(m, e104, -x[90]-x[167]+x[168] <= 0.0)
@constraint(m, e105, -x[91]+x[176]-x[177] <= 0.0)
@constraint(m, e106, -x[91]-x[176]+x[177] <= 0.0)
@constraint(m, e107, -12*b[17]-12*b[18]+0.5*x[147]+0.5*x[148]-x[167]+x[168] <= 0.0)
@constraint(m, e108, -12*b[17]+12*b[18]+0.5*x[147]+0.5*x[148]+x[167]-x[168] <= 12.0)
@constraint(m, e109, 13*b[17]-13*b[18]+0.5*x[157]+0.5*x[158]-x[176]+x[177] <= 13.0)
@constraint(m, e110, 13*b[17]+13*b[18]+0.5*x[157]+0.5*x[158]+x[176]-x[177] <= 26.0)
@constraint(m, e111, -x[92]+x[167]-x[169] <= 0.0)
@constraint(m, e112, -x[92]-x[167]+x[169] <= 0.0)
@constraint(m, e113, -x[93]+x[176]-x[178] <= 0.0)
@constraint(m, e114, -x[93]-x[176]+x[178] <= 0.0)
@constraint(m, e115, -12*b[19]-12*b[20]+0.5*x[147]+0.5*x[149]-x[167]+x[169] <= 0.0)
@constraint(m, e116, -12*b[19]+12*b[20]+0.5*x[147]+0.5*x[149]+x[167]-x[169] <= 12.0)
@constraint(m, e117, 13*b[19]-13*b[20]+0.5*x[157]+0.5*x[159]-x[176]+x[178] <= 13.0)
@constraint(m, e118, 13*b[19]+13*b[20]+0.5*x[157]+0.5*x[159]+x[176]-x[178] <= 26.0)
@constraint(m, e119, -x[94]+x[167]-x[170] <= 0.0)
@constraint(m, e120, -x[94]-x[167]+x[170] <= 0.0)
@constraint(m, e121, -x[95]+x[176]-x[179] <= 0.0)
@constraint(m, e122, -x[95]-x[176]+x[179] <= 0.0)
@constraint(m, e123, -12*b[21]-12*b[22]+0.5*x[147]+0.5*x[150]-x[167]+x[170] <= 0.0)
@constraint(m, e124, -12*b[21]+12*b[22]+0.5*x[147]+0.5*x[150]+x[167]-x[170] <= 12.0)
@constraint(m, e125, 13*b[21]-13*b[22]+0.5*x[157]+0.5*x[160]-x[176]+x[179] <= 13.0)
@constraint(m, e126, 13*b[21]+13*b[22]+0.5*x[157]+0.5*x[160]+x[176]-x[179] <= 26.0)
@constraint(m, e127, -x[96]+x[167]-x[171] <= 0.0)
@constraint(m, e128, -x[96]-x[167]+x[171] <= 0.0)
@constraint(m, e129, -x[97]+x[176]-x[180] <= 0.0)
@constraint(m, e130, -x[97]-x[176]+x[180] <= 0.0)
@constraint(m, e131, -12*b[23]-12*b[24]+0.5*x[147]+0.5*x[151]-x[167]+x[171] <= 0.0)
@constraint(m, e132, -12*b[23]+12*b[24]+0.5*x[147]+0.5*x[151]+x[167]-x[171] <= 12.0)
@constraint(m, e133, 13*b[23]-13*b[24]+0.5*x[157]+0.5*x[161]-x[176]+x[180] <= 13.0)
@constraint(m, e134, 13*b[23]+13*b[24]+0.5*x[157]+0.5*x[161]+x[176]-x[180] <= 26.0)
@constraint(m, e135, -x[98]+x[167]-x[172] <= 0.0)
@constraint(m, e136, -x[98]-x[167]+x[172] <= 0.0)
@constraint(m, e137, -x[99]+x[176]-x[181] <= 0.0)
@constraint(m, e138, -x[99]-x[176]+x[181] <= 0.0)
@constraint(m, e139, -12*b[25]-12*b[26]+0.5*x[147]+0.5*x[152]-x[167]+x[172] <= 0.0)
@constraint(m, e140, -12*b[25]+12*b[26]+0.5*x[147]+0.5*x[152]+x[167]-x[172] <= 12.0)
@constraint(m, e141, 13*b[25]-13*b[26]+0.5*x[157]+0.5*x[162]-x[176]+x[181] <= 13.0)
@constraint(m, e142, 13*b[25]+13*b[26]+0.5*x[157]+0.5*x[162]+x[176]-x[181] <= 26.0)
@constraint(m, e143, -x[100]+x[167]-x[173] <= 0.0)
@constraint(m, e144, -x[100]-x[167]+x[173] <= 0.0)
@constraint(m, e145, -x[101]+x[176]-x[182] <= 0.0)
@constraint(m, e146, -x[101]-x[176]+x[182] <= 0.0)
@constraint(m, e147, -12*b[27]-12*b[28]+0.5*x[147]+0.5*x[153]-x[167]+x[173] <= 0.0)
@constraint(m, e148, -12*b[27]+12*b[28]+0.5*x[147]+0.5*x[153]+x[167]-x[173] <= 12.0)
@constraint(m, e149, 13*b[27]-13*b[28]+0.5*x[157]+0.5*x[163]-x[176]+x[182] <= 13.0)
@constraint(m, e150, 13*b[27]+13*b[28]+0.5*x[157]+0.5*x[163]+x[176]-x[182] <= 26.0)
@constraint(m, e151, -x[102]+x[167]-x[174] <= 0.0)
@constraint(m, e152, -x[102]-x[167]+x[174] <= 0.0)
@constraint(m, e153, -x[103]+x[176]-x[183] <= 0.0)
@constraint(m, e154, -x[103]-x[176]+x[183] <= 0.0)
@constraint(m, e155, -12*b[29]-12*b[30]+0.5*x[147]+0.5*x[154]-x[167]+x[174] <= 0.0)
@constraint(m, e156, -12*b[29]+12*b[30]+0.5*x[147]+0.5*x[154]+x[167]-x[174] <= 12.0)
@constraint(m, e157, 13*b[29]-13*b[30]+0.5*x[157]+0.5*x[164]-x[176]+x[183] <= 13.0)
@constraint(m, e158, 13*b[29]+13*b[30]+0.5*x[157]+0.5*x[164]+x[176]-x[183] <= 26.0)
@constraint(m, e159, -x[104]+x[168]-x[169] <= 0.0)
@constraint(m, e160, -x[104]-x[168]+x[169] <= 0.0)
@constraint(m, e161, -x[105]+x[177]-x[178] <= 0.0)
@constraint(m, e162, -x[105]-x[177]+x[178] <= 0.0)
@constraint(m, e163, -12*b[31]-12*b[32]+0.5*x[148]+0.5*x[149]-x[168]+x[169] <= 0.0)
@constraint(m, e164, -12*b[31]+12*b[32]+0.5*x[148]+0.5*x[149]+x[168]-x[169] <= 12.0)
@constraint(m, e165, 13*b[31]-13*b[32]+0.5*x[158]+0.5*x[159]-x[177]+x[178] <= 13.0)
@constraint(m, e166, 13*b[31]+13*b[32]+0.5*x[158]+0.5*x[159]+x[177]-x[178] <= 26.0)
@constraint(m, e167, -x[106]+x[168]-x[170] <= 0.0)
@constraint(m, e168, -x[106]-x[168]+x[170] <= 0.0)
@constraint(m, e169, -x[107]+x[177]-x[179] <= 0.0)
@constraint(m, e170, -x[107]-x[177]+x[179] <= 0.0)
@constraint(m, e171, -12*b[33]-12*b[34]+0.5*x[148]+0.5*x[150]-x[168]+x[170] <= 0.0)
@constraint(m, e172, -12*b[33]+12*b[34]+0.5*x[148]+0.5*x[150]+x[168]-x[170] <= 12.0)
@constraint(m, e173, 13*b[33]-13*b[34]+0.5*x[158]+0.5*x[160]-x[177]+x[179] <= 13.0)
@constraint(m, e174, 13*b[33]+13*b[34]+0.5*x[158]+0.5*x[160]+x[177]-x[179] <= 26.0)
@constraint(m, e175, -x[108]+x[168]-x[171] <= 0.0)
@constraint(m, e176, -x[108]-x[168]+x[171] <= 0.0)
@constraint(m, e177, -x[109]+x[177]-x[180] <= 0.0)
@constraint(m, e178, -x[109]-x[177]+x[180] <= 0.0)
@constraint(m, e179, -12*b[35]-12*b[36]+0.5*x[148]+0.5*x[151]-x[168]+x[171] <= 0.0)
@constraint(m, e180, -12*b[35]+12*b[36]+0.5*x[148]+0.5*x[151]+x[168]-x[171] <= 12.0)
@constraint(m, e181, 13*b[35]-13*b[36]+0.5*x[158]+0.5*x[161]-x[177]+x[180] <= 13.0)
@constraint(m, e182, 13*b[35]+13*b[36]+0.5*x[158]+0.5*x[161]+x[177]-x[180] <= 26.0)
@constraint(m, e183, -x[110]+x[168]-x[172] <= 0.0)
@constraint(m, e184, -x[110]-x[168]+x[172] <= 0.0)
@constraint(m, e185, -x[111]+x[177]-x[181] <= 0.0)
@constraint(m, e186, -x[111]-x[177]+x[181] <= 0.0)
@constraint(m, e187, -12*b[37]-12*b[38]+0.5*x[148]+0.5*x[152]-x[168]+x[172] <= 0.0)
@constraint(m, e188, -12*b[37]+12*b[38]+0.5*x[148]+0.5*x[152]+x[168]-x[172] <= 12.0)
@constraint(m, e189, 13*b[37]-13*b[38]+0.5*x[158]+0.5*x[162]-x[177]+x[181] <= 13.0)
@constraint(m, e190, 13*b[37]+13*b[38]+0.5*x[158]+0.5*x[162]+x[177]-x[181] <= 26.0)
@constraint(m, e191, -x[112]+x[168]-x[173] <= 0.0)
@constraint(m, e192, -x[112]-x[168]+x[173] <= 0.0)
@constraint(m, e193, -x[113]+x[177]-x[182] <= 0.0)
@constraint(m, e194, -x[113]-x[177]+x[182] <= 0.0)
@constraint(m, e195, -12*b[39]-12*b[40]+0.5*x[148]+0.5*x[153]-x[168]+x[173] <= 0.0)
@constraint(m, e196, -12*b[39]+12*b[40]+0.5*x[148]+0.5*x[153]+x[168]-x[173] <= 12.0)
@constraint(m, e197, 13*b[39]-13*b[40]+0.5*x[158]+0.5*x[163]-x[177]+x[182] <= 13.0)
@constraint(m, e198, 13*b[39]+13*b[40]+0.5*x[158]+0.5*x[163]+x[177]-x[182] <= 26.0)
@constraint(m, e199, -x[114]+x[168]-x[174] <= 0.0)
@constraint(m, e200, -x[114]-x[168]+x[174] <= 0.0)
@constraint(m, e201, -x[115]+x[177]-x[183] <= 0.0)
@constraint(m, e202, -x[115]-x[177]+x[183] <= 0.0)
@constraint(m, e203, -12*b[41]-12*b[42]+0.5*x[148]+0.5*x[154]-x[168]+x[174] <= 0.0)
@constraint(m, e204, -12*b[41]+12*b[42]+0.5*x[148]+0.5*x[154]+x[168]-x[174] <= 12.0)
@constraint(m, e205, 13*b[41]-13*b[42]+0.5*x[158]+0.5*x[164]-x[177]+x[183] <= 13.0)
@constraint(m, e206, 13*b[41]+13*b[42]+0.5*x[158]+0.5*x[164]+x[177]-x[183] <= 26.0)
@constraint(m, e207, -x[116]+x[169]-x[170] <= 0.0)
@constraint(m, e208, -x[116]-x[169]+x[170] <= 0.0)
@constraint(m, e209, -x[117]+x[178]-x[179] <= 0.0)
@constraint(m, e210, -x[117]-x[178]+x[179] <= 0.0)
@constraint(m, e211, -12*b[43]-12*b[44]+0.5*x[149]+0.5*x[150]-x[169]+x[170] <= 0.0)
@constraint(m, e212, -12*b[43]+12*b[44]+0.5*x[149]+0.5*x[150]+x[169]-x[170] <= 12.0)
@constraint(m, e213, 13*b[43]-13*b[44]+0.5*x[159]+0.5*x[160]-x[178]+x[179] <= 13.0)
@constraint(m, e214, 13*b[43]+13*b[44]+0.5*x[159]+0.5*x[160]+x[178]-x[179] <= 26.0)
@constraint(m, e215, -x[118]+x[169]-x[171] <= 0.0)
@constraint(m, e216, -x[118]-x[169]+x[171] <= 0.0)
@constraint(m, e217, -x[119]+x[178]-x[180] <= 0.0)
@constraint(m, e218, -x[119]-x[178]+x[180] <= 0.0)
@constraint(m, e219, -12*b[45]-12*b[46]+0.5*x[149]+0.5*x[151]-x[169]+x[171] <= 0.0)
@constraint(m, e220, -12*b[45]+12*b[46]+0.5*x[149]+0.5*x[151]+x[169]-x[171] <= 12.0)
@constraint(m, e221, 13*b[45]-13*b[46]+0.5*x[159]+0.5*x[161]-x[178]+x[180] <= 13.0)
@constraint(m, e222, 13*b[45]+13*b[46]+0.5*x[159]+0.5*x[161]+x[178]-x[180] <= 26.0)
@constraint(m, e223, -x[120]+x[169]-x[172] <= 0.0)
@constraint(m, e224, -x[120]-x[169]+x[172] <= 0.0)
@constraint(m, e225, -x[121]+x[178]-x[181] <= 0.0)
@constraint(m, e226, -x[121]-x[178]+x[181] <= 0.0)
@constraint(m, e227, -12*b[47]-12*b[48]+0.5*x[149]+0.5*x[152]-x[169]+x[172] <= 0.0)
@constraint(m, e228, -12*b[47]+12*b[48]+0.5*x[149]+0.5*x[152]+x[169]-x[172] <= 12.0)
@constraint(m, e229, 13*b[47]-13*b[48]+0.5*x[159]+0.5*x[162]-x[178]+x[181] <= 13.0)
@constraint(m, e230, 13*b[47]+13*b[48]+0.5*x[159]+0.5*x[162]+x[178]-x[181] <= 26.0)
@constraint(m, e231, -x[122]+x[169]-x[173] <= 0.0)
@constraint(m, e232, -x[122]-x[169]+x[173] <= 0.0)
@constraint(m, e233, -x[123]+x[178]-x[182] <= 0.0)
@constraint(m, e234, -x[123]-x[178]+x[182] <= 0.0)
@constraint(m, e235, -12*b[49]-12*b[50]+0.5*x[149]+0.5*x[153]-x[169]+x[173] <= 0.0)
@constraint(m, e236, -12*b[49]+12*b[50]+0.5*x[149]+0.5*x[153]+x[169]-x[173] <= 12.0)
@constraint(m, e237, 13*b[49]-13*b[50]+0.5*x[159]+0.5*x[163]-x[178]+x[182] <= 13.0)
@constraint(m, e238, 13*b[49]+13*b[50]+0.5*x[159]+0.5*x[163]+x[178]-x[182] <= 26.0)
@constraint(m, e239, -x[124]+x[169]-x[174] <= 0.0)
@constraint(m, e240, -x[124]-x[169]+x[174] <= 0.0)
@constraint(m, e241, -x[125]+x[178]-x[183] <= 0.0)
@constraint(m, e242, -x[125]-x[178]+x[183] <= 0.0)
@constraint(m, e243, -12*b[51]-12*b[52]+0.5*x[149]+0.5*x[154]-x[169]+x[174] <= 0.0)
@constraint(m, e244, -12*b[51]+12*b[52]+0.5*x[149]+0.5*x[154]+x[169]-x[174] <= 12.0)
@constraint(m, e245, 13*b[51]-13*b[52]+0.5*x[159]+0.5*x[164]-x[178]+x[183] <= 13.0)
@constraint(m, e246, 13*b[51]+13*b[52]+0.5*x[159]+0.5*x[164]+x[178]-x[183] <= 26.0)
@constraint(m, e247, -x[126]+x[170]-x[171] <= 0.0)
@constraint(m, e248, -x[126]-x[170]+x[171] <= 0.0)
@constraint(m, e249, -x[127]+x[179]-x[180] <= 0.0)
@constraint(m, e250, -x[127]-x[179]+x[180] <= 0.0)
@constraint(m, e251, -12*b[53]-12*b[54]+0.5*x[150]+0.5*x[151]-x[170]+x[171] <= 0.0)
@constraint(m, e252, -12*b[53]+12*b[54]+0.5*x[150]+0.5*x[151]+x[170]-x[171] <= 12.0)
@constraint(m, e253, 13*b[53]-13*b[54]+0.5*x[160]+0.5*x[161]-x[179]+x[180] <= 13.0)
@constraint(m, e254, 13*b[53]+13*b[54]+0.5*x[160]+0.5*x[161]+x[179]-x[180] <= 26.0)
@constraint(m, e255, -x[128]+x[170]-x[172] <= 0.0)
@constraint(m, e256, -x[128]-x[170]+x[172] <= 0.0)
@constraint(m, e257, -x[129]+x[179]-x[181] <= 0.0)
@constraint(m, e258, -x[129]-x[179]+x[181] <= 0.0)
@constraint(m, e259, -12*b[55]-12*b[56]+0.5*x[150]+0.5*x[152]-x[170]+x[172] <= 0.0)
@constraint(m, e260, -12*b[55]+12*b[56]+0.5*x[150]+0.5*x[152]+x[170]-x[172] <= 12.0)
@constraint(m, e261, 13*b[55]-13*b[56]+0.5*x[160]+0.5*x[162]-x[179]+x[181] <= 13.0)
@constraint(m, e262, 13*b[55]+13*b[56]+0.5*x[160]+0.5*x[162]+x[179]-x[181] <= 26.0)
@constraint(m, e263, -x[130]+x[170]-x[173] <= 0.0)
@constraint(m, e264, -x[130]-x[170]+x[173] <= 0.0)
@constraint(m, e265, -x[131]+x[179]-x[182] <= 0.0)
@constraint(m, e266, -x[131]-x[179]+x[182] <= 0.0)
@constraint(m, e267, -12*b[57]-12*b[58]+0.5*x[150]+0.5*x[153]-x[170]+x[173] <= 0.0)
@constraint(m, e268, -12*b[57]+12*b[58]+0.5*x[150]+0.5*x[153]+x[170]-x[173] <= 12.0)
@constraint(m, e269, 13*b[57]-13*b[58]+0.5*x[160]+0.5*x[163]-x[179]+x[182] <= 13.0)
@constraint(m, e270, 13*b[57]+13*b[58]+0.5*x[160]+0.5*x[163]+x[179]-x[182] <= 26.0)
@constraint(m, e271, -x[132]+x[170]-x[174] <= 0.0)
@constraint(m, e272, -x[132]-x[170]+x[174] <= 0.0)
@constraint(m, e273, -x[133]+x[179]-x[183] <= 0.0)
@constraint(m, e274, -x[133]-x[179]+x[183] <= 0.0)
@constraint(m, e275, -12*b[59]-12*b[60]+0.5*x[150]+0.5*x[154]-x[170]+x[174] <= 0.0)
@constraint(m, e276, -12*b[59]+12*b[60]+0.5*x[150]+0.5*x[154]+x[170]-x[174] <= 12.0)
@constraint(m, e277, 13*b[59]-13*b[60]+0.5*x[160]+0.5*x[164]-x[179]+x[183] <= 13.0)
@constraint(m, e278, 13*b[59]+13*b[60]+0.5*x[160]+0.5*x[164]+x[179]-x[183] <= 26.0)
@constraint(m, e279, -x[134]+x[171]-x[172] <= 0.0)
@constraint(m, e280, -x[134]-x[171]+x[172] <= 0.0)
@constraint(m, e281, -x[135]+x[180]-x[181] <= 0.0)
@constraint(m, e282, -x[135]-x[180]+x[181] <= 0.0)
@constraint(m, e283, -12*b[61]-12*b[62]+0.5*x[151]+0.5*x[152]-x[171]+x[172] <= 0.0)
@constraint(m, e284, -12*b[61]+12*b[62]+0.5*x[151]+0.5*x[152]+x[171]-x[172] <= 12.0)
@constraint(m, e285, 13*b[61]-13*b[62]+0.5*x[161]+0.5*x[162]-x[180]+x[181] <= 13.0)
@constraint(m, e286, 13*b[61]+13*b[62]+0.5*x[161]+0.5*x[162]+x[180]-x[181] <= 26.0)
@constraint(m, e287, -x[136]+x[171]-x[173] <= 0.0)
@constraint(m, e288, -x[136]-x[171]+x[173] <= 0.0)
@constraint(m, e289, -x[137]+x[180]-x[182] <= 0.0)
@constraint(m, e290, -x[137]-x[180]+x[182] <= 0.0)
@constraint(m, e291, -12*b[63]-12*b[64]+0.5*x[151]+0.5*x[153]-x[171]+x[173] <= 0.0)
@constraint(m, e292, -12*b[63]+12*b[64]+0.5*x[151]+0.5*x[153]+x[171]-x[173] <= 12.0)
@constraint(m, e293, 13*b[63]-13*b[64]+0.5*x[161]+0.5*x[163]-x[180]+x[182] <= 13.0)
@constraint(m, e294, 13*b[63]+13*b[64]+0.5*x[161]+0.5*x[163]+x[180]-x[182] <= 26.0)
@constraint(m, e295, -x[138]+x[171]-x[174] <= 0.0)
@constraint(m, e296, -x[138]-x[171]+x[174] <= 0.0)
@constraint(m, e297, -x[139]+x[180]-x[183] <= 0.0)
@constraint(m, e298, -x[139]-x[180]+x[183] <= 0.0)
@constraint(m, e299, -12*b[65]-12*b[66]+0.5*x[151]+0.5*x[154]-x[171]+x[174] <= 0.0)
@constraint(m, e300, -12*b[65]+12*b[66]+0.5*x[151]+0.5*x[154]+x[171]-x[174] <= 12.0)
@constraint(m, e301, 13*b[65]-13*b[66]+0.5*x[161]+0.5*x[164]-x[180]+x[183] <= 13.0)
@constraint(m, e302, 13*b[65]+13*b[66]+0.5*x[161]+0.5*x[164]+x[180]-x[183] <= 26.0)
@constraint(m, e303, -x[140]+x[172]-x[173] <= 0.0)
@constraint(m, e304, -x[140]-x[172]+x[173] <= 0.0)
@constraint(m, e305, -x[141]+x[181]-x[182] <= 0.0)
@constraint(m, e306, -x[141]-x[181]+x[182] <= 0.0)
@constraint(m, e307, -12*b[67]-12*b[68]+0.5*x[152]+0.5*x[153]-x[172]+x[173] <= 0.0)
@constraint(m, e308, -12*b[67]+12*b[68]+0.5*x[152]+0.5*x[153]+x[172]-x[173] <= 12.0)
@constraint(m, e309, 13*b[67]-13*b[68]+0.5*x[162]+0.5*x[163]-x[181]+x[182] <= 13.0)
@constraint(m, e310, 13*b[67]+13*b[68]+0.5*x[162]+0.5*x[163]+x[181]-x[182] <= 26.0)
@constraint(m, e311, -x[142]+x[172]-x[174] <= 0.0)
@constraint(m, e312, -x[142]-x[172]+x[174] <= 0.0)
@constraint(m, e313, -x[143]+x[181]-x[183] <= 0.0)
@constraint(m, e314, -x[143]-x[181]+x[183] <= 0.0)
@constraint(m, e315, -12*b[69]-12*b[70]+0.5*x[152]+0.5*x[154]-x[172]+x[174] <= 0.0)
@constraint(m, e316, -12*b[69]+12*b[70]+0.5*x[152]+0.5*x[154]+x[172]-x[174] <= 12.0)
@constraint(m, e317, 13*b[69]-13*b[70]+0.5*x[162]+0.5*x[164]-x[181]+x[183] <= 13.0)
@constraint(m, e318, 13*b[69]+13*b[70]+0.5*x[162]+0.5*x[164]+x[181]-x[183] <= 26.0)
@constraint(m, e319, -x[144]+x[173]-x[174] <= 0.0)
@constraint(m, e320, -x[144]-x[173]+x[174] <= 0.0)
@constraint(m, e321, -x[145]+x[182]-x[183] <= 0.0)
@constraint(m, e322, -x[145]-x[182]+x[183] <= 0.0)
@constraint(m, e323, -12*b[71]-12*b[72]+0.5*x[153]+0.5*x[154]-x[173]+x[174] <= 0.0)
@constraint(m, e324, -12*b[71]+12*b[72]+0.5*x[153]+0.5*x[154]+x[173]-x[174] <= 12.0)
@constraint(m, e325, 13*b[71]-13*b[72]+0.5*x[163]+0.5*x[164]-x[182]+x[183] <= 13.0)
@constraint(m, e326, 13*b[71]+13*b[72]+0.5*x[163]+0.5*x[164]+x[182]-x[183] <= 26.0)
@NLconstraint(m, e327, 16/x[146]-x[156] <= 0.0)
@NLconstraint(m, e328, 16/x[156]-x[146] <= 0.0)
@NLconstraint(m, e329, 16/x[147]-x[157] <= 0.0)
@NLconstraint(m, e330, 16/x[157]-x[147] <= 0.0)
@NLconstraint(m, e331, 16/x[148]-x[158] <= 0.0)
@NLconstraint(m, e332, 16/x[158]-x[148] <= 0.0)
@NLconstraint(m, e333, 36/x[149]-x[159] <= 0.0)
@NLconstraint(m, e334, 36/x[159]-x[149] <= 0.0)
@NLconstraint(m, e335, 36/x[150]-x[160] <= 0.0)
@NLconstraint(m, e336, 36/x[160]-x[150] <= 0.0)
@NLconstraint(m, e337, 9/x[151]-x[161] <= 0.0)
@NLconstraint(m, e338, 9/x[161]-x[151] <= 0.0)
@NLconstraint(m, e339, 9/x[152]-x[162] <= 0.0)
@NLconstraint(m, e340, 9/x[162]-x[152] <= 0.0)
@NLconstraint(m, e341, 9/x[153]-x[163] <= 0.0)
@NLconstraint(m, e342, 9/x[163]-x[153] <= 0.0)
@NLconstraint(m, e343, 9/x[154]-x[164] <= 0.0)
@NLconstraint(m, e344, 9/x[164]-x[154] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
