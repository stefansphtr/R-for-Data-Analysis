# Get the working directory
getwd()

# Install the library palmerpenguins
install.packages("palmerpenguins")

# Load the library needed
library("tidyverse")
library("palmerpenguins")

# Sorting the data penguins by bill_length_mm in ascending order
penguins %>%
  arrange(bill_length_mm) %>%
  head()

# Sorting the data penguins by bill_length_mm in descending order
penguins %>%
  arrange(-bill_length_mm) %>%
  head()

# Save the sorted data to a variable penguins_2
penguins_2 <- penguins %>%
  arrange(-bill_length_mm)

# Display the first six rows
View(penguins_2)

# Summarize the penguins data based on the average bill length for each species
penguins %>%
  group_by(species) %>%
  drop_na() %>%
  summarize(avg_bill = mean(bill_length_mm))

# Save the summarized data to a variable avg_bill_each_species
avg_bill_each_species <- penguins %>%
  group_by(species) %>%
  drop_na() %>%
  summarize(avg_bill = mean(bill_length_mm))

# Display the summarized data
View(avg_bill_each_species)

# Summarize the penguins data based on the maximum bill length for each island
penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(max_bill = max(bill_length_mm))

# Save the summarized data to a variable max_bill_each_island
max_bill_each_island <- penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(max_bill = max(bill_length_mm))

# Display the summarized data
View(max_bill_each_island)

# Summarize the penguins data based on the maximum bill length and the average bill length for each species and island
penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(max_bl = max(bill_length_mm), avg_bl = mean(bill_length_mm)) %>%
  arrange(-max_bl)

# Save the summarized data to a variable max_avg_bill_each_species_island
max_avg_bill_each_species_island <- penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(max_bl = max(bill_length_mm), avg_bl = mean(bill_length_mm)) %>%
  arrange(-max_bl)

# Display the summarized data
View(max_avg_bill_each_species_island)

# Summarize the penguins data based on the species Gentoo for each species and island
penguins %>%
  filter(species == "Gentoo") %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(max_bl = max(bill_length_mm), avg_bl = mean(bill_length_mm)) %>%
  arrange(-max_bl)

# Save the summarized data to a variable max_avg_bill_gentoo
max_avg_bill_gentoo <- penguins %>%
  filter(species == "Gentoo") %>%
  group_by(island) %>%
  drop_na() %>%
  summarize(max_bl = max(bill_length_mm), avg_bl = mean(bill_length_mm)) %>%
  arrange(-max_bl)

# Display the summarized data
View(max_avg_bill_gentoo)
