# =================================================
# Introduction to Loops in Julia
# =================================================

# This Julia script is an interactive tutorial to introduce you to loops in Julia.
# You'll learn how to use for and while loops to execute code repeatedly and how to control the flow of loops with break and continue.
# Follow the instructions, write your code in the designated code blocks, and confirm your answers with @assert statements.

# ---------------------------
# Section 7: For Loops
# ---------------------------
println("Section 7: For Loops")

# A for loop in Julia is used to iterate over a sequence (like a range, array, or string) and execute a block of code for each element.

# Exercise 7.1: Use a for loop to calculate the sum of numbers from 1 to 5 and store the result in a variable 'sum_numbers'
sum_numbers = 0
for i in 1:5
    sum_numbers += i
end

# Test your answer
@assert sum_numbers == 15

# You can also use the 'continue' to skip the current iteration and 'break' to exit the loop entirely.

# Exercise 7.2: Use a for loop to sum only the even numbers from 1 to 10. Use 'continue' to skip odd numbers.
sum_evens = 0
for i in 1:10
    if i % 2 != 0
        continue
    end
    sum_evens += i
end

# Test your answer
@assert sum_evens == 30

# ---------------------------
# Section 8: While Loops
# ---------------------------
println("Section 8: While Loops")

# A while loop in Julia continues to execute as long as the condition is true.

# Exercise 8.1: Use a while loop to calculate the factorial of 5 and store the result in a variable 'factorial_result'
factorial_result = 1
i = 1
while i <= 5
    factorial_result *= i
    i += 1
end

# Test your answer
@assert factorial_result == 120

# Similar to for loops, you can use 'break' to exit a while loop early.

# Exercise 8.2: Use a while loop to find the first multiple of 7 greater than 50. Use 'break' to exit the loop once it's found.
first_multiple_of_7 = 0
i = 51
while true
    if i % 7 == 0
        first_multiple_of_7 = i
        break
    end
    i += 1
end

# Test your answer
@assert first_multiple_of_7 == 56

# ---------------------------
# Conclusion
# ---------------------------
println("Great job! You've completed the tutorial on Loops in Julia.")
println("You've learned how to use for and while loops to perform repeated tasks and how to control the flow of loops with break and continue.")
println("Understanding these concepts is crucial for writing efficient and effective code in Julia.")


# =================================================
# Introduction to Different Types of Loops in Julia
# =================================================

# This Julia script is an interactive tutorial to introduce you to different types of loops in Julia.
# You'll learn about for loops with various iterable structures, while loops, and nested loops.
# Follow the instructions, write your code in the designated code blocks, and confirm your answers with @assert statements.

# ---------------------------
# Section 7: For Loops with Various Iterable Structures
# ---------------------------
println("Section 7: For Loops with Various Iterable Structures")

# For loops in Julia can iterate over ranges, arrays, and even strings. Let's explore how this works with different iterable structures.

# Exercise 7.1: Use a for loop to iterate over a range from 1 to 5 and print each number
println("Numbers from 1 to 5:")
for i in 1:5
    println(i)
end

# Exercise 7.2: Use a for loop to iterate over an array of fruits and print each fruit
fruits = ["apple", "banana", "cherry"]
println("Fruit list:")
for fruit in fruits
    println(fruit)
end

# Exercise 7.3: Use a for loop to iterate over each character in the string "Julia" and print each character
println("Characters in 'Julia':")
for char in "Julia"
    println(char)
end

# ---------------------------
# Section 8: While Loops
# ---------------------------
println("Section 8: While Loops")

# While loops are useful when you want to repeat an action until a certain condition is met.

# Exercise 8.1: Use a while loop to subtract numbers from 10 until the result is less than 3. Print each step.
println("Subtracting from 10 until less than 3:")
result = 10
while result >= 3
    println(result)
    result -= 1
end

# ---------------------------
# Section 9: Nested Loops
# ---------------------------
println("Section 9: Nested Loops")

# Nested loops are loops inside another loop. They are useful for iterating over multi-dimensional structures.

# Exercise 9.1: Use nested for loops to print a 3x3 matrix of asterisks
println("3x3 matrix of asterisks:")
for i in 1:3
    for j in 1:3
        print("* ")
    end
    println()
end

# Exercise 9.2: Use a nested loop to find the product of each pair of elements from two arrays and store the products in a new array
numbers1 = [1, 2, 3]
numbers2 = [4, 5, 6]
products = []
for num1 in numbers1
    for num2 in numbers2
        push!(products, num1 * num2)
    end
end

# Test your answer
@assert products == [4, 5, 6, 8, 10, 12, 12, 15, 18]

# ---------------------------
# Conclusion
# ---------------------------
println("Well done! You've completed the tutorial on different types of loops in Julia.")
println("You've explored for loops with various iterable structures, while loops, and nested loops.")
println("These looping structures are powerful tools in Julia for performing repetitive tasks and handling multi-dimensional data.")

