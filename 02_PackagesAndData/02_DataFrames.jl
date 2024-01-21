# =====================================================
# Introduction to DataFrames in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to DataFrames in Julia.
# You'll learn about creating DataFrames, accessing and modifying data, filtering, and basic data manipulation.
# Make sure to have the DataFrames package installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

using DataFrames

# ---------------------------
# Section 29: Creating DataFrames
# ---------------------------
println("Section 29: Creating DataFrames")

# A DataFrame is a table where each column can have different types, similar to SQL tables or spreadsheets.

# Exercise 29.1: Create a DataFrame
df = DataFrame(Name = ["John", "Sara", "Tim"], Age = [28, 23, 35], Salary = [50000, 62000, 58000])

println("DataFrame created successfully!")
println(df)

# ---------------------------
# Section 30: Accessing and Modifying Data
# ---------------------------
println("Section 30: Accessing and Modifying Data")

# You can access columns in a DataFrame using the dot syntax, and access rows using indexing.

# Exercise 30.1: Access a column in the DataFrame
ages = df.Age
println("Ages column: ", ages)

# Test your data access
@assert ages == [28, 23, 35]

# Exercise 30.2: Modify a value in the DataFrame
# Changing John's salary from 50000 to 51000
df.Salary[1] = 51000
println("Modified DataFrame: ")
println(df)

# Test your data modification
@assert df.Salary[1] == 51000

# ---------------------------
# Section 31: Filtering Data
# ---------------------------
println("Section 31: Filtering Data")

# You can filter rows in a DataFrame using logical indexing.

# Exercise 31.1: Filter the DataFrame for employees with a salary greater than 55000
high_earners = df[df.Salary .> 55000, :]
println("High earners: ")
println(high_earners)

# Test your filtering
@assert nrow(high_earners) == 2

# ---------------------------
# Section 32: Basic Data Manipulation
# ---------------------------
println("Section 32: Basic Data Manipulation")

# Julia provides several functions to perform basic data manipulation tasks like sorting, grouping, and joining DataFrames.

# Exercise 32.1: Sort the DataFrame based on the Age column
sorted_df = sort(df, :Age)
println("DataFrame sorted by age: ")
println(sorted_df)

# Test your sorting
@assert sorted_df.Age[1] == 23

# ---------------------------
# Conclusion
# ---------------------------
println("Excellent! You've completed the tutorial on DataFrames in Julia.")
println("You've learned how to create DataFrames, access and modify data, filter data, and perform basic data manipulation.")
println("These skills are crucial for data analysis and manipulation tasks in your Julia projects.")
