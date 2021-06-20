# Exercises

# a
A <- c(7, 5, 6, 1, 2, 10, 8, 3, 8, 2)

# ai
A_1 <- A[A >= 5]

# aii
print(A[-which(A >= 5)])

# b
B <- matrix(A_1, nrow=2, ncol=3, byrow=TRUE)

# bi
B[B == 8] <- B[1, 2] ^ 2

# bii
print(all((B <= 25) & (B > 4)))

# c
C <- array(c(10, 5, 1, 4, 7, 4, 3, 3, 1, 3, 4, 3, 1, 7, 8, 5, 3, 7, 3),
           dim=c(3, 2, 3))

# ci
print(which((C == 3) | (C == 4), arr.ind=TRUE))

# cii
C[(C < 3) | (C >= 7)] <- 100

# d
print(A[c(FALSE, TRUE)])
print(A[c(0, 1)])
# can't use 0/1 for FALSE/TRUE for indexing
