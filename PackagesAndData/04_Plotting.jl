# =====================================================
# Introduction to Basic Plotting in Julia
# =====================================================

# This Julia script is an interactive tutorial to introduce you to basic plotting in Julia using Plots.jl.
# You'll learn about creating basic plots, customizing plots, and saving plots to files.
# Make sure to have the Plots package installed to follow this tutorial.
# Follow the instructions, write your code in the designated code blocks, and confirm your understanding with @assert statements.

using Plots

# ---------------------------
# Section 33: Creating Basic Plots
# ---------------------------
println("Section 33: Creating Basic Plots")

# The Plots.jl package makes it simple to create a wide variety of plots.

# Exercise 33.1: Create a simple line plot
x = 1:10
y = rand(10)  # 10 random numbers
plot(x, y, title="Simple Line Plot", xlabel="x axis", ylabel="y axis", legend=false)

# Exercise 33.2: Create a scatter plot
x = 1:10
y = rand(10)
scatter(x, y, title="Simple Scatter Plot", xlabel="x axis", ylabel="y axis", legend=false)

# ---------------------------
# Section 34: Customizing Plots
# ---------------------------
println("Section 34: Customizing Plots")

# You can customize plots in many ways: changing colors, markers, line styles, etc.

# Exercise 34.1: Customize a line plot
x = 1:10
y = rand(10)
plot(x, y, title="Customized Line Plot", xlabel="x axis", ylabel="y axis", legend=false, line=:dash, linewidth=2, color=:red)

# Exercise 34.2: Add multiple series to a plot
x = 1:10
y1 = rand(10)
y2 = rand(10)
plot(x, y1, title="Multiple Series", xlabel="x axis", ylabel="y axis", label="y1")
plot!(x, y2, label="y2")  # The '!' after plot adds to the existing plot

# ---------------------------
# Section 35: Saving Plots to Files
# ---------------------------
println("Section 35: Saving Plots to Files")

# Plots can be saved to files in various formats like PNG, SVG, PDF, etc.

# Exercise 35.1: Save a plot to a file
x = 1:10
y = rand(10)
p = plot(x, y, title="Plot to be Saved", xlabel="x axis", ylabel="y axis", legend=false)
savefig(p, "saved_plot.png")

println("Plot saved to file successfully!")

# ---------------------------
# Conclusion
# ---------------------------
println("Fantastic! You've completed the tutorial on basic plotting in Julia.")
println("You've learned how to create basic plots, customize them, and save them to files.")
println("These skills are fundamental for visualizing data and communicating results in your Julia projects.")
