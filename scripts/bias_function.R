# Install the SimDesign package
install.packages("SimDesign")

# Load the SimDesign library
library("SimDesign")

# Define the actual sales data
actual_sales <- c(150, 203, 137, 247, 116, 287)

# Define the predicted sales data
predicted_sales <- c(200, 300, 150, 250, 150, 300)

# Calculate the bias between actual and predicted sales
bias_value_sales <- bias(actual_sales, predicted_sales)

# Print the bias value for sales
bias_value_sales

# Define the actual temperature data
actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)

# Define the predicted temperature data
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

# Calculate the bias between actual and predicted temperature
bias_value_temp <- bias(actual_temp, predicted_temp)

# Print the bias value for temperature
bias_value_temp
