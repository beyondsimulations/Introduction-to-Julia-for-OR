# =====================================================
# Introduction to Structs in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to structs in Julia.
# You'll learn about defining simple structs, mutable structs, accessing and modifying fields, and using constructors.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

# ---------------------------
# Section 17: Defining Simple Structs
# ---------------------------
println("Section 17: Defining Simple Structs")

# A struct in Julia defines a new composite data type. By default, structs are immutable.

# Exercise 17.1: Define a simple struct named 'Point' to represent a point in a 2D space with 'x' and 'y' as fields
struct Point
    x::Float64
    y::Float64
end

# Test your struct by creating an instance
point1 = Point(1.0, 2.0)
@assert point1.x == 1.0 && point1.y == 2.0

# ---------------------------
# Section 18: Mutable Structs
# ---------------------------
println("Section 18: Mutable Structs")

# If you need to modify the fields of a struct after it's created, you can define it as mutable.

# Exercise 18.1: Define a mutable struct named 'MovablePoint'
mutable struct MovablePoint
    x::Float64
    y::Float64
end

# Create an instance and then modify its fields
movable_point = MovablePoint(1.0, 2.0)
movable_point.x = 3.0
movable_point.y = 4.0

# Test your mutable struct
@assert movable_point.x == 3.0 && movable_point.y == 4.0

# ---------------------------
# Section 19: Accessing and Modifying Fields
# ---------------------------
println("Section 19: Accessing and Modifying Fields")

# You can access and modify the fields of a mutable struct using dot syntax.

# Exercise 19.1: Create a new 'MovablePoint', access its fields, and modify them
new_point = MovablePoint(5.0, 6.0)
new_x = new_point.x
new_point.y = 10.0

# Test field access and modification
@assert new_x == 5.0 && new_point.y == 10.0

# ---------------------------
# Section 20: Constructors
# ---------------------------
println("Section 20: Constructors")

# Constructors are special functions that are called to create a new instance of a struct.

# Exercise 20.1: Define a constructor for the Point struct that initializes both x and y to zero if no values are provided
struct PointWithDefault
    x::Float64
    y::Float64
    PointWithDefault(x::Float64=0.0, y::Float64=0.0) = new(x, y)
end

# Test your constructor
default_point = PointWithDefault()
@assert default_point.x == 0.0 && default_point.y == 0.0

# ---------------------------
# Conclusion
# ---------------------------
println("Well done! You've completed the tutorial on structs in Julia.")
println("You've learned how to define simple and mutable structs, access and modify fields, and use constructors.")
println("Structs are a powerful way to structure and manage related data in your Julia programs.")
