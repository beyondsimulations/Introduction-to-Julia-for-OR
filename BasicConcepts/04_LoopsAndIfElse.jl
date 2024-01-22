# Comprehensive Guide to Loops in Julia
# =====================================

# This interactive Julia script is an extensive tutorial introducing you to the robust loop structures in Julia.
# Improve your skills in for and while loops for performing repetitive tasks, manipulating loop flow with break and continue, 
# and applying nested loops to iterate through multi-dimensional structures.
# Follow the instructions, input your code in the designated areas, and verify your implementations with @assert statements.

## Section 1: For Loops
# ------------------------------
println("Section 1: For Loops")

# 'for' loops iterate over a sequence such as a range or collection, executing a block of code for each item. 
# Basic syntax:
# for variable in collection
#     # Execute code for each element
# end

# Iterating over a range (1 to 3):
# for i in 1:3
#     println(i) # This will print 1, 2, and 3.
# end

# Iterating over an array:
# fruits = ["apple", "banana", "cherry"]
# for fruit in fruits
#     println(fruit) # This will print each fruit in the fruits array.
# end

## Exercise 1.1: Calculate the sum of numbers from 1 to 5 in a loop.
let # Don't worry about the let here, it just starts a scope block
# More on this later in the tutorial 'VariableScope'.
# The next line initializes sum_numbers to 0. The sum you compute should accumulate in this variable.
sum_numbers = 0

# YOUR CODE BELOW
for i in 1:5
    sum_numbers += i  # Increment sum_numbers by i during each iteration.
end

# YOUR CODE ABOVE
# Test your answer
@assert sum_numbers == 15
println("Sum of numbers from 1 to 5: ", sum_numbers)
end # This ends the scope of the previously started scope block.

## Exercise 1.2: Sum only the even numbers from 1 to 10.
# Hint: Utilize the remainder operator (%) to verify if a number is even. 
# 'number % 2 == 0' implies that 'number' is even.
let # Again, we start a scope block for the loop.
# The next line initializes sum_evens to 0. The sum you compute should accumulate in this variable.
sum_evens = 0


# YOUR CODE BELOW
for i in 1:10
    if i % 2 == 0
        sum_evens += i  # Accumulate only even numbers.
    end
end

# YOUR CODE ABOVE
# Test your answer
@assert sum_evens == 30
println("Sum of even numbers from 1 to 10: ", sum_evens)
end # Here we end the scope block again.

## Exercise 1.3: Iterate over each fruit in the 'fruits' array, store the current fruit
# in 'current_fruit', and exit the loop if 'current_fruit' is "banana".
# Hint: The 'break' statement can be utilized to exit the loop based on a condition.
let # Again, another scope block.
# The next lines initialize the fruits array and current_fruit variable.
fruits = ["apple", "banana", "cherry"]
current_fruit = "None"

# YOUR CODE BELOW
for fruit in fruits
    current_fruit = fruit
    if current_fruit == "banana"
        break  # Exit the loop if the current fruit is "banana".
    end
end

# YOUR CODE ABOVE
# Test your answer
@assert current_fruit == "banana"
println("The current fruit is: ", current_fruit)
end # Here we end the scope block again.

## Section 2: While Loops for Conditional Execution
# -------------------------------------------------
println("Section 2: While Loops for Conditional Execution")

# 'while' loops execute as long as a specified condition holds true. 
# They're particularly useful when the number of iterations is dynamic or unknown in advance.

## Exercise 2.1: Subtract from 10 in increments of 1 until the result is less than 3.
let # New scope block.
# The next line initializes current_value to 10. The result should be in this variable.
current_value = 10


# YOUR CODE BELOW
println("Subtracting from 10 until less than 3:")
while current_value >= 3
    println(current_value)  # Output the current value.
    current_value -= 1  # Decrement current_value by 1.
end

# YOUR CODE ABOVE
# Test your answer
@assert current_value == 2
println("The first value smaller than 3 is: ", current_value)
end # Scope block closed again.

## Exercise 2.2: Find the first multiple of 7 greater than 50 using an indefinite loop.
# Hint: 'while true ... end' constructs an infinite loop. 
# You can exit the loop using a 'break' statement if a condition is met.
let # New scope block
# The next line initializes 'first_multiple_of_7' to 0. The first multiple should be in this variable.
first_multiple_of_7 = 0

# YOUR CODE BELOW
i = 51  # Start checking from 51 as we seek a multiple greater than 50.
while true
    if i % 7 == 0
        first_multiple_of_7 = i
        break  # Exit the loop once the first multiple is found.
    end
    i += 1  # Increment i for the next iteration.
end

# YOUR CODE ABOVE
# Test your answer
@assert first_multiple_of_7 == 56
println("First multiple of 7 greater than 50: ", first_multiple_of_7)
end # End of scope block

## Section 3: Nested Loops
# ------------------------------------
println("Section 3: Nested Loops")
# Nested loops are loops within another loop, useful for iterating over multi-dimensional data structures.

## Exercise 3.1: Compute the product of each pair of elements from two arrays.
# Hint: Remember, you can use push!() to append elements to an array.
let # New scope block
# Initialize numbers1, numbers2 arrays, and the products array to store your results.
numbers1 = [1, 2, 3]
numbers2 = [4, 5, 6]
products = []

# YOUR CODE BELOW
for num1 in numbers1
    for num2 in numbers2
        push!(products, num1 * num2)  # Compute product and add to 'products' array.
    end
end

# YOUR CODE ABOVE
# Test your answer
@assert products == [4, 5, 6, 8, 10, 12, 12, 15, 18]
println("Products of each pair from two arrays: ", products)
end # End scope block

## Conclusion
# -----------
println("Great work! You've successfully navigated through the basics of loops in Julia.")
println("You've seen for and while loops, tackled different iterable structures, and delved into nested loops.")
println("Continue to the next file to learn more.")