# =====================================================
# Understanding the Scope of Variables in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to the scope of variables in Julia.
# You'll learn about local and global scopes, the use of local and global keywords, and how scopes behave differently in various contexts.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

# ---------------------------
# Section 10: Local Scope
# ---------------------------
println("Section 10: Local Scope")

# Variables defined inside a function or a loop have a local scope. They can only be accessed and modified within that function or loop.

# Exercise 10.1: Define a local variable within a loop and try accessing it outside the loop
println("Defining a local variable within a loop:")
for i in 1:3
    local loop_variable = i
    println("Inside the loop, loop_variable is: ", loop_variable)
end

# Note: Uncommenting the next line should result in an error, as loop_variable is not accessible outside the loop
# println("Outside the loop, loop_variable is: ", loop_variable)
# No @assert is used here as the behavior is to show an error

# ---------------------------
# Section 11: Global Scope
# ---------------------------
println("Section 11: Global Scope")

# Variables defined in the main body of a script have a global scope. They can be accessed and modified from anywhere in the script.

# Exercise 11.1: Define a global variable and access it inside a loop
global global_variable = 10
println("Accessing a global variable inside a loop:")
for i in 1:3
    println("Inside the loop, global_variable is: ", global_variable)
end
# Test your answer
@assert global_variable == 10

# ---------------------------
# Section 12: The `global` and `local` Keywords
# ---------------------------
println("Section 12: The `global` and `local` Keywords")

# The `global` keyword is used to define or modify a global variable inside a local scope.
# The `local` keyword is used to explicitly define a local variable when it might otherwise be considered global.

# Exercise 12.1: Use the `global` keyword to modify a global variable inside a function
function modify_global()
    global global_variable = 20
end
modify_global()
# Test your answer
@assert global_variable == 20

# Exercise 12.2: Use the `local` keyword to define a local variable in a context where it might be considered global
for i in 1:3
    local explicit_local_variable = i
    println("Inside the loop, explicit_local_variable is: ", explicit_local_variable)
end
# Note: explicit_local_variable is not accessible here, so we don't use @assert

# ---------------------------
# Conclusion
# ---------------------------
println("Excellent! You've completed the tutorial on the scope of variables in Julia.")
println("Understanding the scope of variables helps in managing data effectively within different parts of your code.")
println("This knowledge is crucial for writing clean, efficient, and bug-free Julia programs.")
