# ==============================================
# Introduction to Vectors and Matrices in Julia
# ==============================================

# This Julia script is an interactive tutorial to introduce you to the basics of vectors and matrices in Julia.
# Follow the instructions, write your code in the designated code blocks, and confirm your answers with @assert statements.

# ---------------------------
# Section 3: Vectors
# ---------------------------
println("Section 3: Vectors")

# Vectors in Julia are one-dimensional arrays that can hold data of any type, though typically they hold data of a single type.
# You can create a vector using square brackets and separating elements with commas. For example:
# numbers = [1, 2, 3, 4, 5]

# Exercise 3.1: Create a vector named 'fib' with the first five numbers of the Fibonacci sequence: 1, 1, 2, 3, 5
# YOUR CODE HERE
fib = [1, 1, 2, 3, 5]

# Test your answer
@assert fib == [1, 1, 2, 3, 5]

# Vectors are essential for handling sequences of elements, and you'll often need to add, remove, or modify elements.

# Exercise 3.2: Append the number 8 to the 'fib' vector
# YOUR CODE HERE
push!(fib, 8)

# Test your answer
@assert fib == [1, 1, 2, 3, 5, 8]

# ---------------------------
# Section 4: Matrices
# ---------------------------
println("Section 4: Matrices")

# A matrix in Julia is a two-dimensional array, where each element can be accessed by its row and column indices.
# You can create a matrix using square brackets, separating elements with spaces and rows with semicolons. For example:
# matrix = [1 2 3; 4 5 6; 7 8 9]

# Exercise 4.1: Create a 2x3 matrix named 'my_matrix' with the following values:
# 1 2 3
# 4 5 6
# YOUR CODE HERE
my_matrix = [1 2 3; 4 5 6]

# Test your answer
@assert my_matrix == [1 2 3; 4 5 6]

# Matrices are particularly useful in linear algebra, which is fundamental in optimization and many areas of data analysis.

# Exercise 4.2: Transpose 'my_matrix' and store the result in a new variable 'my_matrix_transposed'
# YOUR CODE HERE
my_matrix_transposed = transpose(my_matrix)

# Test your answer
@assert my_matrix_transposed == [1 4; 2 5; 3 6]

# ---------------------------
# Conclusion
# ---------------------------
println("Well done! You have completed the tutorial on Vectors and Matrices in Julia.")
println("In this file, you've learned how to create, manipulate, and interact with vectors and matrices.")
println("These skills will be fundamental as you continue to learn more advanced Julia programming and tackle real-world problems.")
