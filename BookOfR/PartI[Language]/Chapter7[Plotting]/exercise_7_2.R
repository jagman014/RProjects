# Exercises
library('ggplot2')

Weight <- c(55, 85, 75, 42, 93, 63, 58, 75, 89, 67)
Height <- c(161, 185, 174, 154, 188, 178, 170, 167, 181, 178)
Sex <- factor(c('female', 'male', 'male', 'female', 'male', 'male', 'female',
                'male', 'male', 'female'))
A <- data.frame(Weight, Height, Sex)

p <- qplot(A$Weight, A$Height, color=A$Sex, shape=A$Sex, xlab='Weight / kg',
           ylab='Height / cm', main='Plot of Weight (kg) vs Height (cm)') + 
    geom_point(size=4) + labs(color='Sex', shape='Sex')

print(p)    
