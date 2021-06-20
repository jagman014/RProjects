# Exercises
setwd(paste(getwd(), 'PartI[Language]/Chapter8[FileIO]', sep='/'))

# ai
q5 <- quakes[quakes$mag >= 5, ]
write.table(q5, 'q5.txt', sep='!', quote=FALSE, row.names=FALSE)

# aii
q5.dframe <- read.table('q5.txt', header=TRUE, sep='!', stringsAsFactors=FALSE)

# bi
library(car)

x <- Duncan$education
y <- Duncan$income

png('8_1_bi.png', width=500, height=500)

plot(x, y, type='n', xlim=c(0, 100), ylim=c(0, 100), 
     xlab='Percentage of people with a high school education', 
     ylab='Percentage of people with income >$3.5k / yr', 
     main='Education vs Income for Jobs in 1950')

points(x[Duncan$prestige <= 80], y[Duncan$prestige <= 80], col='black', pch=1)
points(x[Duncan$prestige > 80], y[Duncan$prestige > 80], col='blue', pch=20)

# bii
legend(
    'topleft',
    legend=c('Job prestige \u2264 80%', 'Job prestige > 80%'),
    pch=c(1, 20),
    col=c('black', 'blue'),
    pt.cex=c(2, 2)
)

dev.off()

# ci
exer <- list(quakes=quakes, q5.dframe=q5.dframe, Duncan=Duncan)

dput(exer, 'Exercise8-1.txt')

# cii
list.of.dataframes <- dget('Exercise8-1.txt')

# d
library(ggplot2)

x <- 1:20
y <- c(-1.49, 3.37, 2.59, -2.78, -3.94, -0.92, 6.43, 8.51, 3.41, -5.23, -12.01,
       -6.58, 2.87, 14.12, 9.63, -4.58, -14.75, -11.67, 1.17, 15.62)
ptype <- rep(NA, length(x))
ptype[y >= 5] <- 'too_big'
ptype[y <= -5] <-'too_small'
ptype[(x >= 5 & x <= 15) & (y > -5 & y < 5)] <- 'sweet'
ptype[(x < 5 | x > 15) & (y > -5 & y < 5)] <- 'standard'
ptype <- factor(ptype)

qplot(x, y, color=ptype, shape=ptype) +
    geom_point(size=4) +
    geom_line(mapping=aes(group=1), color='black', lty=2) +
    geom_hline(mapping=aes(yintercept=c(-5, 5)), color='red') +
    geom_segment(mapping=aes(x=5, y=-5, xend=5, yend=5), color='red', lty=3) +
    geom_segment(mapping=aes(x=15, y=-5, xend=15, yend=5), color='red', lty=3)

ggsave('Section7-4-3.tiff', width=180, height=150, units='mm')
