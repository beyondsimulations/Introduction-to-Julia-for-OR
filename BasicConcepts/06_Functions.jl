# Functions in Julia
# ==============================
println()
println("Functions in Julia")
println()

#= This interactive Julia script is a comprehensive guide to understanding functions 
in Julia. Dive into the creation and usage of functions, grasp the concept of scope 
within functions, explore returning values, use anonymous functions, and leverage 
multiple dispatch for versatile function behavior. Follow the instructions, input 
your code in the designated areas, and verify your implementations with @assert 
statements. =#

## Section 1: Creating and Calling Functions
# -----------------------------------------
println("Section 1: Creating and Calling Functions")

#= Functions in Julia encapsulate reusable code and can be defined using the 
'function' keyword or shorthand syntax. After the keyword, you name the function 
and write the parameters in parentheses. For example:

function multiply(a,b)
   a * b
end

This function takes two parameters, multiplies them, and returns the result 
implicitly. In Julia, the last expression is automatically returned, making the 
'return' keyword optional. =#

## Exercise 1.1: 
#= Define and Test a Simple Addition Function. Define a function 'add' that takes 
two parameters and returns their sum. =#

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your function
@assert add(10, 5) == 15 "The sum computed is $(add(10, 5)) but should be 15."

## Section 2: Scope within Functions
# ---------------------------------
println("Section 2: Scope within Functions")

#= Variables declared inside a function are local to that function and are not 
accessible outside. If you want to access the variable outside of the function, 
you have to explicitly return it. You can do this by passing 'return' in front 
of the variable you want to return from the function. =#

## Exercise 2.1: 
#= Try to execude the following block of code. The objective is to understand how to 
return the 'local_variable_one' from the function 'scope_test'. Your task is to 
change the function, to return the value of 'local_variable_one'. =#

# YOUR CHANGES BELOW
function scope_test()
    local_variable_one = 10
    local_variable_two = 20
end

# YOUR CHANGES ABOVE
# Test your function
@assert scope_test() == 10 "The value exported is $(scope_test())."

## Exercise 2.2: 
#= Define and Test an Implicit Return Function. Define a function 'subtract' that 
takes two parameters and implicitly returns their difference. The implicit return 
feature makes your code cleaner and more concise. =#

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your function
@assert subtract(10, 5) == 5  "The difference computed is $(subtract(10, 5)) but should be 5."

## Section 3: Anonymous Functions
# ------------------------------
println("Section 3: Anonymous Functions")

#= Anonymous functions in Julia are unnamed functions, useful for concise and short 
operations. They are particularly useful for operations that are passed as arguments 
to higher-order functions or used for short, one-off computations. Syntax for 
anonymous functions can be either of the following:
add_two = (a,b) -> a + b
add_two(a,b) = a + b 
=#

## Exercise 3.1:
# Create an anonymous function 'multiply' that multiplies two numbers.

# YOUR CODE BELOW


# YOUR CODE ABOVE
# Test your function
@assert multiply(10, 5) == 50  "The result is $(multiply(10, 5)) but should be 50."

## Section 4: Multiple Dispatch
# ----------------------------
println("Section 4: Multiple Dispatch")

#= Multiple dispatch in Julia allows defining function behavior based on argument 
types, promoting code reuse and clarity. It's a powerful feature for designing 
flexible and extensible functions. We first define a generic version and then 
provide specific implementations for different types: =#
function operation(a, b)
    "Generic operation for objects of type $(typeof(a)) and $(typeof(b))"
end

# The specific implementations are:
operation(a::Number, b::Number) = a + b        # Specific method for Number types.
operation(a::String, b::String) = string(a, b) # Specific method for String types.

# Test with different types of arguments.
result1 = operation(10, 20)               # Numeric addition.
result2 = operation("Hello, ", "World!")  # String concatenation.
result3 = operation("Hello, ", 20)        # Generic implementation.

## Exercise 4.1: 
#= Choose the result that should be asserted in the following to equal the expected 
value on the right side of the conditional statement. =#

# YOUR CHANGES BELOW
@assert result1 == "Hello, World!"
@assert result3 == 30
@assert result2 == "Generic operation for objects of type String and Int64"

# YOUR CHANGES ABOVE

## Conclusion
# -----------
println()
println("Great work! You've just completed the tutorial on functions in Julia.")
println("You now have a first understanding of how to create, use, and understand")
println("functions in Julia. Continue to the next file to learn more.")

