library(lattice)

# Create new data frame
data <- data.frame(
    Z = c("a","b","a","c","a","c","a"),
    W = c(0,  1,  2,  3,  4,  5,  6),
    X = c(0,  1,  1,  2,  3,  5,  8),
    Y = c(0,  1,  3,  6,  10, 15, 21),

    stringsAsFactors = FALSE
)

# Show data frame
print(data)

# Make a 3D scatter plot using variables W, X and Y
cloud(Y ~ W * X, data = data, screen = list(z = -30, x = -60))

# Make another one showing the different Z values but on the same plot
cloud(Y ~ W * X, data = data, screen = list(z = -30, x = -60), groups = Z)

# And again with the different Z values on different plots
cloud(Y ~ W * X | Z, data = data, screen = list(z = -30, x = -60))
