# Read input into new data frame
input <- read.csv("input.csv")

# Print first 5 rows of input
head(input, 5)

# Create new data frame
data <- data.frame(
    name = c("Alice", "Brock", "Carol", "Daren", "Ellen"),
    age = c(13, 14, 15, 16, 17),
    class = c(6, 5, 4, 3, 2),

    stringsAsFactors = FALSE
)

# Add a new column "height"
data["height"] = c(153, 164, 165, 181, 162)

# Add a new row
data <- rbind(data, c("Flynn", 18, 1, 172))

# Export
write.csv(data, "students.csv", row.names = FALSE)

# Print first 5 rows of CSV from online source
online <- read.csv("https://wsform.com/wp-content/uploads/2019/08/provinces_ca.csv")
head(online, 5)
