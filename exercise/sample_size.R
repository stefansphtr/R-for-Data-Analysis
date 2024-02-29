# Function to calculate sample size
calculate_sample_size <- function(population_size, confidence_level, margin_of_error) {
    z_score <- qnorm((1 + confidence_level) / 2)
    p <- 0.8  # The minimum statistical power required is 80% (0.8) to ensures a high likelihood of identifying a true effect 
    
    numerator <- z_score^2 * p * (1 - p)
    denominator <- margin_of_error^2
    
    # Calculate sample size for infinite population
    sample_size <- numerator / denominator
    
    # Adjust sample size for finite population
    sample_size <- sample_size / (1 + (sample_size - 1) / population_size)
    
    return(round(sample_size))
}

# Use case
population_size <- 10000
confidence_level <- 0.95
margin_of_error <- 0.05

sample_size <- calculate_sample_size(population_size, confidence_level, margin_of_error)
print(paste("The required sample size is", sample_size))

# Function to calculate margin of error
calculate_margin_of_error <- function(population_size, sample_size, confidence_level) {
    z_score <- qnorm((1 + confidence_level) / 2)
    p <- 0.8  # The minimum statistical power required is 80% (0.8) to ensures a high likelihood of identifying a true effect 
    
    # Calculate margin of error for infinite population
    margin_of_error <- z_score * sqrt((p * (1 - p)) / sample_size)
    
    # Adjust margin of error for finite population
    correction_factor <- sqrt((population_size - sample_size) / (population_size - 1))
    margin_of_error <- margin_of_error * correction_factor
    
    return(margin_of_error)
}

# Use case
population_size <- 10000
sample_size <- 370
confidence_level <- 0.95

margin_of_error <- calculate_margin_of_error(population_size, sample_size, confidence_level)
print(paste("The margin of error is", margin_of_error))