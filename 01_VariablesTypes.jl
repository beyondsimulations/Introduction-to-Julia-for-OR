# Introduction to Variables and Types in Julia
# -----------------------------------------------
# This Julia script is an interactive tutorial to introduce you to the basics of variables and types in Julia.
# Follow the instructions, write your code in the designated code blocks.
# Your answers are thereafter tested with an @assert statement if you execude a code cell.
# A code cell is defined by ## at the start of a line and you are allowed to write a comment after the ##.
# Use Alt+Enter (or Option+Enter) and the cell with your current cursor position will be executed in the REPL.
# If you want to jump to the next cell after the execution, use Alt+Shift+Enter (or Option+Shift+Enter).
# In the interactive parts, you are asked to write the missing code after each "YOUR CODE BELOW".
# The areas "Test your answer" should ideally not be changed, as they assert your answer.

## Section 1: Variables
# ---------------------------
println("Section 1: Variables")

# Introduction to Variables
# A variable in Julia can be used to store data, like numbers, text, or more complex types.
# In Julia, you declare a variable and assign it a value like this:
# variable_name = value

## Exercise 1.1: Declare a variable named 'x' and assign it the value 1
# YOUR CODE BELOW


# Test your answer
@assert x == 1 "Sorry, unfortunately the value of x is not 1 but $x."

## Exercise 1.2: Declare a variable named 'hi' and assign it the string "Hello, Optimization!"
# YOUR CODE BELOW


# Test your answer
@assert hi == "Hello, Optimization!" "Something went wrong, as the variable hi is $hi."

## Section 2: Basic Types
# ---------------------------
println("Section 2: Basic Types")

# In Julia, every value has a type, and types are a way to categorize data.
# Common basic types in Julia include Integers, Floats, Booleans, and Strings.
# The compiler will deduct the variable type you use, but you can also define the type explicitly.
# If you want to check the type of a variable, you can use the function typeof().

# Integer: A whole number. In Julia, you can define an integer like this:
# num = 5 or num::Int = 5

# Float: A decimal number. In Julia, you can define a float like this:
# decimal = 5.0 or decimal::Float64 = 5.0

# Boolean: A true or false value. In Julia, booleans are defined as:
# isTrue = true or isTrue::Bool = true

# String: Text. In Julia, strings are defined with double quotes:
# name = "AppliedOptimization" or name::String = "AppliedOptimization"

## Exercise 2.1: Create an Integer variable 'answerUniverse' and set it to your age
# YOUR CODE BELOW


# Test your answer
@assert answerUniverse == 42 "Sorry, the variable answerUniverse is $answerUniverse and not 42, yet."

## Exercise 2.2: Create a Float variable 'money' and set it to 1.35
# YOUR CODE BELOW


# Test your answer
@assert money == 1.35 "Sorry, the variable money is $money at the moment. Check the task again."

## Exercise 2.3: Create a Boolean variable 'isStudent' and set it to true
# YOUR CODE BELOW


# Test your answer
@assert isStudent == true "Sorry, based on the variable isStudent you are not a student."


## Conclusion
# ---------------------------
println("Congratulations! You have completed the first tutorial on Variables and Types in Julia.")
println("In this file, you've learned about variables, integers, floats, booleans, and strings.")
println("Continue to the next file to learn more.")



# Create vectors

# Create matrices

# Global