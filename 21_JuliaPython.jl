# =====================================================
# Advanced Interoperability with Python in Julia
# =====================================================

# This Julia script is an interactive tutorial to dive deeper into interoperability between Julia and Python using the PyCall package.
# You'll learn how to call Python functions, access Python libraries, and manage data interchange between Julia and Python.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with examples and @assert statements.

using PyCall

# ---------------------------
# Section 80: Setup and Basics of PyCall
# ---------------------------
println("Section 80: Setup and Basics of PyCall")

# PyCall is used to call Python functions and use Python libraries from Julia.
# Let's start by importing a simple Python module and calling a function.

# Example: Import the Python 'math' module and call the 'sqrt' function
math = pyimport("math")
sqrt_result = math.sqrt(16)

println("Square root of 16 calculated by Python's math.sqrt: ", sqrt_result)

# Assert that the result is correct
@assert sqrt_result == 4.0

# ---------------------------
# Section 81: Using Python Libraries in Julia
# ---------------------------
println("Section 81: Using Python Libraries in Julia")

# PyCall can be used to access a wide range of Python libraries and use their functionality within Julia.

# Exercise 81.1: Use a Python library to perform a task
# Example: Use NumPy to create an array and perform an operation
np = pyimport("numpy")
py_array = np.array([1, 2, 3, 4])
py_array_sum = np.sum(py_array)

println("Sum of array elements calculated by NumPy: ", py_array_sum)

# Assert that the sum is correct
@assert py_array_sum == 10

# ---------------------------
# Section 82: Data Interchange Between Julia and Python
# ---------------------------
println("Section 82: Data Interchange Between Julia and Python")

# Data interchange between Julia and Python is seamless with PyCall.
# You can pass data from Julia to Python and vice versa.

# Exercise 82.1: Pass a Julia array to Python and perform an operation
jl_array = [10, 20, 30, 40]
py_mean = np.mean(jl_array)

println("Mean of array calculated by Python: ", py_mean)

# Assert that the mean is correct
@assert py_mean == 25.0

# Exercise 82.2: Retrieve data from Python back into Julia
py_list = py_array.tolist()  # Convert Python array to list
jl_array_from_py = Vector{Int}(py_list)  # Convert Python list to Julia array

println("Julia array retrieved from Python: ", jl_array_from_py)

# Assert that the data is retrieved correctly
@assert jl_array_from_py == [1, 2, 3, 4]

# ---------------------------
# Section 83: Advanced Python Integration
# ---------------------------
println("Section 83: Advanced Python Integration")

# PyCall allows for more advanced integration, such as calling Python code directly, embedding Python code in Julia, or handling Python exceptions.

# Example: Embed Python code using py"..." syntax and handle Python exceptions
py"""
def python_function(x):
    return x * 2
"""
try
    result = py"python_function"(10)
    println("Result from embedded Python function: ", result)
    @assert result == 20
catch e
    println("Caught Python exception: ", e)
end

# ---------------------------
# Conclusion
# ---------------------------
println("Congratulations! You've completed the advanced tutorial on interoperability with Python in Julia.")
println("You've explored using Python libraries, managing data interchange between Julia and Python, and advanced Python integration techniques.")
println("These skills will enable you to leverage Python's extensive ecosystem effectively within your Julia projects.")
