# =====================================================
# Introduction to Mathematical Optimization with JuMP and HiGHS
# =====================================================

# This Julia script is an interactive tutorial to introduce you to mathematical optimization using JuMP and the HiGHS solver.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

# Suppose we are planning the production of two products (Product A and Product B). The profit from each unit of Product A is $100, and from Product B is $150. The production of these products is constrained by the available hours in two different departments: Cutting and Finishing.

# Each unit of Product A requires 2 hours of Cutting and 4 hours of Finishing.
# Each unit of Product B requires 4 hours of Cutting and 3 hours of Finishing.
# There are 40 hours available in the Cutting department and 60 hours available in the Finishing department.
# We want to maximize the profit given these constraints.

using JuMP, HiGHS

# ---------------------------
# Section 36: Defining an Optimization Model
# ---------------------------
println("Section 36: Defining an Optimization Model")

# An optimization model in JuMP is defined within a Model object.
model = Model(HiGHS.Optimizer)

println("Optimization model created successfully!")

# ---------------------------
# Section 37: Adding Variables to the Model
# ---------------------------
println("Section 37: Adding Variables to the Model")

# Variables represent the number of units of Product A and Product B to produce.
@variable(model, productA >= 0)
@variable(model, productB >= 0)

println("Variables added to the model successfully!")

# ---------------------------
# Section 38: Setting Up Constraints
# ---------------------------
println("Section 38: Setting Up Constraints")

# Adding constraints based on the Cutting and Finishing department hours.
@constraint(model, 2*productA + 4*productB <= 40) # Cutting department constraint
@constraint(model, 4*productA + 3*productB <= 60) # Finishing department constraint

println("Constraints added to the model successfully!")

# ---------------------------
# Section 39: Defining the Objective Function
# ---------------------------
println("Section 39: Defining the Objective Function")

# The objective function is to maximize profit.
@objective(model, Max, 100*productA + 150*productB)

println("Objective function defined successfully!")

# ---------------------------
# Section 40: Solving the Model
# ---------------------------
println("Section 40: Solving the Model")

# Solve the model.
optimize!(model)

# Check the status of the solution.
status = termination_status(model)
println("Model solved. Status: ", status)

# Assert the model was solved to optimality.
@assert status == MOI.OPTIMAL

# Get the values of the variables.
val_productA = value(productA)
val_productB = value(productB)
println("Solution: Product A = ", val_productA, ", Product B = ", val_productB)

# Assert the solution is as expected.
@assert val_productA ≈ 12 atol=1e-4
@assert val_productB ≈ 4 atol=1e-4

# ---------------------------
# Conclusion
# ---------------------------
println("Excellent! You've completed the tutorial on mathematical optimization with JuMP and HiGHS.")
println("You've learned how to define optimization models, add variables and constraints, define an objective function, and solve the model.")
println("These skills are fundamental for solving various optimization problems efficiently in your Julia projects.")
