# =====================================================
# Advanced Handling of Objective Functions and Constraints in JuMP
# =====================================================

# This Julia script is an interactive tutorial to introduce you to advanced handling of objective functions and constraints in JuMP.
# You'll learn about defining and managing objective functions and constraints within containers (arrays, dictionaries, matrices), and how to implement conditional constraints effectively.
# Make sure to have the JuMP package installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

using JuMP

# ---------------------------
# Section 45: Objective Functions with Container Variables
# ---------------------------
println("Section 45: Objective Functions with Container Variables")

# Defining objective functions with variables in containers allows for scalable and dynamic model formulations.

model = Model()

# Example: Define an array of variables
@variable(model, profits[1:3] >= 0)

# Exercise 45.1: Define an objective function using an array of variables
# Objective: Maximize total profit
@objective(model, Max, sum(profits[i] for i in 1:3))

println("Objective function with container variables defined successfully!")

# ---------------------------
# Section 46: Constraints within Containers
# ---------------------------
println("Section 46: Constraints within Containers")

# Defining constraints within containers allows for structured and easily manageable models.

# Exercise 46.1: Define constraints using an array of variables
# Constraint: Each profit should be less than or equal to 100
@constraint(model, [i in 1:3], profits[i] <= 100)

println("Constraints within containers defined successfully!")

# ---------------------------
# Section 47: Implementing Conditional Constraints
# ---------------------------
println("Section 47: Implementing Conditional Constraints")

# Conditional constraints are added to the model based on certain conditions, allowing for dynamic and flexible model formulations.

# Exercise 47.1: Add a conditional constraint
# Condition: If the sum of the first two profits is greater than 150, set an upper limit on the third profit.
@constraint(model, conditional_constraint, sum(profits[i] for i in 1:2) > 150 => profits[3] <= 50)

println("Conditional constraint implemented successfully!")

# ---------------------------
# Section 48: Inspecting and Validating the Model
# ---------------------------
println("Section 48: Inspecting and Validating the Model")

# Inspecting the model helps ensure that all components (objective function, constraints) are set up correctly.

println("Model summary:")
println(JuMP.summary(model))

# Validate the model components
@assert has_objective(model)
@assert num_constraints(model, VariableRef, MOI.LessThan{Float64}) == 3
@assert num_constraints(model, MOI.VectorAffineFunction{Float64}, MOI.IndicatorSet{MOI.ACTIVATE_ON_GREATER_THAN, MOI.LessThan{Float64}}) == 1

println("Model components validated successfully!")

# ---------------------------
# Conclusion
# ---------------------------
println("Congratulations! You've completed the tutorial on advanced handling of objective functions and constraints in JuMP.")
println("You've learned how to define objective functions and constraints using container variables, and how to implement conditional constraints effectively.")
println("These advanced techniques will empower you to build complex and flexible optimization models in your Julia projects.")
