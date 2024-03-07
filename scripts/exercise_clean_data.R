# Preview the penguins data using the pipe operators
penguins %>%
  select(species, island)

# Preview the penguins data except the species column
penguins %>%
  select(-species) %>%
  head()

# Rename column to use camelCase
penguins %>%
  rename(islandNames = island) %>%
  head()

# Rename column using rename_with()
penguins %>%
  rename_with(tolower) %>%
  head()

# Clean names using janitor package
penguins %>%
  clean_names() %>%
  head()
