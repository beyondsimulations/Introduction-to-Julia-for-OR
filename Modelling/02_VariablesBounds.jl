# =====================================================
# Advanced Variables in JuMP
# =====================================================

# This Julia script is an interactive tutorial to introduce you to advanced variable handling in JuMP.
# You'll learn about creating variables in containers, managing different types of variables, and working with indexed variables.
# Make sure to have the JuMP package installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

using JuMP

# ---------------------------
# Section 41: Creating Variables in Containers
# ---------------------------
println("Section 41: Creating Variables in Containers")

# JuMP supports creating variables in containers like arrays, dictionaries, and matrices.

model = Model()

# Exercise 41.1: Create an array of variables
@variable(model, x[1:3] >= 0)

# Check the creation of the array of variables
@assert length(x) == 3 && all(x[i].lb == 0 for i in 1:3)

println("Array of variables created successfully!")

# Exercise 41.2: Create a matrix of variables
@variable(model, y[1:2, 1:2] >= 0)

# Check the creation of the matrix of variables
@assert size(y, 1) == 2 && size(y, 2) == 2 && all(y[i, j].lb == 0 for i in 1:2, j in 1:2)

println("Matrix of variables created successfully!")

# Exercise 41.3: Create a dictionary of variables
indices = ["height", "width", "depth"]
@variable(model, z[i in indices] >= 0)

# Check the creation of the dictionary of variables
@assert length(z) == 3 && all(z[i].lb == 0 for i in indices)

println("Dictionary of variables created successfully!")

# ---------------------------
# Section 42: Managing Different Types of Variables
# ---------------------------
println("Section 42: Managing Different Types of Variables")

# JuMP allows creating continuous, integer, and binary variables.

# Exercise 42.1: Create continuous, integer, and binary variables
@variable(model, continuous_var)
@variable(model, integer_var, Int)
@variable(model, binary_var, Bin)

# Check the types of variables
@assert typeof(continuous_var) == VariableRef && typeof(integer_var) == VariableRef
@assert typeof(binary_var) == VariableRef && binary_var.ub == 1 && binary_var.lb == 0

println("Continuous, integer, and binary variables created successfully!")

# ---------------------------
# Section 43: Working with Indexed Variables
# ---------------------------
println("Section 43: Working with Indexed Variables")

# Indexed variables are useful when you want to create a large number of variables based on sets or ranges.

# Exercise 43.1: Create indexed variables based on a set
N = 1:5
@variable(model, w[i in N] >= 0)

# Check the creation of indexed variables
@assert length(w) == 5 && all(w[i].lb == 0 for i in N)

println("Indexed variables created successfully!")

# ---------------------------
# Section 44: Summarizing and Inspecting Variables
# ---------------------------
println("Section 44: Summarizing and Inspecting Variables")

# JuMP provides functions to summarize and inspect variables.

# Exercise 44.1: Summarize and inspect variables
println("Summary of model variables:")
println(JuMP.summary(model))

# ---------------------------
# Conclusion
# ---------------------------
println("Fantastic! You've completed the tutorial on advanced variables in JuMP.")
println("You've learned how to create variables in containers, manage different types of variables, and work with indexed variables.")
println("These skills will enhance your ability to model and solve complex optimization problems in Julia.")
