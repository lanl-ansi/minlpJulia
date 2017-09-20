using JuMP
function lee1(;options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

    xIdx = Any[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,50]
    bIdx = Any[41,42,43,44,45,46,47,48,49]
    @variable(m, x[1:50])
    for i in bIdx
      setcategory(x[i], :Bin)
    end

    for i=1:20
      setlowerbound(x[i], 0.0)
      setupperbound(x[i], 686.0)
    end

    setlowerbound(x[21], 0.0)
    setlowerbound(x[22], 0.0)
    setlowerbound(x[23], 0.0)
    setlowerbound(x[24], 0.0)
    setlowerbound(x[25], 0.0)
    setlowerbound(x[26], 0.0)
    setlowerbound(x[27], 0.0)
    setlowerbound(x[28], 0.0)
    setlowerbound(x[29], 0.0)
    setlowerbound(x[30], 0.0)
    setlowerbound(x[31], 0.0)
    setlowerbound(x[32], 0.0)
    setupperbound(x[21],229.0)
    setupperbound(x[22],173.0)
    setupperbound(x[23],284.0)
    setupperbound(x[24],229.0)
    setupperbound(x[25],173.0)
    setupperbound(x[26],284.0)
    setupperbound(x[27],229.0)
    setupperbound(x[28],173.0)
    setupperbound(x[29],284.0)
    setupperbound(x[30],229.0)
    setupperbound(x[31],173.0)
    setupperbound(x[32],284.0)
    setlowerbound(x[33],0.13)
    setupperbound(x[33],0.89)
    setlowerbound(x[34],0.11)
    setupperbound(x[34],0.87)
    setlowerbound(x[35],0.13)
    setupperbound(x[35],0.89)
    setlowerbound(x[36],0.11)
    setupperbound(x[36],0.87)
    setlowerbound(x[37],0.13)
    setupperbound(x[37],0.89)
    setlowerbound(x[38],0.11)
    setupperbound(x[38],0.87)
    setlowerbound(x[39],0.13)
    setupperbound(x[39],0.89)
    setlowerbound(x[40],0.11)
    setupperbound(x[40],0.87)

    @objective(m, Min, x[50])

    @NLconstraint(m, e12,-(x[33]*x[21]+x[33]*x[22]+x[33]*x[23])+0.13*x[1]+0.89*x[5]+0.69*x[9]+0.28*x[13]+0.35*x[17]==0.0)
    @NLconstraint(m, e13,-(x[34]*x[21]+x[34]*x[22]+x[34]*x[23])+0.87*x[1]+0.11*x[5]+0.31*x[9]+0.72*x[13]+0.65*x[17]==0.0)
    @NLconstraint(m, e14,-(x[35]*x[24]+x[35]*x[25]+x[35]*x[26])+0.13*x[2]+0.89*x[6]+0.69*x[10]+0.28*x[14]+0.35*x[18]==0.0)
    @NLconstraint(m, e15,-(x[36]*x[24]+x[36]*x[25]+x[36]*x[26])+0.87*x[2]+0.11*x[6]+0.31*x[10]+0.72*x[14]+0.65*x[18]==0.0)
    @NLconstraint(m, e16,-(x[37]*x[27]+x[37]*x[28]+x[37]*x[29])+0.13*x[3]+0.89*x[7]+0.69*x[11]+0.28*x[15]+0.35*x[19]==0.0)
    @NLconstraint(m, e17,-(x[38]*x[27]+x[38]*x[28]+x[38]*x[29])+0.87*x[3]+0.11*x[7]+0.31*x[11]+0.72*x[15]+0.65*x[19]==0.0)
    @NLconstraint(m, e18,-(x[39]*x[30]+x[39]*x[31]+x[39]*x[32])+0.13*x[4]+0.89*x[8]+0.69*x[12]+0.28*x[16]+0.35*x[20]==0.0)
    @NLconstraint(m, e19,-(x[40]*x[30]+x[40]*x[31]+x[40]*x[32])+0.87*x[4]+0.11*x[8]+0.31*x[12]+0.72*x[16]+0.65*x[20]==0.0)
    @NLconstraint(m, e20,0.56*x[21]-(x[33]*x[21]+x[35]*x[24]+x[37]*x[27]+x[39]*x[30])+0.56*x[24]+0.56*x[27]+0.56*x[30]<=0.0)
    @NLconstraint(m, e21,0.44*x[21]-(x[34]*x[21]+x[36]*x[24]+x[38]*x[27]+x[40]*x[30])+0.44*x[24]+0.44*x[27]+0.44*x[30]<=0.0)
    @NLconstraint(m, e22,0.3*x[22]-(x[33]*x[22]+x[35]*x[25]+x[37]*x[28]+x[39]*x[31])+0.3*x[25]+0.3*x[28]+0.3*x[31]<=0.0)
    @NLconstraint(m, e23,0.7*x[22]-(x[34]*x[22]+x[36]*x[25]+x[38]*x[28]+x[40]*x[31])+0.7*x[25]+0.7*x[28]+0.7*x[31]<=0.0)
    @NLconstraint(m, e24,0.41*x[23]-(x[33]*x[23]+x[35]*x[26]+x[37]*x[29]+x[39]*x[32])+0.41*x[26]+0.41*x[29]+0.41*x[32]<=0.0)
    @NLconstraint(m, e25,0.59*x[23]-(x[34]*x[23]+x[36]*x[26]+x[38]*x[29]+x[40]*x[32])+0.59*x[26]+0.59*x[29]+0.59*x[32]<=0.0)
    @NLconstraint(m, e26,x[33]*x[21]+x[35]*x[24]+x[37]*x[27]+x[39]*x[30]-0.56*x[21]-0.56*x[24]-0.56*x[27]-0.56*x[30]<=0.0)
    @NLconstraint(m, e27,x[34]*x[21]+x[36]*x[24]+x[38]*x[27]+x[40]*x[30]-0.44*x[21]-0.44*x[24]-0.44*x[27]-0.44*x[30]<=0.0)
    @NLconstraint(m, e28,x[33]*x[22]+x[35]*x[25]+x[37]*x[28]+x[39]*x[31]-0.3*x[22]-0.3*x[25]-0.3*x[28]-0.3*x[31]<=0.0)
    @NLconstraint(m, e29,x[34]*x[22]+x[36]*x[25]+x[38]*x[28]+x[40]*x[31]-0.7*x[22]-0.7*x[25]-0.7*x[28]-0.7*x[31]<=0.0)
    @NLconstraint(m, e30,x[33]*x[23]+x[35]*x[26]+x[37]*x[29]+x[39]*x[32]-0.41*x[23]-0.41*x[26]-0.41*x[29]-0.41*x[32]<=0.0)
    @NLconstraint(m, e31,x[34]*x[23]+x[36]*x[26]+x[38]*x[29]+x[40]*x[32]-0.59*x[23]-0.59*x[26]-0.59*x[29]-0.59*x[32]<=0.0)

    @constraint(m, e1,-6.2*x[1]-9.4*x[2]-7.6*x[3]-10.2*x[4]-1.67*x[5]-2.53*x[6]-2.05*x[7]-2.75*x[8]-3.58*x[9]-5.42*x[10]-4.39*x[11]-5.89*x[12]-4.53*x[13]-6.87*x[14]-5.55*x[15]-7.45*x[16]-2.62*x[17]-3.98*x[18]-3.22*x[19]-4.32*x[20]+10.5*x[21]+11.2*x[22]+12.5*x[23]+10.5*x[24]+11.2*x[25]+12.5*x[26]+10.5*x[27]+11.2*x[28]+12.5*x[29]+10.5*x[30]+11.2*x[31]+12.5*x[32]-260*x[41]-70*x[42]-150*x[43]-190*x[44]-110*x[45]-310*x[46]-470*x[47]-380*x[48]-510*x[49]+x[50]==0.0)
    @constraint(m, e2,-x[21]-x[24]-x[27]-x[30]<=-229.0)
    @constraint(m, e3,-x[22]-x[25]-x[28]-x[31]<=-173.0)
    @constraint(m, e4,-x[23]-x[26]-x[29]-x[32]<=-284.0)
    @constraint(m, e5,x[21]+x[24]+x[27]+x[30]<=229.0)
    @constraint(m, e6,x[22]+x[25]+x[28]+x[31]<=173.0)
    @constraint(m, e7,x[23]+x[26]+x[29]+x[32]<=284.0)
    @constraint(m, e8,x[1]+x[5]+x[9]+x[13]+x[17]-x[21]-x[22]-x[23]==0.0)
    @constraint(m, e9,x[2]+x[6]+x[10]+x[14]+x[18]-x[24]-x[25]-x[26]==0.0)
    @constraint(m, e10,x[3]+x[7]+x[11]+x[15]+x[19]-x[27]-x[28]-x[29]==0.0)
    @constraint(m, e11,x[4]+x[8]+x[12]+x[16]+x[20]-x[30]-x[31]-x[32]==0.0)
    @constraint(m, e32,x[1]-686*x[46]<=0.0)
    @constraint(m, e33,x[2]-686*x[47]<=0.0)
    @constraint(m, e34,x[3]-686*x[48]<=0.0)
    @constraint(m, e35,x[4]-686*x[49]<=0.0)
    @constraint(m, e36,x[5]-686*x[46]<=0.0)
    @constraint(m, e37,x[6]-686*x[47]<=0.0)
    @constraint(m, e38,x[7]-686*x[48]<=0.0)
    @constraint(m, e39,x[8]-686*x[49]<=0.0)
    @constraint(m, e40,x[9]-686*x[46]<=0.0)
    @constraint(m, e41,x[10]-686*x[47]<=0.0)
    @constraint(m, e42,x[11]-686*x[48]<=0.0)
    @constraint(m, e43,x[12]-686*x[49]<=0.0)
    @constraint(m, e44,x[13]-686*x[46]<=0.0)
    @constraint(m, e45,x[14]-686*x[47]<=0.0)
    @constraint(m, e46,x[15]-686*x[48]<=0.0)
    @constraint(m, e47,x[16]-686*x[49]<=0.0)
    @constraint(m, e48,x[17]-686*x[46]<=0.0)
    @constraint(m, e49,x[18]-686*x[47]<=0.0)
    @constraint(m, e50,x[19]-686*x[48]<=0.0)
    @constraint(m, e51,x[20]-686*x[49]<=0.0)
    @constraint(m, e52,x[1]-686*x[41]<=0.0)
    @constraint(m, e53,x[2]-686*x[41]<=0.0)
    @constraint(m, e54,x[3]-686*x[41]<=0.0)
    @constraint(m, e55,x[4]-686*x[41]<=0.0)
    @constraint(m, e56,x[5]-686*x[42]<=0.0)
    @constraint(m, e57,x[6]-686*x[42]<=0.0)
    @constraint(m, e58,x[7]-686*x[42]<=0.0)
    @constraint(m, e59,x[8]-686*x[42]<=0.0)
    @constraint(m, e60,x[9]-686*x[43]<=0.0)
    @constraint(m, e61,x[10]-686*x[43]<=0.0)
    @constraint(m, e62,x[11]-686*x[43]<=0.0)
    @constraint(m, e63,x[12]-686*x[43]<=0.0)
    @constraint(m, e64,x[13]-686*x[44]<=0.0)
    @constraint(m, e65,x[14]-686*x[44]<=0.0)
    @constraint(m, e66,x[15]-686*x[44]<=0.0)
    @constraint(m, e67,x[16]-686*x[44]<=0.0)
    @constraint(m, e68,x[17]-686*x[45]<=0.0)
    @constraint(m, e69,x[18]-686*x[45]<=0.0)
    @constraint(m, e70,x[19]-686*x[45]<=0.0)
    @constraint(m, e71,x[20]-686*x[45]<=0.0)
    @constraint(m, e72,x[21]-229*x[46]<=0.0)
    @constraint(m, e73,x[22]-173*x[46]<=0.0)
    @constraint(m, e74,x[23]-284*x[46]<=0.0)
    @constraint(m, e75,x[24]-229*x[47]<=0.0)
    @constraint(m, e76,x[25]-173*x[47]<=0.0)
    @constraint(m, e77,x[26]-284*x[47]<=0.0)
    @constraint(m, e78,x[27]-229*x[48]<=0.0)
    @constraint(m, e79,x[28]-173*x[48]<=0.0)
    @constraint(m, e80,x[29]-284*x[48]<=0.0)
    @constraint(m, e81,x[30]-229*x[49]<=0.0)
    @constraint(m, e82,x[31]-173*x[49]<=0.0)
    @constraint(m, e83,x[32]-284*x[49]<=0.0)

    if verbose
        print(m)
    end

    return m
end
m = lee1()
