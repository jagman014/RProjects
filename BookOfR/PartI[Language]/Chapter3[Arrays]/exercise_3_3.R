# Exercises

# a
A <- array(data = seq(4.8, 0.1, length.out = 8),
           dim = c(4, 2, 6))
print(A)

# b
B <- A[c(4, 1), 2,]
print(B)

# c
C <- array(data = rep(B[2,], times = 4), dim = c(2, 2, 2, 3))
print(C)

# d
D <- A[, ,-6]
print(D)

# e
D[c(2, 4), 2, c(1, 3, 5)] <- -99
print(D)
