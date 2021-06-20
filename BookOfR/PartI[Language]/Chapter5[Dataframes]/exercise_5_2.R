# Exercises

# a
dframe <- data.frame(
    person=c('Stan', 'Francine', 'Steve', 'Roger', 'Hayley', 'Klaus'),
    sex=factor(c('M', 'F', 'M', 'M', 'F', 'M')),
    funny=factor(
        c('High', 'Med', 'Low', 'High', 'Med', 'Med'),
        levels=c('Low', 'Med', 'High'),
        ordered=TRUE
    )
)

# b
dframe$age <- c(41, 41, 15, 1600, 21, 60)

# c
dframe <- dframe[c(1, 4, 2, 3)]

# d
mydata <- data.frame(
    person=c('Peter', 'Lois', 'Meg', 'Chris', 'Stewie', 'Brian'), 
    age=c(42, 40, 17, 14, 1, 7), 
    sex=factor(c('M', 'F', 'F', 'M', 'M', 'M')),
    funny=factor(
        c('High', 'High', 'Low', 'Med', 'High', 'Med'),
        levels=c('Low', 'Med', 'High'),
        ordered=TRUE
    )
)

# e
mydataframe <- rbind(dframe, mydata)

# f
print(mydataframe[mydataframe$sex == 'F' & mydataframe$funny != 'Low', 1:2])

# g
print(mydataframe[substr(mydataframe$person, start=1, stop=1) == 'S', ])
