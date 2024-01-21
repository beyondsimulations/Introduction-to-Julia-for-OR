# =====================================================
# Introduction to Reading and Writing External Files in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to reading from and writing to external files in Julia.
# You'll learn about handling different types of files, reading data, writing data, and ensuring resource management with proper file handling.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

# ---------------------------
# Section 25: Writing to Files
# ---------------------------
println("Section 25: Writing to Files")

# Julia can write to files using the open(), write(), and close() functions, or by using a do block for automatic resource management.

# Exercise 25.1: Write a string to a text file
file_path = "example.txt"
open(file_path, "w") do file
    write(file, "Hello, Julia! This is a text file.")
end

println("Data written to file successfully!")

# ---------------------------
# Section 26: Reading from Files
# ---------------------------
println("Section 26: Reading from Files")

# Julia can read from files using the open(), read(), readlines(), and close() functions, or by using a do block for automatic resource management.

# Exercise 26.1: Read the contents of a text file
content = open(read, file_path)

# Test your reading
@assert content == "Hello, Julia! This is a text file."

println("Data read from file successfully!")

# ---------------------------
# Section 27: Working with CSV Files
# ---------------------------
println("Section 27: Working with CSV Files")

# Julia can read and write CSV files using the CSV package. This is especially useful for data analysis.

# Exercise 27.1: Write a CSV file (Note: This requires the CSV and DataFrames packages)
using CSV, DataFrames

data = DataFrame(Name = ["Alice", "Bob", "Charlie"], Age = [25, 30, 35])
csv_file_path = "data.csv"
CSV.write(csv_file_path, data)

println("CSV file written successfully!")

# Exercise 27.2: Read the same CSV file
read_data = CSV.read(csv_file_path, DataFrame)

# Test your CSV reading
@assert read_data == data

println("CSV file read successfully!")

# ---------------------------
# Section 28: Handling JSON Files
# ---------------------------
println("Section 28: Handling JSON Files")

# JSON files can be read and written using the JSON package in Julia.

# Exercise 28.1: Write a JSON file (Note: This requires the JSON package)
using JSON

json_data = Dict("name" => "Julia", "age" => 10)
json_file_path = "data.json"
open(json_file_path, "w") do file
    write(file, JSON.json(json_data))
end

println("JSON file written successfully!")

# Exercise 28.2: Read the same JSON file
read_json_data = JSON.parsefile(json_file_path)

# Test your JSON reading
@assert read_json_data == json_data

println("JSON file read successfully!")

# ---------------------------
# Conclusion
# ---------------------------
println("Fantastic! You've completed the tutorial on reading and writing external files in Julia.")
println("You've learned how to handle text files, CSV files, and JSON files, which are common in many data-driven applications.")
println("These skills are crucial for data import, export, and persistence in your Julia projects.")
