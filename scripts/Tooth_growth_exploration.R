data("ToothGrowth")
View(ToothGrowth)

# Create filter for dose 0.5
fileterd_tg <- filter(ToothGrowth, dose == 0.5)
View(fileterd_tg)

# Arrange the len column in ascending order
sorted_filter_asc <- arrange(fileterd_tg, len)
View(sorted_filter_asc)

# Arrange the len column in descending order
sorted_filter_desc <- arrange(fileterd_tg, desc(len))
View(sorted_filter_desc)

# Use the Nested function without using the %>% (pipe operator)
arrange(filter(ToothGrowth, dose == 0.5), desc(len))

# Use the Nested function using the %>% (pipe operator)
filtered_tooth_growth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  arrange(desc(len))

View(filtered_tooth_growth)

# Use the pipe operators with group_by and summarize function
supplement_tooth_growth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean = mean(len, na.rm = T), .groups = "drop")

View(supplement_tooth_growth)
