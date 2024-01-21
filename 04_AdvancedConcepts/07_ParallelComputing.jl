# =====================================================
# Introduction to Parallel Computing in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to parallel computing in Julia.
# You'll learn about setting up workers, distributing tasks, synchronizing results, and best practices for parallel computing.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with examples and @assert statements.

using Distributed

# ---------------------------
# Section 68: Setting Up Workers
# ---------------------------
println("Section 68: Setting Up Workers")

# Julia uses workers to achieve parallel computing. You can start workers on your local machine or on remote machines.

# Add workers (for local machines)
addprocs(4)  # Adds 4 workers

# Check the number of workers
worker_count = nworkers()
println("Number of workers: ", worker_count)

# Assert that the correct number of workers have been added
@assert worker_count == 4

# ---------------------------
# Section 69: Distributing Tasks
# ---------------------------
println("Section 69: Distributing Tasks")

# You can distribute tasks among workers using the @distributed macro for parallel loops or the pmap function for parallel map.

# Example: Calculate the squares of numbers in parallel
n = 10
squares = @distributed (vcat) for i in 1:n
    i^2
end

println("Squares: ", squares)

# Assert that the calculation is correct
@assert squares == [i^2 for i in 1:n]

# ---------------------------
# Section 70: Synchronizing Results
# ---------------------------
println("Section 70: Synchronizing Results")

# When tasks are distributed, you need to synchronize the results to ensure all computations are complete.

# Example: Collect results from all workers
results = @distributed (vcat) for i in 1:n
    (i, myid())  # Tuple of the value and the worker ID
end

println("Results: ", results)

# ---------------------------
# Section 71: Best Practices for Parallel Computing
# ---------------------------
println("Section 71: Best Practices for Parallel Computing")

# Discuss best practices for parallel computing, such as minimizing data transfer between workers, understanding the limitations of parallel speedup, and structuring code for parallel execution.

# ---------------------------
# Conclusion
# ---------------------------
println("Congratulations! You've completed the tutorial on parallel computing in Julia.")
println("You've learned how to set up workers, distribute tasks, synchronize results, and understand best practices for parallel computing.")
println("These skills are crucial for leveraging Julia's high-performance capabilities for large-scale computations.")
