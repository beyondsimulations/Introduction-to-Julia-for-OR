# =====================================================
# Introduction to Functions in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to functions in Julia.
# You'll learn how to create and use functions, understand scope within functions, return values, and use anonymous functions.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

# ---------------------------
# Section 13: Creating and Calling Functions
# ---------------------------
println("Section 13: Creating and Calling Functions")

# In Julia, you can define a function using the function keyword or with a shorthand syntax. Functions allow you to encapsulate code for reuse.

# Exercise 13.1: Define a function named 'add' that takes two parameters and returns their sum
function add(x, y)
    return x + y
end

# Test your function
@assert add(10, 5) == 15

# ---------------------------
# Section 14: Scope within Functions
# ---------------------------
println("Section 14: Scope within Functions")

# Variables defined inside a function are local to that function. They can't be accessed outside the function.

# Exercise 14.1: Define a function 'scope_test' that defines a local variable and tries to return it
function scope_test()
    local_variable = 10
    return local_variable
end

# Test your function
@assert scope_test() == 10

# ---------------------------
# Section 15: Returning Values from Functions
# ---------------------------
println("Section 15: Returning Values from Functions")

# In Julia, the last expression evaluated in a function is automatically returned. The return keyword is optional but can be used for clarity.

# Exercise 15.1: Define a function 'subtract' that takes two parameters and returns their difference
function subtract(x, y)
    x - y  # return is implicit
end

# Test your function
@assert subtract(10, 5) == 5

# ---------------------------
# Section 16: Anonymous Functions
# ---------------------------
println("Section 16: Anonymous Functions")

# Anonymous functions in Julia are functions that are not bound to a name. They are useful for short, throwaway functions.

# Exercise 16.1: Create an anonymous function that multiplies two numbers and assign it to a variable
multiply = (x, y) -> x * y

# Test your anonymous function
@assert multiply(10, 5) == 50

# ---------------------------
# Subsection 2.6: Multiple Dispatch
# ---------------------------
println("Subsection 2.6: Multiple Dispatch")

# Multiple dispatch allows a function to have different implementations based on the types of its arguments.
# It promotes code clarity and reuse. Let's see it in action.

# Define a function with multiple methods
function operation(a, b)
    println("Generic operation for objects of type ",
            typeof(a), " and ", typeof(b))
end

operation(a::Number, b::Number) = a + b
operation(a::String, b::String) = string(a, b)

# Example 1: Numeric addition
result1 = operation(10, 20)

# Example 2: String concatenation
result2 = operation("Hello, ", "World!")

# Assert statements to validate results
@assert result1 == 30
@assert result2 == "Hello, World!"


# ---------------------------
# Conclusion
# ---------------------------
println("Fantastic! You've completed the tutorial on functions in Julia.")
println("You've learned how to create and use functions, understand scope within functions, return values, and use anonymous functions.")
println("These are fundamental concepts that will greatly aid your journey in mastering Julia programming.")
