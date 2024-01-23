# =====================================================
# Evaluating the Results of an Optimization in JuMP
# =====================================================

# This Julia script introduces a basic transportation optimization problem to demonstrate how to evaluate optimization results in JuMP.
# You'll learn about defining a simple model, solving it, and then evaluating the results.
# Make sure to have the JuMP package installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

using JuMP, HiGHS

# ---------------------------
# Section 49: Defining the Model
# ---------------------------
println("Section 49: Defining the Model")

model = Model(HiGHS.Optimizer)

# Define data for the problem
costs = [2 3; 4 1]  # Shipping costs from warehouses to stores
supply = [20, 30]    # Supply at each warehouse
demand = [15, 30]    # Demand at each store

# Define variables (amount shipped from each warehouse to each store)
@variable(model, shipping[1:2, 1:2] >= 0)

# Define constraints
# Supply constraints
@constraint(model, [i in 1:2], sum(shipping[i, j] for j in 1:2) <= supply[i])

# Demand constraints
@constraint(model, [j in 1:2], sum(shipping[i, j] for i in 1:2) == demand[j])

# Define the objective function (minimize total shipping cost)
@objective(model, Min, sum(costs[i, j] * shipping[i, j] for i in 1:2, j in 1:2))

println("Model defined successfully!")

# ---------------------------
# Section 50: Solving the Model
# ---------------------------
println("Section 50: Solving the Model")

# Solve the model
optimize!(model)

# Check the solver status
status = termination_status(model)
println("Solver status: ", status)

# Validate solver status
@assert status == MOI.OPTIMAL

# ---------------------------
# Section 51: Retrieving and Interpreting the Results
# ---------------------------
println("Section 51: Retrieving and Interpreting the Results")

# Retrieve the optimal shipping plan
optimal_shipping = value.(shipping)
println("Optimal shipping plan: ")
println(optimal_shipping)

# Calculate the total shipping cost
total_cost = objective_value(model)
println("Total shipping cost: ", total_cost)

# Validate the results (optional)
@assert total_cost == 80  # Replace with the correct total cost based on the problem

# ---------------------------
# Conclusion
# ---------------------------
println("Congratulations! You've completed the tutorial on evaluating the results of an optimization in JuMP.")
println("You've learned how to define a model, solve it, and then retrieve and interpret the results.")
println("These skills are crucial for understanding and utilizing the outcomes of optimization models in real-world scenarios.")
