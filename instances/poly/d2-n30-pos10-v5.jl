using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[1], 2.0)
setupperbound(x[1], 10.0)
setupperbound(x[2], 10.0)
setupperbound(x[3], 9.0)
setlowerbound(x[4], 4.0)
setupperbound(x[4], 7.0)
setupperbound(x[5], 8.0)
setupperbound(x[6], 8.0)
setlowerbound(x[7], 4.0)
setupperbound(x[7], 7.0)
setlowerbound(x[8], 3.0)
setupperbound(x[8], 6.0)
setlowerbound(x[9], 4.0)
setupperbound(x[9], 6.0)
setlowerbound(x[10], 2.0)
setupperbound(x[10], 10.0)
setlowerbound(x[11], 2.0)
setupperbound(x[11], 8.0)
setlowerbound(x[12], 2.0)
setupperbound(x[12], 10.0)
setlowerbound(x[13], 4.0)
setupperbound(x[13], 7.0)
setlowerbound(x[14], 1.0)
setupperbound(x[14], 7.0)
setupperbound(x[15], 9.0)
setlowerbound(x[16], 2.0)
setupperbound(x[16], 6.0)
setlowerbound(x[17], 4.0)
setupperbound(x[17], 7.0)
setlowerbound(x[18], 2.0)
setupperbound(x[18], 6.0)
setupperbound(x[19], 6.0)
setlowerbound(x[20], 4.0)
setupperbound(x[20], 7.0)
setlowerbound(x[21], 4.0)
setupperbound(x[21], 8.0)
setupperbound(x[22], 9.0)
setupperbound(x[23], 6.0)
setlowerbound(x[24], 4.0)
setupperbound(x[24], 10.0)
setlowerbound(x[25], 3.0)
setupperbound(x[25], 9.0)
setlowerbound(x[26], 4.0)
setupperbound(x[26], 10.0)
setupperbound(x[27], 6.0)
setlowerbound(x[28], 2.0)
setupperbound(x[28], 9.0)
setlowerbound(x[29], 2.0)
setupperbound(x[29], 8.0)
setlowerbound(x[30], 3.0)
setupperbound(x[30], 8.0)


# ----- Constraints ----- #
@constraint(m, e1, -3.34*x[2]+3.47*x[3]+2.28*x[4]+4.94*x[5]+2.62*x[8]+0.29*x[11]+1.81*x[17]+3.13*x[20]-2.08*x[28]+1.06*x[29] >= 65.5)
@NLconstraint(m, e2, x[1]*x[1]-0.17*x[1]+1.17*x[1]*x[2]+3*x[1]*x[3]-3.58*x[1]*x[4]-1.43*x[1]*x[8]+2.4*x[1]*x[9]-4.79*x[1]*x[17]+0.95*x[1]*x[18]-0.16*x[1]*x[27]-1.69*x[2]*x[7]-2.12*x[7]-1.37*x[2]*x[9]+1.86*x[2]*x[10]+2.75*x[2]*x[14]-3.52*x[14]+0.57*x[2]*x[21]+1.88*x[2]*x[22]-3.23*x[2]*x[23]+3.98*x[2]*x[29]-4.21*x[3]*x[9]+2.7*x[3]*x[10]+2.6*x[3]*x[13]-0.01*x[3]*x[17]+1.37*x[3]*x[23]-3.61*x[3]*x[25]-3.75*x[25]-4.79*x[3]*x[26]+2.93*x[3]*x[28]+2.55*x[28]-4.85*x[4]*x[5]-3.14*x[4]*x[12]-2.78*x[4]*x[14]+3.67*x[4]*x[19]-3.13*x[4]*x[20]-1.2*x[4]*x[23]+2.02*x[5]*x[5]-0.86*x[5]*x[6]-0.41*x[5]*x[9]+3.73*x[5]*x[11]+3.04*x[5]*x[18]-0.95*x[5]*x[19]-1.38*x[5]*x[22]+3.29*x[5]*x[26]-0.03*x[6]*x[7]-1.8*x[6]*x[22]+0.03*x[6]*x[30]+3.04*x[7]*x[10]+3.55*x[7]*x[11]-1.95*x[7]*x[21]-4.41*x[7]*x[22]+3.86*x[7]*x[25]-0.73*x[7]*x[26]-3.62*x[8]*x[9]+1.59*x[8]*x[10]+4.26*x[8]*x[11]+3.16*x[9]*x[14]+2.85*x[9]*x[19]-0.89*x[9]*x[20]+4.93*x[9]*x[29]+3.69*x[10]*x[10]+4.1*x[10]*x[13]+0.05*x[10]*x[21]-4.1*x[10]*x[22]+3.88*x[10]*x[24]+3.86*x[24]-0.2*x[10]*x[30]-4.78*x[11]*x[11]+3.32*x[11]*x[12]+3.57*x[11]*x[14]-1.31*x[11]*x[17]+3.28*x[11]*x[20]-2.66*x[11]*x[30]+3.57*x[12]*x[12]+3.01*x[12]*x[13]+1.36*x[12]*x[16]-4.99*x[12]*x[18]+2.58*x[12]*x[23]-4.59*x[13]*x[15]-3.77*x[13]*x[17]+2.66*x[13]*x[26]+2.51*x[13]*x[29]+0.93*x[14]*x[17]+0.38*x[14]*x[18]-4.51*x[14]*x[19]+3.81*x[14]*x[21]-0.96*x[15]*x[16]-2.9*x[15]*x[24]-3.71*x[16]*x[16]-3.67*x[16]*x[20]-2.98*x[16]*x[21]-2.73*x[16]*x[22]+3.83*x[16]*x[26]+4.1*x[16]*x[27]+0.95*x[17]*x[23]+0.03*x[17]*x[24]+2.94*x[17]*x[25]-0.06*x[17]*x[28]-0.66*x[18]*x[23]+4.1*x[18]*x[28]-4.74*x[18]*x[29]+3.98*x[19]*x[21]-0.21*x[19]*x[22]+2.91*x[19]*x[24]-3.39*x[20]*x[23]+4.2*x[21]*x[23]-0.76*x[21]*x[29]+4.9*x[23]*x[30]-2.58*x[24]*x[29]-4.21*x[25]*x[25]+3.29*x[25]*x[27]+2.96*x[25]*x[29]+4.73*x[26]*x[28]-1.28*x[27]*x[30]-3.05*x[28]*x[28]+1.44*x[29]*x[29] >= 1219.6)
@constraint(m, e3, 2.91*x[6]-0.55*x[12]-0.85*x[15]+4.87*x[23]-1.84*x[24]-1.08*x[29] >= 0.7)
@NLconstraint(m, e4, 1.75*x[1]*x[1]+1.27*x[1]*x[4]-1.02*x[4]+1.73*x[1]*x[10]+4.06*x[1]*x[12]+4.88*x[1]*x[13]-2.17*x[1]*x[15]-4.99*x[1]*x[18]+4.61*x[18]+1.66*x[1]*x[21]+2.4*x[21]+0.48*x[1]*x[22]-1.29*x[1]*x[25]-1.18*x[1]*x[27]+4.88*x[1]*x[29]+4.26*x[1]*x[30]+0.81*x[2]*x[5]+2.52*x[5]+2.05*x[2]*x[6]+0.14*x[6]+0.59*x[2]*x[8]-3.23*x[2]*x[9]-0.65*x[2]*x[13]+0.65*x[2]*x[20]+4.16*x[2]*x[22]-0.35*x[2]*x[24]-3.58*x[24]-0.04*x[2]*x[25]-0.86*x[2]*x[27]+2.48*x[3]*x[3]-3.39*x[3]*x[6]-3.98*x[3]*x[10]-4.77*x[3]*x[11]-1.29*x[11]+3.83*x[3]*x[12]+1.52*x[3]*x[14]+0.94*x[3]*x[20]-1.39*x[3]*x[26]-1.16*x[4]*x[5]-0.81*x[4]*x[6]+0.19*x[4]*x[7]-4.62*x[4]*x[13]-1.05*x[4]*x[16]+0.24*x[4]*x[19]+3.82*x[19]+2.19*x[4]*x[20]+4.9*x[4]*x[26]-3.9*x[4]*x[27]-0.08*x[5]*x[5]-3.83*x[5]*x[8]-4.22*x[5]*x[21]+2.1*x[5]*x[22]-0.45*x[5]*x[23]-4.94*x[5]*x[24]+4.13*x[5]*x[25]-1.38*x[5]*x[28]-1.62*x[6]*x[6]-4.51*x[6]*x[7]+2.07*x[6]*x[16]-2.16*x[6]*x[20]-0.11*x[7]*x[8]-4.48*x[7]*x[16]-0.25*x[7]*x[20]+0.23*x[8]*x[10]-2.06*x[8]*x[26]+3.75*x[8]*x[27]+2.77*x[8]*x[28]-0.76*x[8]*x[30]+4.59*x[9]*x[11]-2.04*x[9]*x[22]+4.8*x[9]*x[23]-1.73*x[9]*x[29]-0.38*x[10]*x[10]-2.1*x[10]*x[11]+0.29*x[10]*x[17]+0.27*x[10]*x[20]-1.88*x[10]*x[24]+4.27*x[10]*x[28]+3.83*x[11]*x[15]-0.57*x[11]*x[16]+4.61*x[11]*x[25]+4.4*x[11]*x[29]+1.81*x[12]*x[14]-4.91*x[12]*x[15]+0.19*x[12]*x[18]-2.42*x[12]*x[27]-1.04*x[13]*x[13]+4.17*x[13]*x[14]+4.24*x[13]*x[15]+1.43*x[13]*x[17]-4.48*x[13]*x[23]-2.71*x[13]*x[28]+1.57*x[14]*x[20]-3.92*x[14]*x[28]+0.04*x[15]*x[15]+0.24*x[15]*x[16]+3.59*x[15]*x[18]+4.2*x[15]*x[19]+4.43*x[15]*x[22]+3.66*x[15]*x[26]-3.85*x[15]*x[29]-4.62*x[16]*x[21]+0.37*x[16]*x[22]-3.85*x[16]*x[28]-1.84*x[17]*x[18]+1.1*x[17]*x[21]-2.28*x[18]*x[20]+4.66*x[18]*x[27]-1.33*x[18]*x[30]+3.15*x[19]*x[20]-1.03*x[19]*x[25]+4.05*x[19]*x[30]-2.36*x[20]*x[20]+0.43*x[20]*x[21]+2.25*x[20]*x[27]+3.41*x[20]*x[28]-x[21]*x[24]-2.59*x[21]*x[26]+2.4*x[21]*x[30]+0.45*x[22]*x[23]+2.41*x[22]*x[27]-4.32*x[22]*x[30]+2.36*x[24]*x[28]+1.09*x[24]*x[30]+3*x[25]*x[30]-4.04*x[26]*x[29]+4.39*x[27]*x[27]-3.87*x[27]*x[28]+3.72*x[29]*x[29]-3.58*x[29]*x[30] >= 917.8)
@constraint(m, e5, -0.82*x[9]-4.03*x[14]-3.93*x[19]-1.67*x[23]+2.27*x[25]+3.99*x[26] >= 4.5)
@NLconstraint(m, e6, 2.37*x[3]-2.44*x[1]*x[3]-0.57*x[1]*x[8]-0.88*x[1]*x[9]-2.36*x[1]*x[15]+1.2*x[1]*x[22]+0.65*x[1]*x[23]+1.02*x[1]*x[25]+0.4*x[1]*x[27]-2.05*x[2]*x[4]-4.43*x[2]-1.92*x[2]*x[10]+4.81*x[2]*x[15]+2.96*x[2]*x[23]+2.06*x[2]*x[25]-0.16*x[2]*x[27]-1.46*x[2]*x[28]+1.65*x[28]+2.21*x[3]*x[4]+3.34*x[3]*x[6]+3.1*x[3]*x[8]-3.2*x[3]*x[13]+3.31*x[13]+1.55*x[3]*x[15]+4.72*x[3]*x[16]+1.56*x[3]*x[20]-3.38*x[3]*x[21]-0.76*x[3]*x[22]-2.97*x[3]*x[24]+1.92*x[4]*x[7]-2.76*x[4]*x[9]-1.08*x[4]*x[15]+1.82*x[4]*x[16]-2.69*x[4]*x[20]-2.25*x[4]*x[22]+0.44*x[4]*x[26]-1.89*x[5]*x[5]-4.79*x[5]*x[7]-0.23*x[5]*x[10]+1.73*x[5]*x[16]-2.08*x[5]*x[20]+3.13*x[5]*x[26]-2.03*x[6]*x[7]-1.13*x[6]*x[9]+4.61*x[6]*x[15]+0.21*x[6]*x[22]+3.32*x[6]*x[23]-4.65*x[6]*x[26]-3.36*x[6]*x[29]+1.39*x[7]*x[9]-1.17*x[7]*x[18]+3.13*x[7]*x[19]-3.36*x[19]+4.86*x[7]*x[22]-1.99*x[7]*x[28]+3.65*x[7]*x[30]+1.59*x[8]*x[10]-1.27*x[8]*x[11]+4.47*x[8]*x[16]+0.41*x[8]*x[27]-2.62*x[9]*x[9]-0.71*x[9]*x[14]-3.76*x[14]+2.19*x[9]*x[18]+3.14*x[10]*x[12]-1.49*x[10]*x[18]-3.67*x[10]*x[19]+4.3*x[10]*x[20]-1.74*x[10]*x[21]-0.34*x[10]*x[22]+0.45*x[10]*x[25]+3.99*x[10]*x[28]-3.08*x[10]*x[29]+1.85*x[11]*x[15]-2.29*x[11]*x[19]+1.91*x[11]*x[23]+4.89*x[11]*x[26]+4.59*x[11]*x[28]-3.58*x[12]*x[14]+0.41*x[12]*x[16]+0.92*x[12]*x[19]-0.44*x[12]*x[20]+1.5*x[12]*x[22]+0.02*x[12]*x[23]-2.93*x[12]*x[25]+3.5*x[12]*x[27]+0.71*x[12]*x[28]-0.21*x[13]*x[19]-0.69*x[13]*x[24]+0.04*x[13]*x[30]-0.39*x[14]*x[15]-1.36*x[14]*x[28]-2.79*x[14]*x[30]+0.95*x[15]*x[15]-1.94*x[15]*x[24]+0.65*x[15]*x[26]+3.72*x[15]*x[27]+4.66*x[16]*x[19]-3.28*x[16]*x[21]+2.92*x[16]*x[22]+3.82*x[16]*x[23]+2.18*x[16]*x[24]-0.8*x[17]*x[19]+3.91*x[17]*x[21]+1.32*x[17]*x[25]+1.56*x[18]*x[18]-4.36*x[18]*x[20]-4.3*x[18]*x[27]+1.54*x[19]*x[21]-2.94*x[19]*x[24]-2.61*x[20]*x[26]+3.82*x[21]*x[22]-4.48*x[21]*x[23]+0.95*x[21]*x[27]-2.46*x[22]*x[24]-0.2*x[22]*x[27]-3.73*x[23]*x[23]+0.28*x[23]*x[26]+0.55*x[23]*x[28]+2*x[24]*x[26]+4.08*x[24]*x[28]+0.69*x[24]*x[29]+3.08*x[24]*x[30]+4.45*x[27]*x[28]-1.41*x[28]*x[29]+1.05*x[29]*x[29] >= 1175.3)
@constraint(m, e7, -4.17*x[3]-3.54*x[8]-0.68*x[13]-4.39*x[14]+3.45*x[19] >= -45.7)
@NLconstraint(m, e8, 2.72*x[2]-1.4*x[1]*x[2]-2.49*x[1]*x[13]-4.71*x[13]-0.62*x[1]*x[16]+4.68*x[1]*x[21]-1.33*x[21]+0.69*x[1]*x[23]+2.76*x[23]-4.2*x[1]*x[25]+0.99*x[1]*x[28]-4.81*x[1]*x[29]+1.43*x[2]*x[9]+1.37*x[2]*x[10]-4.46*x[10]+3.2*x[2]*x[11]-3.26*x[11]-0.95*x[2]*x[14]+3.77*x[2]*x[17]+0.63*x[17]+1.42*x[2]*x[30]+3.2*x[3]*x[9]-1.64*x[3]*x[16]+0.56*x[3]*x[20]-3.5*x[3]*x[26]+0.85*x[3]*x[28]-4.63*x[4]*x[4]+1.46*x[4]*x[5]+4.58*x[4]*x[9]-3.32*x[4]*x[19]+1.52*x[4]*x[21]+0.11*x[4]*x[23]-0.17*x[4]*x[25]-1.66*x[4]*x[28]+2.23*x[5]*x[6]-0.43*x[5]*x[10]-2.34*x[5]*x[14]-1.38*x[5]*x[19]+0.44*x[5]*x[23]-2.76*x[5]*x[25]+0.93*x[5]*x[27]-1.54*x[5]*x[29]+4.73*x[5]*x[30]-4.62*x[6]*x[8]-0.8*x[6]*x[9]+0.83*x[6]*x[20]-3.46*x[6]*x[21]-1.29*x[6]*x[27]+0.09*x[7]*x[8]+0.55*x[7]*x[13]+3.08*x[7]*x[18]-3.45*x[18]+0.28*x[7]*x[21]+2.52*x[7]*x[24]+3.63*x[7]*x[27]-1.52*x[8]*x[11]+0.22*x[8]*x[15]-0.4*x[8]*x[21]+1.35*x[8]*x[23]-4.51*x[9]*x[9]-2.06*x[9]*x[15]-2.93*x[9]*x[18]+0.63*x[9]*x[21]-3*x[9]*x[22]-1.66*x[9]*x[26]-3.31*x[9]*x[27]+1.19*x[10]*x[12]+1.96*x[10]*x[23]+0.33*x[10]*x[25]-1.52*x[10]*x[27]+4.93*x[11]*x[17]-1.17*x[11]*x[19]-0.56*x[11]*x[26]-4.35*x[11]*x[27]-2.73*x[12]*x[13]-4.41*x[12]*x[14]+4.9*x[12]*x[19]-2.04*x[12]*x[24]-2.06*x[12]*x[25]-4.58*x[12]*x[27]+1.23*x[12]*x[28]+1.84*x[12]*x[29]-1.09*x[13]*x[13]+3.06*x[13]*x[17]+0.97*x[13]*x[19]-0.35*x[13]*x[22]-1.51*x[13]*x[23]-0.24*x[13]*x[25]+4.37*x[13]*x[27]-3.24*x[14]*x[17]-0.8*x[14]*x[22]+1.28*x[14]*x[23]-2.49*x[14]*x[28]-0.47*x[15]*x[23]+2.74*x[15]*x[25]+4.79*x[15]*x[27]+2.41*x[15]*x[30]-2.16*x[16]*x[17]+4.87*x[16]*x[19]-3.43*x[16]*x[24]+1.62*x[16]*x[26]+1.6*x[17]*x[19]+4.06*x[17]*x[21]+4.27*x[17]*x[25]+2.65*x[17]*x[26]+2.68*x[18]*x[18]-4.51*x[18]*x[24]-2.98*x[18]*x[29]-3.85*x[18]*x[30]+4.09*x[19]*x[19]-0.71*x[19]*x[25]+3.23*x[19]*x[30]+2.76*x[20]*x[23]+1.88*x[20]*x[28]-1.68*x[21]*x[24]+4.91*x[21]*x[27]+4.4*x[21]*x[28]-0.8*x[21]*x[29]+2.12*x[22]*x[26]+3.63*x[22]*x[27]-3.5*x[22]*x[28]-3.01*x[22]*x[29]-2.21*x[23]*x[25]+3.07*x[23]*x[28]+4.98*x[23]*x[29]+1.31*x[25]*x[28]+2.73*x[25]*x[29]+3.14*x[26]*x[26]-2.39*x[26]*x[28]+2.88*x[26]*x[29]-3.9*x[27]*x[30] >= 455.2)
@constraint(m, e9, -0.28*x[1]+0.71*x[2]+2.95*x[5]-3.91*x[6]-2.36*x[9]+3.17*x[10]+1.6*x[11]-1.87*x[13]+3.1*x[15]-4.88*x[19]+0.12*x[25]-0.58*x[26]+2.62*x[27]-4.28*x[28] >= -16.7)
@NLconstraint(m, e10, 4.38*x[2]-4.62*x[1]*x[2]-4.67*x[1]*x[8]+3.87*x[1]*x[11]+2.26*x[1]*x[16]-4.28*x[1]*x[21]-3.67*x[1]*x[22]-0.6*x[22]+2.74*x[1]*x[25]-4.31*x[1]*x[26]+1.49*x[26]-2.09*x[2]*x[4]-1.15*x[2]*x[7]-0.86*x[2]*x[14]-0.51*x[2]*x[18]+2.57*x[18]-3.67*x[2]*x[24]-1.18*x[2]*x[26]+0.51*x[2]*x[30]-0.85*x[3]*x[3]+1.17*x[3]*x[5]+0.17*x[3]*x[15]-4.9*x[3]*x[16]+1.67*x[3]*x[17]-3.61*x[3]*x[21]-4.77*x[3]*x[24]-4.43*x[3]*x[26]-0.68*x[4]*x[4]+1.81*x[4]*x[6]+2.84*x[4]*x[7]+0.9*x[4]*x[9]-1.18*x[4]*x[21]-0.01*x[4]*x[22]+3.12*x[4]*x[24]+4.5*x[4]*x[29]+0.37*x[5]*x[7]-3.18*x[5]*x[10]+1.57*x[5]*x[13]-0.59*x[5]*x[19]+4.59*x[5]*x[21]+4.17*x[5]*x[28]-0.05*x[6]*x[7]-2.46*x[6]*x[12]+4.3*x[12]+3.34*x[6]*x[14]+3.62*x[6]*x[16]+3.05*x[6]*x[18]+3.65*x[6]*x[21]+3.51*x[6]*x[25]+1.1*x[6]*x[26]+2.21*x[6]*x[29]+1.22*x[7]*x[8]+0.08*x[7]*x[9]-3.23*x[7]*x[14]-1.11*x[7]*x[15]-1.3*x[7]*x[27]-3.78*x[7]*x[28]-4.89*x[7]*x[30]-3.21*x[8]*x[13]-1.26*x[8]*x[16]+3.09*x[8]*x[20]+1.3*x[9]*x[14]-1.99*x[9]*x[20]-4.9*x[9]*x[26]-2.14*x[9]*x[28]+0.57*x[10]*x[11]-2.92*x[10]*x[13]+2.93*x[10]*x[22]-4.18*x[10]*x[27]+4.92*x[11]*x[14]-0.12*x[11]*x[15]-4.36*x[11]*x[17]-1.28*x[11]*x[20]-1.77*x[11]*x[28]-0.2*x[12]*x[12]-1.64*x[12]*x[15]-3.71*x[12]*x[16]-3.2*x[12]*x[17]+4.42*x[12]*x[19]+4.02*x[12]*x[21]+3.68*x[12]*x[24]+3.51*x[12]*x[28]+0.58*x[13]*x[13]-4.64*x[13]*x[14]-4.17*x[13]*x[29]+2.15*x[13]*x[30]+2.16*x[14]*x[16]-3.56*x[14]*x[24]-2.76*x[14]*x[28]-2.96*x[14]*x[30]-4.29*x[15]*x[15]-4.97*x[15]*x[20]-3.77*x[15]*x[22]+0.07*x[15]*x[24]-1.23*x[15]*x[26]-3.69*x[15]*x[27]-3.31*x[16]*x[16]-3.69*x[16]*x[18]+4.25*x[16]*x[23]-4.99*x[16]*x[26]+4.83*x[16]*x[27]+0.67*x[17]*x[19]-4.21*x[17]*x[22]+3.86*x[17]*x[25]-3.21*x[17]*x[30]+2.51*x[18]*x[18]+3.06*x[20]*x[23]-4.87*x[20]*x[26]+1.18*x[21]*x[28]-2.52*x[22]*x[30]-0.9*x[23]*x[23]+4.16*x[23]*x[25]+3.54*x[23]*x[28]-4.17*x[24]*x[24]-3.01*x[24]*x[28]-0.7*x[25]*x[29]+4.65*x[26]*x[28]-2.87*x[26]*x[29]+1.33*x[27]*x[27]-3.17*x[28]*x[28]+0.1*x[29]*x[29] >= -2654.2)
@constraint(m, e11, -2.2*x[3]+4.49*x[4]+4.58*x[6]-0.41*x[8]-3.44*x[11]+4.68*x[14]+2.15*x[19]-3.77*x[21]-3.71*x[22]+2.59*x[23] >= 7.7)
@NLconstraint(m, e12, 2.62*x[1]*x[1]+2.17*x[1]*x[10]-3.93*x[10]-4.87*x[1]*x[12]-0.45*x[1]*x[16]+3.25*x[1]*x[17]-0.41*x[1]*x[21]+3.64*x[1]*x[22]+2.21*x[1]*x[23]+1.53*x[23]-1.64*x[2]*x[11]+3.95*x[2]*x[13]+3.37*x[2]*x[22]-4.69*x[2]*x[26]+2.97*x[2]*x[27]+3.93*x[27]-0.78*x[3]*x[7]+1.83*x[7]+3.56*x[3]*x[14]+0.64*x[3]*x[19]+2.94*x[19]-1.89*x[3]*x[22]-0.01*x[4]*x[8]-3.08*x[4]*x[9]+3.15*x[9]-4.92*x[4]*x[11]+4.66*x[4]*x[12]+1.37*x[4]*x[14]-3.6*x[4]*x[15]-3.71*x[4]*x[19]-4.48*x[4]*x[25]-1.66*x[25]-4.28*x[4]*x[27]+0.04*x[5]*x[11]+2.88*x[5]*x[19]-3.95*x[5]*x[20]+1.23*x[20]-0.86*x[5]*x[21]+2.53*x[5]*x[23]+1.03*x[5]*x[28]+1.82*x[6]*x[6]+2.52*x[6]*x[7]+1.17*x[6]*x[17]-0.79*x[6]*x[18]-4.88*x[6]*x[25]+2.93*x[6]*x[29]+1.8*x[7]*x[11]-3.9*x[7]*x[13]+1.26*x[7]*x[14]-4.51*x[7]*x[15]+4.4*x[7]*x[18]+0.26*x[7]*x[21]-4.84*x[7]*x[25]+0.38*x[7]*x[26]-2.71*x[8]*x[8]-3.31*x[8]*x[12]-4.57*x[8]*x[15]-4.98*x[9]*x[16]+4.28*x[9]*x[18]+0.12*x[9]*x[19]+0.74*x[9]*x[20]-4.26*x[9]*x[23]+2.34*x[10]*x[12]-0.04*x[10]*x[22]+4.01*x[10]*x[23]-4.49*x[11]*x[13]-3.54*x[11]*x[23]+4.1*x[11]*x[26]+4.33*x[11]*x[27]+4.41*x[11]*x[30]+3.03*x[12]*x[12]+1.31*x[12]*x[15]-0.38*x[13]*x[14]+0.11*x[14]*x[14]+2.5*x[14]*x[15]+2.69*x[14]*x[20]+4.75*x[14]*x[21]+0.01*x[14]*x[25]-4.92*x[14]*x[30]-2.48*x[15]*x[15]+0.73*x[15]*x[19]+3.55*x[15]*x[20]-4.62*x[15]*x[24]-1.8*x[15]*x[26]+4.46*x[15]*x[27]-1.44*x[15]*x[29]+3.54*x[16]*x[22]-3.49*x[17]*x[21]+1.1*x[17]*x[22]-3.18*x[17]*x[23]-4.88*x[17]*x[25]+4.81*x[17]*x[30]-2.75*x[18]*x[18]+2.42*x[18]*x[29]-4.96*x[19]*x[23]+2.52*x[19]*x[24]+1.4*x[19]*x[30]-1.55*x[20]*x[23]-4.59*x[20]*x[30]-0.66*x[21]*x[25]+3.28*x[21]*x[26]+0.54*x[21]*x[29]-3.93*x[22]*x[23]-4.53*x[22]*x[29]+2.84*x[22]*x[30]+4.95*x[23]*x[24]-1.48*x[23]*x[26]+0.94*x[23]*x[29]+1.59*x[24]*x[28]-2.76*x[25]*x[29]-4.27*x[25]*x[30]-0.91*x[26]*x[28]-0.06*x[26]*x[29]-1.66*x[26]*x[30]+1.42*x[27]*x[30]+4.99*x[28]*x[30] >= -135.9)
@constraint(m, e13, -0.82*x[11]-0.14*x[12]+2.19*x[14]-2.86*x[18]-1.68*x[24]+0.84*x[25]+3.45*x[26] >= 9.8)
@NLconstraint(m, e14, 1.61*x[1]*x[6]-2.13*x[1]*x[8]-0.05*x[1]*x[12]-1.51*x[1]*x[24]-4.26*x[1]*x[27]-3.01*x[2]*x[11]-2.79*x[2]-0.34*x[11]+2.67*x[2]*x[12]+0.87*x[2]*x[13]+4.81*x[2]*x[15]-1.11*x[2]*x[19]+4.2*x[19]-4.5*x[2]*x[21]+0.25*x[2]*x[23]+2.05*x[2]*x[26]+3.32*x[2]*x[30]-3.23*x[3]*x[5]+3.86*x[3]-0.49*x[5]-1.73*x[3]*x[6]-1.64*x[3]*x[7]-2.76*x[3]*x[9]-4.95*x[9]+4.52*x[3]*x[12]+0.81*x[3]*x[13]-0.89*x[3]*x[17]-1.75*x[3]*x[19]+1.06*x[3]*x[23]+4.51*x[3]*x[24]+4.49*x[3]*x[26]+3.71*x[4]*x[15]+0.6*x[4]*x[17]-2.76*x[4]*x[21]-1.25*x[4]*x[23]-4.98*x[4]*x[24]+2.24*x[4]*x[26]-0.03*x[4]*x[28]-1.84*x[28]+4.65*x[4]*x[29]+4.82*x[5]*x[5]-4.93*x[5]*x[27]-0.37*x[6]*x[6]+1.79*x[6]*x[8]+3.91*x[6]*x[16]+1.84*x[6]*x[17]+3.59*x[6]*x[23]-0.48*x[6]*x[24]-2.15*x[6]*x[26]+3.29*x[6]*x[27]-3.65*x[6]*x[28]-3.15*x[6]*x[29]+3.95*x[6]*x[30]-2.93*x[7]*x[7]-0.22*x[7]*x[12]-3.66*x[7]*x[18]-4.31*x[7]*x[23]+3.69*x[7]*x[25]+1.21*x[25]-4.7*x[8]*x[8]+4.71*x[8]*x[11]+2.88*x[8]*x[13]+4.81*x[8]*x[16]-2.1*x[8]*x[17]-1.09*x[8]*x[18]-0.93*x[8]*x[19]+2.02*x[8]*x[20]-4.83*x[8]*x[23]-4.64*x[8]*x[27]+0.03*x[8]*x[30]-1.44*x[9]*x[12]-3.59*x[9]*x[13]+1.48*x[9]*x[17]+3.52*x[9]*x[18]-1.62*x[9]*x[21]+4.49*x[9]*x[27]-4.73*x[9]*x[29]-2.15*x[9]*x[30]+1.4*x[10]*x[14]+2.89*x[10]-1.23*x[10]*x[20]+3.52*x[10]*x[26]+4.66*x[11]*x[23]+0.1*x[11]*x[29]-1.2*x[12]*x[19]+2.4*x[12]*x[26]-4.11*x[12]*x[29]-1.22*x[13]*x[15]+4.01*x[13]*x[16]-3.73*x[13]*x[19]+4.53*x[13]*x[29]-3.06*x[14]*x[15]+3.2*x[14]*x[16]-1.11*x[14]*x[25]+3.56*x[14]*x[28]-1.76*x[15]*x[16]-1.14*x[15]*x[18]+4.89*x[15]*x[22]+4.11*x[15]*x[24]-0.11*x[15]*x[26]+2.28*x[16]*x[16]-0.63*x[16]*x[18]-4.3*x[16]*x[19]-0.89*x[16]*x[24]+2.28*x[16]*x[25]-3.55*x[16]*x[26]+1.46*x[16]*x[28]-4.56*x[16]*x[30]+1.88*x[17]*x[26]+3.64*x[17]*x[28]-0.91*x[17]*x[30]-3.66*x[18]*x[24]-1.52*x[18]*x[26]+3.09*x[18]*x[28]-0.31*x[18]*x[30]+4.8*x[19]*x[20]+1.02*x[19]*x[21]+0.28*x[19]*x[23]-4.9*x[20]*x[25]-0.56*x[20]*x[26]+2.02*x[20]*x[28]+1.23*x[21]*x[22]+2.6*x[22]*x[29]-0.05*x[23]*x[23]-3.65*x[23]*x[26]+2.33*x[24]*x[24]+3.11*x[24]*x[27]+0.67*x[25]*x[30]+1.53*x[27]*x[27]-3.4*x[29]*x[30] >= 977.0)
@constraint(m, e15, 0.52*x[17]+0.01*x[19]+3.46*x[20]-0.46*x[22]-2.81*x[25]+4.84*x[29] >= 27.0)
@NLconstraint(m, e16, 2.94*x[1]*x[12]+2.18*x[1]*x[15]-3.99*x[1]*x[22]-0.25*x[1]*x[27]-2.62*x[1]*x[28]-2.25*x[2]*x[2]+3.11*x[2]+4.1*x[2]*x[4]+4.78*x[2]*x[19]-3.82*x[2]*x[23]+3.98*x[2]*x[24]+3.34*x[24]+4.08*x[3]*x[6]-0.89*x[6]+2.57*x[3]*x[8]-3.05*x[8]-4.98*x[3]*x[9]-2.52*x[3]*x[15]-0.19*x[3]*x[27]+4.41*x[4]*x[10]-1.34*x[4]*x[15]+1.59*x[4]*x[16]+4.14*x[16]+2.38*x[4]*x[17]-1.73*x[17]+3.89*x[4]*x[19]-4.07*x[4]*x[20]+3.62*x[20]+1.64*x[4]*x[23]+0.39*x[4]*x[24]+1.43*x[4]*x[25]+1.7*x[4]*x[26]+3.72*x[4]*x[27]-0.3*x[4]*x[28]-4.34*x[5]*x[6]+1.54*x[5]-3.47*x[5]*x[8]+3.25*x[5]*x[13]+0.46*x[5]*x[19]-0.22*x[5]*x[21]-0.58*x[21]-0.87*x[5]*x[24]+3.21*x[6]*x[10]+2.33*x[6]*x[13]+0.89*x[6]*x[16]+4.22*x[6]*x[18]-1.63*x[6]*x[24]+1.93*x[6]*x[27]-2.68*x[7]*x[7]-3.67*x[7]*x[8]+3.15*x[7]*x[9]-0.62*x[7]*x[20]+4*x[7]*x[21]-3.74*x[8]*x[8]-1.88*x[8]*x[10]+2.83*x[8]*x[19]-1.97*x[8]*x[21]+2.39*x[8]*x[24]-3.89*x[8]*x[27]+4.7*x[8]*x[30]+4.67*x[9]*x[10]+1.95*x[9]*x[11]-4.12*x[9]*x[15]+3.66*x[9]*x[17]-4.74*x[9]*x[20]-0.73*x[9]*x[21]-3.22*x[9]*x[25]-3.54*x[10]*x[15]+1.48*x[10]*x[17]-3.11*x[10]*x[22]-1.53*x[10]*x[23]-4.72*x[10]*x[24]-0.88*x[10]*x[29]-0.94*x[11]*x[17]-0.18*x[11]*x[20]+3.34*x[11]*x[26]-4.14*x[11]*x[27]+2.53*x[12]*x[12]-3.4*x[12]*x[15]-4.53*x[12]*x[19]-4.19*x[12]*x[20]-2.01*x[12]*x[26]+2.38*x[12]*x[28]-1.4*x[13]*x[17]+3.83*x[13]*x[20]+3.97*x[13]*x[21]-4.87*x[13]*x[22]+1.09*x[13]*x[24]-1.9*x[13]*x[25]+0.07*x[13]*x[27]+1.63*x[13]*x[28]-3.98*x[13]*x[29]-4.41*x[14]*x[15]-0.04*x[14]*x[18]-3.6*x[14]*x[23]+0.5*x[14]*x[24]-1.95*x[14]*x[27]+1.42*x[14]*x[30]-4.83*x[15]*x[16]+0.89*x[15]*x[20]-0.85*x[15]*x[24]+4.31*x[15]*x[26]+3.51*x[15]*x[30]-3.89*x[16]*x[21]-2.52*x[16]*x[28]+3.09*x[16]*x[30]-4.1*x[17]*x[22]+1.45*x[17]*x[26]+3.81*x[17]*x[28]+4.71*x[18]*x[24]+4.41*x[18]*x[26]+4.04*x[19]*x[19]-2.34*x[19]*x[29]+3.69*x[20]*x[27]+0.84*x[21]*x[25]-1.82*x[22]*x[28]-3.92*x[22]*x[29]-2.2*x[22]*x[30]-4.83*x[23]*x[25]-3.51*x[23]*x[28]-0.04*x[23]*x[29]-0.89*x[23]*x[30]+0.45*x[24]*x[29]-2.96*x[25]*x[27]-1.07*x[25]*x[28]+0.85*x[26]*x[26]-2.19*x[27]*x[27]+4.49*x[27]*x[29] >= -278.5)
@NLconstraint(m, e17, -(-3.19*x[1]*x[1]-9.59*x[1]-5.35*x[1]*x[2]-1.68*x[2]-8.51*x[1]*x[3]-6.26*x[3]+7.99*x[1]*x[4]-6.06*x[4]-2.58*x[1]*x[5]-0.28*x[5]-6.43*x[1]*x[6]-0.89*x[6]-2.38*x[1]*x[7]-8.81*x[7]-5*x[1]*x[8]-8.43*x[8]-2.85*x[1]*x[9]-6.04*x[9]-2.62*x[1]*x[10]-4.97*x[10]-2.69*x[1]*x[11]-0.37*x[11]-0.92*x[1]*x[12]-0.07*x[12]-4.6*x[1]*x[13]-2.91*x[13]-6.04*x[1]*x[14]-3.6*x[14]-8.49*x[1]*x[15]-5.31*x[15]-2.89*x[1]*x[16]-8.17*x[16]-8.62*x[1]*x[17]-9.4*x[17]-3.61*x[1]*x[18]-3.54*x[18]-7.16*x[1]*x[19]-1.58*x[19]-8.19*x[1]*x[20]-4.38*x[20]-5.26*x[1]*x[21]-7.86*x[21]+7.75*x[1]*x[22]-4.15*x[22]-2.71*x[1]*x[23]-7.05*x[23]-9.98*x[1]*x[24]+7.25*x[24]-6.4*x[1]*x[25]-5.84*x[25]-2.65*x[1]*x[26]-0.3*x[26]-1.77*x[1]*x[27]-6.89*x[27]-7.89*x[1]*x[28]-2.4*x[28]-6.19*x[1]*x[29]-6.09*x[29]-5.93*x[1]*x[30]-4.89*x[30]-5.56*x[2]*x[2]-5.62*x[2]*x[3]-1.42*x[2]*x[4]-0.29*x[2]*x[5]-1.35*x[2]*x[6]-2.8*x[2]*x[7]-7.45*x[2]*x[8]-4.89*x[2]*x[9]-1.83*x[2]*x[10]-3.31*x[2]*x[11]-0.6*x[2]*x[12]-1.1*x[2]*x[13]-5.82*x[2]*x[14]-7.14*x[2]*x[15]-3.05*x[2]*x[16]-2.35*x[2]*x[17]-8.78*x[2]*x[18]-8.15*x[2]*x[19]-1.06*x[2]*x[20]+2.73*x[2]*x[21]-6.54*x[2]*x[22]-4.72*x[2]*x[23]-2.55*x[2]*x[24]-4.05*x[2]*x[25]-0.66*x[2]*x[26]-5.61*x[2]*x[27]-4.91*x[2]*x[28]-6.11*x[2]*x[29]-8.95*x[2]*x[30]-8.22*x[3]*x[3]+9.03*x[3]*x[4]+9.67*x[3]*x[5]+9.44*x[3]*x[6]-1.38*x[3]*x[7]-0.37*x[3]*x[8]-7.05*x[3]*x[9]-1.41*x[3]*x[10]-9.83*x[3]*x[11]-3.25*x[3]*x[12]-9.94*x[3]*x[13]-1.78*x[3]*x[14]-2.69*x[3]*x[15]-9.01*x[3]*x[16]-8.97*x[3]*x[17]-0.35*x[3]*x[18]-3.03*x[3]*x[19]-4.13*x[3]*x[20]-5.08*x[3]*x[21]+2.34*x[3]*x[22]-0.72*x[3]*x[23]-9.32*x[3]*x[24]-6.92*x[3]*x[25]-1.62*x[3]*x[26]-5.75*x[3]*x[27]+5.34*x[3]*x[28]-4.43*x[3]*x[29]-3.17*x[3]*x[30]-4.3*x[4]*x[4]-6.57*x[4]*x[5]-2.87*x[4]*x[6]-8.08*x[4]*x[7]+4.61*x[4]*x[8]-8.33*x[4]*x[9]-7.35*x[4]*x[10]-9.57*x[4]*x[11]-4.9*x[4]*x[12]-8.77*x[4]*x[13]-2.24*x[4]*x[14]-3.54*x[4]*x[15]-0.59*x[4]*x[16]-1.41*x[4]*x[17]-5.38*x[4]*x[18]-1.98*x[4]*x[19]-2.84*x[4]*x[20]-9.05*x[4]*x[21]-1.64*x[4]*x[22]-2.78*x[4]*x[23]-5.82*x[4]*x[24]-5.27*x[4]*x[25]-5.6*x[4]*x[26]-4.28*x[4]*x[27]-4.72*x[4]*x[28]-4.19*x[4]*x[29]-7.94*x[4]*x[30]-8.02*x[5]*x[5]-1.7*x[5]*x[6]-4.61*x[5]*x[7]-5.34*x[5]*x[8]-8.26*x[5]*x[9]-2.15*x[5]*x[10]-9.4*x[5]*x[11]-8.5*x[5]*x[12]+1.45*x[5]*x[13]-8.18*x[5]*x[14]-6.07*x[5]*x[15]-8.02*x[5]*x[16]-4.37*x[5]*x[17]-1.74*x[5]*x[18]-9.43*x[5]*x[19]-2.73*x[5]*x[20]-4.14*x[5]*x[21]-4.42*x[5]*x[22]-2.42*x[5]*x[23]-0.33*x[5]*x[24]-8.72*x[5]*x[25]-6.25*x[5]*x[26]-5.82*x[5]*x[27]-4.83*x[5]*x[28]-1.17*x[5]*x[29]-0.55*x[5]*x[30]+3*x[6]*x[6]-0.62*x[6]*x[7]-6.3*x[6]*x[8]-7.1*x[6]*x[9]-0.48*x[6]*x[10]-7.83*x[6]*x[11]-2.95*x[6]*x[12]-0.82*x[6]*x[13]+0.38*x[6]*x[14]-8.57*x[6]*x[15]-0.49*x[6]*x[16]-8.07*x[6]*x[17]-5.51*x[6]*x[18]-8.88*x[6]*x[19]-2.88*x[6]*x[20]-7.89*x[6]*x[21]-3.3*x[6]*x[22]-6.02*x[6]*x[23]-8.8*x[6]*x[24]-0.24*x[6]*x[25]-9.21*x[6]*x[26]-5.74*x[6]*x[27]-1.2*x[6]*x[28]-8.46*x[6]*x[29]-5.84*x[6]*x[30]-9.22*x[7]*x[7]-4.85*x[7]*x[8]-8.23*x[7]*x[9]-8.43*x[7]*x[10]-4.56*x[7]*x[11]-5.12*x[7]*x[12]-0.06*x[7]*x[13]-2.88*x[7]*x[14]-2.15*x[7]*x[15]-6.64*x[7]*x[16]-7.64*x[7]*x[17]-7.1*x[7]*x[18]-8.95*x[7]*x[19]-5.15*x[7]*x[20]-9.15*x[7]*x[21]-1.73*x[7]*x[22]-1.19*x[7]*x[23]-1.01*x[7]*x[24]-3.77*x[7]*x[25]-1.05*x[7]*x[26]+0.19*x[7]*x[27]-7.77*x[7]*x[28]-0.49*x[7]*x[29]+0.11*x[7]*x[30]-1.03*x[8]*x[8]-4.39*x[8]*x[9]-1.58*x[8]*x[10]-9.04*x[8]*x[11]-8.77*x[8]*x[12]+4.26*x[8]*x[13]-7.68*x[8]*x[14]-0.29*x[8]*x[15]-1.8*x[8]*x[16]-9.81*x[8]*x[17]-6.9*x[8]*x[18]-0.08*x[8]*x[19]+7.19*x[8]*x[20]-5.82*x[8]*x[21]-5.01*x[8]*x[22]-9.55*x[8]*x[23]+7.51*x[8]*x[24]-0.12*x[8]*x[25]-8.9*x[8]*x[26]-7*x[8]*x[27]-3.98*x[8]*x[28]-4.96*x[8]*x[29]-0.56*x[8]*x[30]+6.83*x[9]*x[9]-5.62*x[9]*x[10]-7.52*x[9]*x[11]-3.77*x[9]*x[12]-6.24*x[9]*x[13]-8.93*x[9]*x[14]-3.09*x[9]*x[15]-0.54*x[9]*x[16]-5.69*x[9]*x[17]-8.02*x[9]*x[18]-9.23*x[9]*x[19]-9.73*x[9]*x[20]+3.89*x[9]*x[21]+9.66*x[9]*x[22]-4.41*x[9]*x[23]-4.84*x[9]*x[24]+3.46*x[9]*x[25]-3.13*x[9]*x[26]-9.56*x[9]*x[27]-3.2*x[9]*x[28]-8.01*x[9]*x[29]-9.38*x[9]*x[30]-6.01*x[10]*x[10]-3.88*x[10]*x[11]-6.71*x[10]*x[12]-9.32*x[10]*x[13]-8.12*x[10]*x[14]-6.27*x[10]*x[15]-7.2*x[10]*x[16]-5.89*x[10]*x[17]-4.24*x[10]*x[18]+6.74*x[10]*x[19]-2.88*x[10]*x[20]-9.55*x[10]*x[21]-4.28*x[10]*x[22]-5.43*x[10]*x[23]-5.37*x[10]*x[24]-1.92*x[10]*x[25]+7.35*x[10]*x[26]-0.43*x[10]*x[27]+8.25*x[10]*x[28]-7.27*x[10]*x[29]-7.99*x[10]*x[30]-1.5*x[11]*x[11]-2.83*x[11]*x[12]-6.55*x[11]*x[13]-4.32*x[11]*x[14]+0.52*x[11]*x[15]-2.09*x[11]*x[16]-3.56*x[11]*x[17]-6.67*x[11]*x[18]-0.88*x[11]*x[19]-3.55*x[11]*x[20]-8.08*x[11]*x[21]-9.99*x[11]*x[22]-2.96*x[11]*x[23]-7.12*x[11]*x[24]-5.54*x[11]*x[25]-8.56*x[11]*x[26]-7.96*x[11]*x[27]+8.78*x[11]*x[28]-8*x[11]*x[29]-6.46*x[11]*x[30]-7.16*x[12]*x[12]-6.16*x[12]*x[13]-6.03*x[12]*x[14]-2.13*x[12]*x[15]-8.89*x[12]*x[16]-6.79*x[12]*x[17]-6.28*x[12]*x[18]-0.65*x[12]*x[19]-0.35*x[12]*x[20]-5.09*x[12]*x[21]-4.4*x[12]*x[22]-1.87*x[12]*x[23]+6.49*x[12]*x[24]-8.96*x[12]*x[25]-7.9*x[12]*x[26]-8.21*x[12]*x[27]-3.13*x[12]*x[28]-1.99*x[12]*x[29]-8.79*x[12]*x[30]-0.24*x[13]*x[13]-6.49*x[13]*x[14]-2.08*x[13]*x[15]-0.59*x[13]*x[16]-3.63*x[13]*x[17]-6.34*x[13]*x[18]-2.6*x[13]*x[19]-9.43*x[13]*x[20]-5.96*x[13]*x[21]-4.98*x[13]*x[22]-6.89*x[13]*x[23]-3.91*x[13]*x[24]-6.6*x[13]*x[25]-9.13*x[13]*x[26]-2.02*x[13]*x[27]+3.38*x[13]*x[28]-8.46*x[13]*x[29]-7.12*x[13]*x[30]-2.91*x[14]*x[14]-9.46*x[14]*x[15]+4.62*x[14]*x[16]-8.3*x[14]*x[17]-2.56*x[14]*x[18]-0.32*x[14]*x[19]-8.66*x[14]*x[20]-7.12*x[14]*x[21]-9.47*x[14]*x[22]-2.47*x[14]*x[23]-1.88*x[14]*x[24]-8.87*x[14]*x[25]-8.02*x[14]*x[26]-9.8*x[14]*x[27]-5.93*x[14]*x[28]+9.41*x[14]*x[29]-3.03*x[14]*x[30]-4.5*x[15]*x[15]-4.37*x[15]*x[16]-5.94*x[15]*x[17]-4.05*x[15]*x[18]-9.56*x[15]*x[19]-1.36*x[15]*x[20]-1.15*x[15]*x[21]-0.73*x[15]*x[22]-7.54*x[15]*x[23]-1.25*x[15]*x[24]+7.77*x[15]*x[25]-4.84*x[15]*x[26]-5.25*x[15]*x[27]-7.21*x[15]*x[28]-5.9*x[15]*x[29]-0.19*x[15]*x[30]-9.21*x[16]*x[16]-2.49*x[16]*x[17]+0.1*x[16]*x[18]-6.09*x[16]*x[19]-1.25*x[16]*x[20]-2.71*x[16]*x[21]-8.61*x[16]*x[22]-5.58*x[16]*x[23]-9.34*x[16]*x[24]-2.67*x[16]*x[25]-1.76*x[16]*x[26]-4.13*x[16]*x[27]-2.9*x[16]*x[28]-6*x[16]*x[29]-1.82*x[16]*x[30]-9.9*x[17]*x[17]-7.72*x[17]*x[18]-1.18*x[17]*x[19]-1.48*x[17]*x[20]-1.4*x[17]*x[21]-9.82*x[17]*x[22]-2.4*x[17]*x[23]-3.11*x[17]*x[24]-3.56*x[17]*x[25]-3.12*x[17]*x[26]-8.54*x[17]*x[27]-6*x[17]*x[28]-8.11*x[17]*x[29]-0.61*x[17]*x[30]-8.91*x[18]*x[18]-3.82*x[18]*x[19]-9.17*x[18]*x[20]-3.58*x[18]*x[21]-9.01*x[18]*x[22]-9.39*x[18]*x[23]+0.15*x[18]*x[24]-8.75*x[18]*x[25]-4.91*x[18]*x[26]-9.03*x[18]*x[27]-2.6*x[18]*x[28]-7.9*x[18]*x[29]-9.5*x[18]*x[30]-3.64*x[19]*x[19]-3.31*x[19]*x[20]-9.71*x[19]*x[21]-9.22*x[19]*x[22]+8.72*x[19]*x[23]+0.27*x[19]*x[24]+8.47*x[19]*x[25]+4.63*x[19]*x[26]-0.5*x[19]*x[27]-3.68*x[19]*x[28]-9.39*x[19]*x[29]-3.26*x[19]*x[30]-0.31*x[20]*x[20]-2.73*x[20]*x[21]-5.22*x[20]*x[22]-8.16*x[20]*x[23]-4.56*x[20]*x[24]-4.34*x[20]*x[25]-3.73*x[20]*x[26]-0.62*x[20]*x[27]-2.29*x[20]*x[28]-4.46*x[20]*x[29]-0.96*x[20]*x[30]-0.54*x[21]*x[21]-7.6*x[21]*x[22]+8.28*x[21]*x[23]-9.65*x[21]*x[24]-2.75*x[21]*x[25]-9.21*x[21]*x[26]-9.89*x[21]*x[27]-7.87*x[21]*x[28]-2.84*x[21]*x[29]+4.15*x[21]*x[30]-7.61*x[22]*x[22]+7.17*x[22]*x[23]-0.96*x[22]*x[24]-7.93*x[22]*x[25]-5.76*x[22]*x[26]-5.27*x[22]*x[27]+6.84*x[22]*x[28]-8.34*x[22]*x[29]-8.95*x[22]*x[30]-2.79*x[23]*x[23]-4.7*x[23]*x[24]-5.02*x[23]*x[25]-9.63*x[23]*x[26]-8.68*x[23]*x[27]-1.36*x[23]*x[28]-2.01*x[23]*x[29]-5.12*x[23]*x[30]-4.21*x[24]*x[24]-5.99*x[24]*x[25]-5.51*x[24]*x[26]-4.7*x[24]*x[27]-0.03*x[24]*x[28]-4.96*x[24]*x[29]-3.99*x[24]*x[30]-3.09*x[25]*x[25]-6.13*x[25]*x[26]-0.23*x[25]*x[27]-2.84*x[25]*x[28]-0.88*x[25]*x[29]-9.25*x[25]*x[30]-4.74*x[26]*x[26]-0.75*x[26]*x[27]-8.16*x[26]*x[28]-7.5*x[26]*x[29]-3.14*x[26]*x[30]-0.06*x[27]*x[27]-2.07*x[27]*x[28]+6.99*x[27]*x[29]-1.47*x[27]*x[30]-8.17*x[28]*x[28]-4.34*x[28]*x[29]-9.85*x[28]*x[30]-4.01*x[29]*x[29]-2.31*x[29]*x[30]-9.71*x[30]*x[30])+x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[31])

m = m 		 # model get returned when including this script. 