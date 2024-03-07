# Load the library
library("tidyverse")
library("palmerpenguins")

# Generate the identifier for the data
id <- c(1:10)

# Generate the data employee name
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

# Generate the job title for each employee
job_title  <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

# Generate the dataframe
employee  <- data.frame(id, name, job_title)

# View the employee dataframe
# View(employee)

# Separate the column name into first name and last name
separate(employee, name, into = c("first_name", "last_name"), sep = " ")

# Combine the first_name and the last_name using the unite function
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)

unite(employee, "name", "first_name", "last_name", sep = " ")

# Using the mutate function to create a new column
print(head(penguins))

# Create a new column called "bill_length_m" and "body_mass_kg"
new_penguins  <- penguins  %>%
                    mutate(bill_length_m = bill_length_mm / 1000,
                        body_mass_kg = body_mass_g / 1000)

# View(head(new_penguins))

# Create a dataset where we have multiple rows for each penguin, one for each measurement
penguins_long  <- penguins  %>% 
    select(species, island, sex, body_mass_g, bill_length_mm)  %>% 
    pivot_longer(cols = c(body_mass_g, bill_length_mm), names_to = "measurement", values_to = "value")

# Use pivot_wider to spread these measuremenst across multiple columns
penguins_wide  <- penguins_long  %>% 
    pivot_wider(names_from = measurement, values_from = value)

penguins_long  %>%
    View()  %>% 
    head()

penguins_wide  %>% 
    View()  %>% 
    head()