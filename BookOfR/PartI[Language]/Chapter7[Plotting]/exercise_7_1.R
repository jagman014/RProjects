# Exercises

# a
x <- -3:3
y <- 7:13

plot(x, y, type='n', main='', xlab='', ylab='')
abline(h=c(7, 13), v=c(-3, 3), col='red', lty=5, lwd=1.5)
arrows(x0=-2.5, y0=12.5, x1=-1, y1=10.5)
arrows(x0=2.5, y0=12.5, x1=1, y1=10.5)
arrows(x0=-2.5, y0=10, x1=-1, y1=10)
arrows(x0=2.5, y0=10, x1=1, y1=10)
arrows(x0=-2.5, y0=7.5, x1=-1, y1=9.5)
arrows(x0=2.5, y0=7.5, x1=1, y1=9.5)
text(x=0, y=10, labels='SOMETHING\nPROFOUND')

# b
Weight <- c(55, 85, 75, 42, 93, 63, 58, 75, 89, 67)
Height <- c(161, 185, 174, 154, 188, 178, 170, 167, 181, 178)
Sex <- factor(c('female', 'male', 'male', 'female', 'male', 'male', 'female',
                'male', 'male', 'female'))
B <- data.frame(Weight, Height, Sex)

plot(B$Weight, B$Height, type='n', xlab='Weight / kg', ylab='Height / cm',
     main='Plot of Weight (kg) vs Height (cm)')
points(B$Weight[B$Sex == 'male'], B$Height[B$Sex == 'male'], pch=2, col='blue',
       cex=2)
points(B$Weight[B$Sex == 'female'], B$Height[B$Sex == 'female'], pch=6, 
       col='red', cex=2)
legend(
    'topleft',
    legend=c('Male', 'Female'),
    pch=c(2, 6),
    col=c('blue', 'red'),
    pt.cex=c(2, 2)
)
