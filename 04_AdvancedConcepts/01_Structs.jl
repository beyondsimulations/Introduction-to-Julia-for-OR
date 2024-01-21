# Mastering Structs in Julia
# ==========================

# This interactive Julia script is a comprehensive tutorial on structs in Julia.
# Explore the creation of simple and mutable structs, delve into field access and modification, and learn about constructing instances with constructors.
# Follow the instructions, input your code in the designated areas, and verify your implementations with @assert statements.

## Section 1: Defining Simple Structs
# -----------------------------------
println("Section 1: Defining Simple Structs")

# Structs in Julia define composite data types. They are immutable by default, ensuring data integrity.

## Exercise 1.1: Define and Test a Simple Struct
# Define a simple struct 'Point' to represent coordinates in a 2D space.
struct Point
    x::Float64
    y::Float64
end

# Test your struct by creating an instance and checking its fields.
point1 = Point(1.0, 2.0)
@assert point1.x == 1.0 && point1.y == 2.0  # Validate that the fields are correctly assigned.

## Section 2: Mutable Structs
# --------------------------
println("Section 2: Mutable Structs")

# Mutable structs allow modification of their fields after creation, providing flexibility when mutable state is necessary.

## Exercise 2.1: Define and Test a Mutable Struct
# Define a mutable struct 'MovablePoint'.
mutable struct MovablePoint
    x::Float64
    y::Float64
end

# Create an instance and modify its fields.
movable_point = MovablePoint(1.0, 2.0)
movable_point.x = 3.0
movable_point.y = 4.0

# Test your mutable struct by checking the updated field values.
@assert movable_point.x == 3.0 && movable_point.y == 4.0  # Ensure the fields are correctly updated.

## Section 3: Accessing and Modifying Fields
# -----------------------------------------
println("Section 3: Accessing and Modifying Fields")

# Fields of a mutable struct can be accessed and modified directly using dot syntax.

## Exercise 3.1: Access and Modify Fields of a Mutable Struct
# Create a 'MovablePoint', access its fields, and modify them.
new_point = MovablePoint(5.0, 6.0)
new_x = new_point.x  # Access the x field.
new_point.y = 10.0   # Modify the y field.

# Test field access and modification.
@assert new_x == 5.0 && new_point.y == 10.0  # Validate that fields are accessed and modified correctly.

## Section 4: Constructors
# ------------------------
println("Section 4: Constructors")

# Constructors are specialized functions that instantiate a struct. They can provide default values and perform initialization.

## Exercise 4.1: Define and Test Constructors with Default Values
# Define a struct 'PointWithDefault' with a constructor that provides default values.
struct PointWithDefault
    x::Float64
    y::Float64
    PointWithDefault(x::Float64=0.0, y::Float64=0.0) = new(x, y)
end

# Test your constructor by creating a 'PointWithDefault' without providing explicit values.
default_point = PointWithDefault()
@assert default_point.x == 0.0 && default_point.y == 0.0  # Check if default values are correctly assigned.

## Conclusion
# -----------
println("Excellent work! You've just completed the tutorial on structs in Julia.")
println("You've gained knowledge about simple and mutable structs, field access and modification, and the utility of constructors.")
println("Structs provide a structured approach to managing related data, empowering you to write more organized and maintainable Julia code.")