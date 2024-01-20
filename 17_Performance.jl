# =====================================================
# Performance Optimization in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to performance optimization in Julia.
# You'll learn about type stability, avoiding global variables, pre-allocating arrays, and using profiling tools to identify and fix bottlenecks.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with examples.

# ---------------------------
# Section 57: Understanding Type Stability
# ---------------------------
println("Section 57: Understanding Type Stability")

# Type stability is crucial for performance in Julia. Functions are more efficient when the output type can be inferred from the input types.

# Exercise 57.1: Write a type-stable function
function stable_function(x::Int)
    return x + 1
end

# Test type stability
@assert isa(stable_function(5), Int)

# ---------------------------
# Section 58: Avoiding Global Variables
# ---------------------------
println("Section 58: Avoiding Global Variables")

# Global variables can slow down Julia code because their types cannot be inferred reliably.

# Exercise 58.1: Rewrite a function to avoid using global variables
global_var = 10

function avoid_global()
    local local_var = global_var
    return local_var + 1
end

# Test the function
@assert avoid_global() == 11

# ---------------------------
# Section 59: Pre-allocating Arrays
# ---------------------------
println("Section 59: Pre-allocating Arrays")

# Pre-allocating memory for arrays, especially in loops, can lead to significant performance improvements.

# Exercise 59.1: Pre-allocate an array and fill it within a loop
n = 1000
pre_allocated_array = Array{Int}(undef, n)
for i in 1:n
    pre_allocated_array[i] = i
end

# Check the first and last elements
@assert pre_allocated_array[1] == 1 && pre_allocated_array[end] == n

# ---------------------------
# Section 60: Profiling and Identifying Bottlenecks
# ---------------------------
println("Section 60: Profiling and Identifying Bottlenecks")

# Julia provides powerful tools for profiling code and identifying performance bottlenecks.

# Exercise 60.1: Use the @time macro to measure the execution time of a code block
@time begin
    result = [i^2 for i in 1:n]
end

# Exercise 60.2: Introduce and demonstrate the use of the Profile package for detailed performance analysis

# ---------------------------
# Conclusion
# ---------------------------
println("Well done! You've completed the tutorial on performance optimization in Julia.")
println("You've learned about type stability, avoiding global variables, pre-allocating arrays, and using profiling tools.")
println("These skills are crucial for writing high-performance Julia code and developing efficient applications.")
