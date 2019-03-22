using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (0.0426149+(1.173295*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))-0.564255*x[1]+0.392417*x[2]-0.404979*x[3]+0.927589*x[4]-0.0735084*x[5]))^2+ (0.0352053+(1.42024*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))+0.535493*x[1]+0.658799*x[2]-0.636666*x[3]-0.681091*x[4]-0.869487*x[5]))^2+ (0.0878058+(0.56444*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))+0.586387*x[1]+0.289826*x[2]+0.854402*x[3]+0.789312*x[4]+0.949721*x[5]))^2+ (0.0330812+(1.51143*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))+0.608734*x[1]+0.984915*x[2]+0.375699*x[3]+0.239547*x[4]+0.463136*x[5]))^2+ (0.0580924+(0.860695*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))+0.774227*x[1]+0.325421*x[2]-0.151719*x[3]+0.448051*x[4]+0.149926*x[5]))^2+ (0.649704+(0.0769585*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))-0.435033*x[1]-0.688583*x[2]+0.222278*x[3]-0.524653*x[4]+0.413248*x[5]))^2+ (0.344144+(0.1452885*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))+0.759468*x[1]-0.627795*x[2]+0.0403142*x[3]+0.724666*x[4]-0.0182537*x[5]))^2+ (-0.627443+(-0.079689*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))-0.152448*x[1]-0.546437*x[2]+0.484134*x[3]+0.353951*x[4]+0.887866*x[5]))^2+ (0.001828+(27.3455*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))-0.821772*x[1]-0.53412*x[2]-0.798498*x[3]-0.658572*x[4]+0.662362*x[5]))^2+ (-0.224783+(0.819831*x[1]-0.2224365*(x[1]*(0.354033*x[1]-0.0230349*x[2]-0.211938*x[3]-0.0554288*x[4]+0.220429*x[5])+x[2]*(0.29135*x[2]-0.0230349*x[1]-0.00180333*x[3]-0.111141*x[4]+0.0485461*x[5])+x[3]*(-0.211938*x[1]-0.00180333*x[2]+0.815808*x[3]-0.133538*x[4]-0.38067*x[5])+x[4]*(-0.0554288*x[1]-0.111141*x[2]-0.133538*x[3]+0.389198*x[4]-0.131586*x[5])+x[5]*(0.220429*x[1]+0.0485461*x[2]-0.38067*x[3]-0.131586*x[4]+0.534706*x[5]))-0.910632*x[2]-0.480344*x[3]-0.871758*x[4]-0.978666*x[5]))^2)+x[6] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[6])

m = m 		 # model get returned when including this script.