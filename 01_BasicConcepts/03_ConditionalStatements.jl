# Introduction to Comparisons and Logical Operators in Julia
# ============================================================

# This interactive Julia script introduces the basics of comparisons and logical operators.
# These are fundamental for controlling the flow of programs and making decisions.
# Follow the instructions, write your code in the designated code blocks, and execute the corresponding code cell.

## Section 1: Comparisons
# ---------------------------
println("Section 1: Comparisons")

# In Julia, comparison operators allow you to compare values and make decisions based on these comparisons.
# Common comparison operators include == (equal), != (not equal), < (less than), > (greater than), 
# <= (less than or equal to), and >= (greater than or equal to).
# Comparisons return a boolean value (true or false).
# You can use these directly or store them in a variable. For example:
# comparison = 5 == 5  # This will store 'true' in 'comparison'.

## Exercise 1.1: Compare if 10 is greater than 5 and store the result in 'comparison1'.
# YOUR CODE BELOW


# Test your answer
@assert comparison1 == true
println("comparison1 is ", comparison1)

## Exercise 1.2: Define variables 'x' with value "Hello" and 'y' with value "world".
# Compare if 'x' is not equal to 'y' and store the result in 'comparison2'.
# YOUR CODE BELOW


# Test your answer
@assert x == "Hello"
@assert y == "world"
@assert comparison2 == true
println("Comparison2 is ", comparison2)

## Section 2: Logical Operators
# ---------------------------
println("Section 2: Logical Operators")

# Logical operators combine or invert boolean values.
# In Julia, use && for AND, || for OR, and ! for NOT.
# These are useful in complex conditions and controlling program flow.

## Exercise 2.1: Use the AND operator to check if 10 is greater than 5 and 'hello' is equal to 'hello'. Store the result in 'logic1'.
# YOUR CODE BELOW


# Test your answer
@assert logic1 == true
println("logic1 is ", logic1)

## Exercise 2.2: Use the OR operator to check if 10 is less than 5 or 'hello' is equal to 'hello'. Store in 'logic2'.
# YOUR CODE BELOW


# Test your answer
@assert logic2 == true
println("logic2 is ", logic2)

## Exercise 2.3: Check whether 10 is greater than 5 and store the result in 'logic3'.
# Then, use the NOT operator to invert 'logic3'. Store the result in 'logic4'.
# YOUR CODE BELOW


# Test your answer
@assert logic3 == true
@assert logic4 == false
println("logic3 is ", logic3," and logic4 is", logic4)

## Conclusion
# ---------------------------
println("Excellent work! You've completed the tutorial on Comparisons and Logical Operators in Julia.")
println("You've learned to compare values and use logical operators to combine or invert boolean values.")
println("Experiment with the code, try different operations, and understand how Julia handles logic.")
println("Continue to the next file to learn more.")

