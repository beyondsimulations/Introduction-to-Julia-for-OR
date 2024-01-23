# Introduction to Mathematical Optimization with JuMP and HiGHS
# ================================================================
println()
println("Introduction to Mathematical Optimization with JuMP and HiGHS")
println()

#= This Julia script is an interactive tutorial to introduce you to mathematical 
optimization using JuMP and the HiGHS solver. Follow the instructions, write your 
code in the designated code blocks, and confirm your understanding with @assert 
statements.

JuMP is a general framework to formulate mathematical models in Julia, HiGHS is a 
open source solver with a MIT license and draws quiet some attention, as it is 
pretty fast for an open source solver. Nonetheless, we could also use other solvers
in JuMP by only changing of a few lines of code, making it more versatile as for
example GurobiPy in Python.

If you ever feel like you need more information, the JuMP Documentation is a great 
ressource: https://jump.dev/JuMP.jl/stable/tutorials/getting_started/getting_started_with_JuMP/

We are going to structure this tutorial based on a small example instanc: Suppose we 
are planning the production of two products (Product A and Product B). The profit 
from each unit of Product A is 100, and from Product B is 150. The production of 
these products is constrained by the available hours in two different departments: 
Cutting and Finishing. Each unit of Product A requires 2 hours of Cutting and 4 
hours of Finishing. Each unit of Product B requires 4 hours of Cutting and 3 hours 
of Finishing. There are 40 hours available in the Cutting department and 60 hours 
available in the Finishing department. We want to maximize the profit given these 
constraints.

If you followed the struture of the tutorials, you first have to install the JuMP 
Package and the HiGHS Package before you can start using it:
import Pkg; Pkg.add(["JuMP","HiGHS"]) =#

using JuMP, HiGHS

## Section 1: Defining an Optimization Model
# ---------------------------
println("Section 1: Defining an Optimization Model")

# An optimization model in JuMP is defined within a Model object.
model = Model(HiGHS.Optimizer)
println("Optimization model created successfully!")

## Section 2: Adding Variables to the Model
# ---------------------------
println("Section 2: Adding Variables to the Model")

#= To define a variable for the model, we can call the Macro @variable(). Inside the 
braces, we nee to specify the model, the variable name and it's type and/or bounds.
For example:
@variable(modelName, variableName >= 0)
This defines a continous variable equal or larger 0. =#

## Exercise 2.1: 
#= Create two continous variables equal or larger 0 called 'productA' and 'productB' 
that represent the the number of units produced in our problem for our model 
'model'. =#

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your answer
@assert @isdefined productA
@assert typeof(productA) == VariableRef
@assert has_upper_bound(productA) == false
@assert has_lower_bound(productA) == true
@assert lower_bound(productA) == 0
@assert @isdefined productA
@assert typeof(productB) == VariableRef
@assert has_upper_bound(productB) == false
@assert has_lower_bound(productB) == true
@assert lower_bound(productB) == 0
println("Variables added to the model successfully!")

## Section 3: Setting Up Constraints
# ---------------------------
println("Section 3: Setting Up Constraints")

#= To define constraints, we use the Macro constraint(). Inside the braces, we 
need to specify the model and the actual constraint. For example:
constraint(modelName, constraintName, 4 * variableName <= 100)
This defines a constraint that ensures, that the variable 'variableName' can 
maximally be 25. Note, that you will have to change 'modelName', 'constraintName' 
and 'variableName' according to your instance. =#

## Exercise 3.1: 
#= Create two constraints based on the on the Cutting and Finishing department hours 
of the problem description in this tutorial. Call the first constraint 
'cutting_constraint' and the second constrant 'finishing_constraint'. =#

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your answer
@assert is_valid(model, cutting_constraint)
@assert is_valid(model, finishing_constraint)
println("Constraints added to the model successfully!")
println("Note, that only the existence of these constraints was checked!")
println("The optimization later will show, whether the formulation was correct.")

## Section 4: Defining the Objective Function
# ---------------------------
println("Section 4: Defining the Objective Function")

#= To define an objective function for the model, we can call the Macro 
@objective(). Inside the braces, we first specify the model, the direction - 'Max' 
or 'Min' and the actual objective. For example:
@objective(model, Max, 2*variableA + 3*variableB) =#

## Exercise 3.1: 
#= Create the objective function based on the problem description of this tutorial. 
The objective is to maximize profit based on the values of 'productA' and 
'productB'. =#

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your answer
@assert typeof(objective_function(model)) == AffExpr
println("An objective function defined successfully!")
println("The optimization later will show, whether the formulation was correct.")

## Section 5: Solving the Model
# ---------------------------
println("Section 40: Solving the Model")

# We can then solve the model as follows:
optimize!(model)

# To check the status of the solution, the following is often included in the code:
begin
    if termination_status(model) == OPTIMAL
        println("Solution is optimal")
    elseif termination_status(model) == TIME_LIMIT && has_values(model)
        println("Solution is suboptimal due to a time limit, 
            but a primal solution is available") 
    else
        error("The model was not solved correctly.") 
    end
    println("Objective value = ", objective_value(model)) 
end

# We can then get the values of the variables as follows:
val_productA = value(productA)
val_productB = value(productB)
println("Optimal solution:")
println("Product A quantity: $val_productA")
println("Product B quantity: $val_productB")
# Note, that the values can be slightly off due to the nature of Float64 numbers!

# Test your answer
@assert termination_status(model) == MOI.OPTIMAL "Sorry, something didn't work out 
    as the model status is $termination_status(model)".
println("Solution: Product A = ", val_productA, ", Product B = ", val_productB)
@assert val_productA ≈ 12 atol=1e-4 "Although you have a solution, 
    val_productA should be 12 not $val_productA"
@assert val_productB ≈ 4 atol=1e-4 "Although you have a solution, 
    val_productB should be 4 not $val_productB"
println("You have solved the model correctly!")

## Conclusion
# ---------------------------
println()
println("Excellent! You've completed the tutorial on mathematical optimization")
println("with JuMP and HiGHS. You've learned how to define optimization models,")
println("add variables and constraints, define an objective function, and solve")
println("the model. Continue to the next file to learn more.")
