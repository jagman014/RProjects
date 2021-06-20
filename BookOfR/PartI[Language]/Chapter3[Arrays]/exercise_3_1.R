# Exercises

# a
A <- matrix(
    c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5),
    nrow = 4,
    ncol = 2,
    byrow = TRUE
)
print(A)

# b
dim(A[-1, ])

# c
A[, 2] <- sort(A[, 2])
print(A)

# d
D <- matrix(A[-4,-1], ncol = 1)
print(D)

# e
E <- A[3:4, ]
print(E)

# f
A[4:1, 2:1] <- diag(E) / 2
print(A)
