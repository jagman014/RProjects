# Exercises

# (a)
a <- c(2, 0.5, 1, 2, 0.5, 1, 2, 0.5, 1)
print(a)
a <- a / c(2, 0.5, 1)
print(a)

# (b)
F <- c(45, 77, 20, 19, 101, 120, 212)
C <- (5 / 9)* (F - 32)
print(C)

# (c)
c_1 <- c(2, 4, 6)
c_2 <- c(1,2)
c_3 <- rep(c_1, times=2) * rep(c_2, each=3)
print(c_3)

# (d)
c_3[2:(length(c_3) - 1)] <- c(-0.1, 100)
print(c_3)
