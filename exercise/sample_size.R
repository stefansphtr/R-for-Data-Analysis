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