# Define a numeric vector
numbers <- c(1, 2, 3, 4, 5)

# Calculate the mean of the numbers
mean_of_numbers <- mean(numbers)

# Print the result
print(paste("The mean of the numbers is", mean_of_numbers))

install.packages("nycflights13")

require(nycflights13)

hist(flights$distance)