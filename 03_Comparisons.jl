# =================================================
# Introduction to Comparisons and Logical Operators in Julia
# =================================================

# This Julia script is an interactive tutorial to introduce you to comparisons and logical operators in Julia.
# Follow the instructions, write your code in the designated code blocks, and confirm your answers with @assert statements.

# ---------------------------
# Section 5: Comparisons
# ---------------------------
println("Section 5: Comparisons")

# In Julia, you can compare values using comparison operators.
# Some common comparison operators are == (equal), != (not equal), < (less than), > (greater than), <= (less than or equal to), and >= (greater than or equal to).

# Exercise 5.1: Compare if 10 is greater than 5 and store the result in a variable 'comparison1'
# YOUR CODE HERE
comparison1 = 10 > 5

# Test your answer
@assert comparison1 == true

# Exercise 5.2: Check if 'hello' is not equal to 'world' and store the result in a variable 'comparison2'
# YOUR CODE HERE
comparison2 = "hello" != "world"

# Test your answer
@assert comparison2 == true

# ---------------------------
# Section 6: Logical Operators
# ---------------------------
println("Section 6: Logical Operators")

# Logical operators are used to combine or invert boolean values.
# In Julia, the main logical operators are && (AND), || (OR), and ! (NOT).

# Exercise 6.1: Use the AND operator to check if 10 is greater than 5 and 'hello' is equal to 'hello'. Store the result in 'logic1'
# YOUR CODE HERE
logic1 = (10 > 5) && ("hello" == "hello")

# Test your answer
@assert logic1 == true

# Exercise 6.2: Use the OR operator to check if 10 is less than 5 or 'hello' is equal to 'hello'. Store the result in 'logic2'
# YOUR CODE HERE
logic2 = (10 < 5) || ("hello" == "hello")

# Test your answer
@assert logic2 == true

# Exercise 6.3: Use the NOT operator to invert the result of 10 being greater than 5 and store it in 'logic3'
# YOUR CODE HERE
logic3 = !(10 > 5)

# Test your answer
@assert logic3 == false

# ---------------------------
# Conclusion
# ---------------------------
println("Excellent work! You have completed the tutorial on Comparisons and Logical Operators in Julia.")
println("You've learned how to compare values and use logical operators to combine or invert boolean values.")
println("These concepts are crucial for making decisions in your programs and will be used extensively as you progress.")
