# Advanced Solver Options with HiGHS in JuMP
# =====================================================

# This Julia script is an interactive tutorial to introduce you to advanced solver options in HiGHS using JuMP.
# You'll learn about setting various solver parameters to control the optimization process and improve performance.
# Make sure to have the JuMP package and the HiGHS solver installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with examples.

using JuMP, HiGHS

# ---------------------------
# Section 65: Setting HiGHS Solver Options
# ---------------------------
println("Section 65: Setting HiGHS Solver Options")

# HiGHS offers various advanced options that can be set to control the solving process.

# Exercise 65.1: Create a model with HiGHS and set advanced options
model = Model(HiGHS.Optimizer)

# Set HiGHS solver-specific options
set_optimizer_attribute(model, "simplex_strategy", 1)
set_optimizer_attribute(model, "presolve", "on")
set_optimizer_attribute(model, "time_limit", 60.0)

println("HiGHS solver options set successfully!")

# ---------------------------
# Section 66: Understanding the Impact of Solver Options
# ---------------------------
println("Section 66: Understanding the Impact of Solver Options")

# Discuss how different solver options can impact the solving process, such as solution time, solution quality, and resource utilization.

# Exercise 66.1: Experiment with different solver options
# - Try different settings for 'simplex_strategy' or 'presolve'
# - Observe the changes in solution time, solution quality, or resource utilization

# ---------------------------
# Section 67: Solver Diagnostic Information
# ---------------------------
println("Section 67: Solver Diagnostic Information")

# HiGHS provides diagnostic information that can be useful for understanding the solver's behavior.

# Exercise 67.1: Retrieve and interpret diagnostic information from HiGHS
# - Retrieve the number of iterations, solution status, or other diagnostic information after solving
# - Interpret the information to understand the solver's performance and behavior

optimize!(model)
println("Number of iterations: ", get_optimizer_attribute(model, "simplex_iteration_count"))

# ---------------------------
# Conclusion
# ---------------------------
println("Well done! You've completed the tutorial on advanced solver options with HiGHS in JuMP.")
println("You've learned how to set advanced solver options, understand their impact, and interpret solver diagnostic information.")
println("These skills will enable you to fine-tune the optimization process and gain deeper insights into solver behavior for your Julia projects.")
