# Introduction to Basic Plotting in Julia
# =====================================================

# This interactive Julia script introduces the basics of plotting in Julia using the Plots.jl package.
# It covers creating basic plots, customizing them to your needs, and saving them as files for further use.
# Follow the instructions, write your code in the designated code blocks, and validate your results with @assert statements.

# Ensure you have the Plots package installed to follow along with this tutorial.
# If you followed the course so far, you first have to install the Plots Package before you can start using it:
# import Pkg; Pkg.add("Plots")
using Plots

## Section 1: Creating Basic Plots
# ---------------------------
println("Section 1: Creating Basic Plots")

# The Plots.jl package simplifies the process of creating a wide array of plots, from simple line plots to complex 3D visualizations.

## Exercise 1.1: Create a simple line plot.
# Use the plot() function to create a line plot of random data.
x = 1:10
y = rand(10)  # 10 random numbers
line_plot = plot(x, y, title="Simple Line Plot", xlabel="x axis", ylabel="y axis", legend=false)

# Confirm successful plot creation
println("Simple line plot created successfully!")

## Exercise 1.2: Create a scatter plot.
# Use the scatter() function to create a scatter plot of random data.
x = 1:10
y = rand(10)
scatter_plot = scatter(x, y, title="Simple Scatter Plot", xlabel="x axis", ylabel="y axis", legend=false)

# Confirm successful plot creation
println("Simple scatter plot created successfully!")

## Section 2: Customizing Plots
# ---------------------------
println("Section 2: Customizing Plots")

# Plots.jl allows extensive customization options to tailor your plots. You can change colors, markers, line styles, and much more.

## Exercise 2.1: Customize a line plot.
# Customize the appearance of a line plot using various attributes like line style, width, and color.
x = 1:10
y = rand(10)
custom_line_plot = plot(x, y, title="Customized Line Plot", xlabel="x axis", ylabel="y axis", legend=false, line=:dash, linewidth=2, color=:red)

# Confirm successful plot customization
println("Customized line plot created successfully!")

## Exercise 2.2: Add multiple series to a plot.
# Create a plot with multiple data series and customize the appearance of each series.
x = 1:10
y1 = rand(10)
y2 = rand(10)
multi_series_plot = plot(x, y1, title="Multiple Series", xlabel="x axis", ylabel="y axis", label="y1")
plot!(multi_series_plot, x, y2, label="y2")  # The '!' after plot adds to the existing plot

# Confirm successful addition of multiple series
println("Multiple series plot created successfully!")

## Section 3: Saving Plots to Files
# ---------------------------
println("Section 3: Saving Plots to Files")

# Plots.jl supports saving your plots to various file formats including PNG, SVG, and PDF, enabling you to use your plots outside of Julia.

## Exercise 3.1: Save a plot to a file.
# Save a created plot to a file in your preferred format.
x = 1:10
y = rand(10)
plot_to_save = plot(x, y, title="Plot to be Saved", xlabel="x axis", ylabel="y axis", legend=false)
savefig(plot_to_save, "saved_plot.png")

# Confirm successful saving of the plot
println("Plot saved to 'saved_plot.png' successfully!")

## Conclusion
# ---------------------------
println("Fantastic! You've completed the tutorial on basic plotting in Julia.")
println("You've learned how to create basic plots, customize them to your needs, and save them for external use.")
println("These skills form the foundation for visualizing data and effectively communicating results in your Julia projects.")
