# Exercises

# a
sex <- 1:20
sex[c(1, 5:7, 12, 14:16)] <- 'F'
sex[c(2:4, 8:11, 13, 17:20)] <- 'M'

party <- 1:20
party[c(1, 4, 12, 15, 16, 19)] <- 'Labour'
party[c(6, 9, 11)] <- 'Greens'
party[c(10, 20)] <- 'Other'
party[c(2, 3, 5, 7, 8, 13, 14, 17, 18)] <- 'National'

# b
gender <- c('M', 'F')
sex.fac <- factor(sex, levels=gender)

parties <- c('Labour', 'Greens', 'National', 'Maori', 'Other')
party.fac <- factor(party, levels=parties)

# ci
print(party.fac[sex.fac == 'M'])

# cii
print(sex.fac[party.fac == 'National'])

# d
party.new <- c('National', 'Maori', 'Maori', 'Labour', 'Greens', 'Labour')
sex.new <- c('M', 'M', 'F', 'F', 'F', 'M')

sex.new.fac <- factor(c(sex, sex.new), 
                        levels=levels(sex.fac))
party.new.fac <- factor(c(party, party.new), 
                        levels=levels(party.fac))

# e
percentages <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40,
                 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61)

cuts <- c(0, 30, 70, 100)
labs <- c('Low', 'Moderate', 'High')

confidence <- cut(percentages, breaks=cuts, include.lowest=TRUE, labels=labs)

# f
confidence.labour <- confidence[party.new.fac == 'Labour']

confidence.national <- confidence[party.new.fac == 'National']
