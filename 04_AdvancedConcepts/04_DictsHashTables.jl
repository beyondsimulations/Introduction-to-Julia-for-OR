# Mastering Dictionaries (Dicts) in Julia
# =======================================

# This interactive Julia script is a deep dive into the use and manipulation of dictionaries (Dicts) in Julia.
# Explore the creation and initialization of dictionaries, accessing, adding, and removing key-value pairs, and learn about iterating over dictionaries.
# Follow the instructions, input your code in the designated areas, and verify your implementations with @assert statements.

## Section 1: Creating and Initializing Dictionaries
# -------------------------------------------------
println("Section 1: Creating and Initializing Dictionaries")

# Dictionaries in Julia are collections of key-value pairs. They are mutable and provide fast lookup for values based on their keys.

## Exercise 1.1: Create and Initialize a Dictionary
# Define a new dictionary and initialize it with some key-value pairs.
my_dict = Dict("apple" => 1, "banana" => 2, "cherry" => 3)

# Test your dictionary by checking the value associated with a key.
@assert my_dict["apple"] == 1
println("Dictionary created and tested successfully!")

## Section 2: Accessing and Adding Key-Value Pairs
# ------------------------------------------------
println("Section 2: Accessing and Adding Key-Value Pairs")

# Accessing values in a dictionary is done via the keys. New key-value pairs can be added simply.

## Exercise 2.1: Access and Add Key-Value Pairs
# Access a value using its key and add a new key-value pair to the dictionary.
value = my_dict["banana"]  # Access the value associated with the key "banana".
my_dict["date"] = 4  # Add a new key "date" with the value 4 to the dictionary.

# Test the access and addition of key-value pairs.
@assert value == 2 && my_dict["date"] == 4
println("Access and addition of key-value pairs successful!")

## Section 3: Removing Key-Value Pairs
# ------------------------------------
println("Section 3: Removing Key-Value Pairs")

# Key-value pairs can be removed from the dictionary using the pop! function.

## Exercise 3.1: Remove a Key-Value Pair
# Remove a key-value pair from the dictionary and capture the removed value.
removed_value = pop!(my_dict, "cherry")

# Test the removal of the key-value pair.
@assert !(haskey(my_dict, "cherry")) && removed_value == 3
println("Key-value pair removal successful!")

## Section 4: Iterating Over Dictionaries
# ---------------------------------------
println("Section 4: Iterating Over Dictionaries")

# Iterating over dictionaries allows you to access each key-value pair sequentially.

## Exercise 4.1: Iterate Over a Dictionary
# Iterate over the dictionary and print each key-value pair.
for (fruit, number) in my_dict
    println("Fruit: $fruit, Number: $number")
end

println("Iteration over dictionary successful!")

## Conclusion
# -----------
println("Fantastic work! You've completed the tutorial on dictionaries (Dicts) in Julia.")
println("You've learned how to create, access, and modify dictionaries, and how to iterate over them effectively.")
println("Mastering dictionaries is crucial for managing collections of paired data efficiently in your code.")
