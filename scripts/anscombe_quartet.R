# Install packages Tmisc and datasaRus
install.packages("Tmisc")
install.packages("datasauRus")

# Load the packages
library('Tmisc')
library("datasauRus")

# Load the data quartet
data(quartet)
View(quartet)

# Summarize the data quartet
quartet  %>% 
    group_by(set)  %>%
    summarize(mean(x), mean(y), sd(x), sd(y), cor(x, y))

# Plot the data quartet
quartet  %>% 
    ggplot(aes(x = x, y = y)) +
    geom_point()  + 
    geom_smooth(method = lm, se = FALSE)  +
    facet_wrap(~set)

# Plot the datasaurus_dozen
datasaurus_dozen  %>% 
    ggplot(aes(x = x, y = y, colour = dataset)) +
    geom_point()  + 
    theme_void() + 
    theme(legend.position = "none") +
    facet_wrap(~dataset, ncol=3)