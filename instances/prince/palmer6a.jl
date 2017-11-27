using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, x[x_Idx])
setlowerbound(x[5], 1.0e-5)
setlowerbound(x[6], 1.0e-5)


# ----- Constraints ----- #
@NLconstraint(m, e1, -( (10.678659-x[5]/x[6]-x[1])^2+ (75.414511-x[5]/(2.467400073616+x[6])-x[1]-2.467400073616*x[2]-6.08806312328024*x[3]-15.0216873985605*x[4])^2+ (41.513459-x[5]/(1.949550365169+x[6])-x[1]-1.949550365169*x[2]-3.80074662633058*x[3]-7.40974697327763*x[4])^2+ (20.104735-x[5]/(1.4926241929+x[6])-x[1]-1.4926241929*x[2]-2.22792698123038*x[3]-3.32545771219912*x[4])^2+ (7.432436-x[5]/(1.096623651204+x[6])-x[1]-1.096623651204*x[2]-1.20258343237999*x[3]-1.31878143449399*x[4])^2+ (1.298082-x[5]/(0.761544202225+x[6])-x[1]-0.761544202225*x[2]-0.579949571942512*x[3]-0.44165723409569*x[4])^2+ (0.1713-x[5]/(0.616850018404+x[6])-x[1]-0.616850018404*x[2]-0.380503945205015*x[3]-0.234713865602508*x[4])^2+ ((-x[5]/(0.536979718521+x[6]))-x[1]-0.536979718521*x[2]-0.288347218102892*x[3]-0.154836608013205*x[4])^2+ (0.068203-x[5]/(0.487388289424+x[6])-x[1]-0.487388289424*x[2]-0.237547344667653*x[3]-0.115777793974781*x[4])^2+ (0.774499-x[5]/(0.373156048225+x[6])-x[1]-0.373156048225*x[2]-0.139245436326899*x[3]-0.0519602767531113*x[4])^2+ (2.070002-x[5]/(0.274155912801+x[6])-x[1]-0.274155912801*x[2]-0.0751614645237495*x[3]-0.0206059599139685*x[4])^2+ (5.574556-x[5]/(0.121847072356+x[6])-x[1]-0.121847072356*x[2]-0.0148467090417283*x[3]-0.00180902803085595*x[4])^2+ (9.026378-x[5]/(0.030461768089+x[6])-x[1]-0.030461768089*x[2]-0.000927919315108019*x[3]-2.82660629821242e-5*x[4])^2)+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 