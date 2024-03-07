# Install packages
# install.packages("tidyverse")
# install.packages("palmerpenguins")

# Load packages
library(ggplot2)
library(palmerpenguins)

# Load the data
# data(penguins)
# View(penguins)

# Create a scatter plot of penguin flipper length and body mass
ggplot(data = penguins) +
  geom_point(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    color = species,
    shape = species,
    size = species,
  )) +
  labs(
    title = "Penguin flipper length and body mass",
    x = "Flipper length (mm)",
    y = "Body mass (g)"
  )

# Create a smooth line plot of penguin flipper length and body mass
ggplot(data = penguins) +
  geom_smooth(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
  ), color = "#ff622d") +
  labs(
    title = "Penguin flipper length and body mass",
    x = "Flipper length (mm)",
    y = "Body mass (g)"
  )

# Combine the scatter plot and smooth line plot
ggplot(data = penguins) +
  geom_point(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    color = species,
  )) +
  geom_smooth(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
  ), color = "#2f396d")

# Create a line chart for each species
ggplot(data = penguins) +
  geom_smooth(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    linetype = species
  ))

# Use the scatter plot chart with some of noise
ggplot(data = penguins) +
  geom_jitter(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g
  ))

# Use the bar chart to show the count of cut in diamonds dataset
ggplot(data = diamonds) +
  geom_bar(mapping = aes(
    x = cut,
    fill = cut,
  ))

# Use the stacked bar chart to show the composition of clarity in diamonds dataset
ggplot(data = diamonds) +
  geom_bar(mapping = aes(
    x = cut,
    fill = clarity,
  ))

# Create the scatter plot for method "loess"
ggplot(data = penguins) +
  geom_smooth(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    method = "loess"
  ))

# Create the scatter plot for method "Gam"
ggplot(data = penguins, mapping = aes(
  x = flipper_length_mm,
  y = body_mass_g,
  color = species # color points by species
)) +
  geom_point(size = 2) + # increase point size
  geom_smooth(
    method = "gam",
    formula = y ~ s(x)
  ) +
  labs(
    title = "Penguin flipper length vs body mass", # add title
    x = "Flipper Length (mm)", # add x-axis label
    y = "Body Mass (g)" # add y-axis label
  ) +
  theme_minimal() # use minimal theme for cleaner look

# Create the scatter plot for using facet_wrap()
ggplot(data = penguins, mapping = aes(
  x = flipper_length_mm,
  y = body_mass_g,
  color = species # color points by species
)) +
  geom_point(size = 2) + # increase point size
  labs(
    title = "Penguin flipper length vs body mass", # add title
    x = "Flipper Length (mm)", # add x-axis label
    y = "Body Mass (g)" # add y-axis label
  ) +
  facet_wrap(~species) + # use facet_wrap to create separate plots
  theme_minimal() # use minimal theme for cleaner look

# Create the bar chart for diamonds dataset with the facet_wrap()
ggplot(data = diamonds) +
  geom_bar(mapping = aes(
    x = color,
    fill = cut,
  )) +
  facet_wrap(~cut) # use facet_wrap to create separate plots

# Create the scatter plot to view the relationship of
# flipper_length_mm and body_mass_g for each species and sex
ggplot(data = penguins, mapping = aes(
  x = flipper_length_mm,
  y = body_mass_g,
  color = species
)) +
  geom_point() +
  facet_grid(sex ~ species) + # use facet_grid to create separate plots
  labs(
    title = "Penguin flipper length vs body mass", # add title
    x = "Flipper Length (mm)", # add x-axis label
    y = "Body Mass (g)" # add y-axis label
  ) +
  theme_minimal() +
  # Clear the grid lines
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  ) +
  # Add a title to the plot
  labs(
    title = "Penguin flipper length vs body mass",
    caption = "Data analyzed by Stefanus Bernard M. L. (2024)"
  )

# Save the plot using ggsave()
# ggsave("./exercise/plot/penguin_flipper_length_vs_body_mass.png")

# Save the plot without using ggsave()
# png("./exercise/plot/penguin_flipper_length_vs_body_mass.png")
# jpeg("./exercise/plot/penguin_flipper_length_vs_body_mass.jpeg")
# pdf("./exercise/plot/penguin_flipper_length_vs_body_mass.pdf")
# Create the scatter plot and add filter before it is plotted
data %>%
  filter(species == "Adelie") %>%
  ggplot(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
  )) +
  geom_point()
