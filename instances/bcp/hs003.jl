using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -(1e-5* (x[2]-x[1])^2+x[2])+x[3] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[3])
m = m 		 # model get returned when including this script. 