# Exercises

# a
A_1 <- rbind(c(1, 2), c(2, 4), c(7, 6))
A_2 <- cbind(c(10, 30, 50), c(20, 40, 60))
A <- (2 / 7) * (A_1 - A_2)
print(A)

# b
B_1 <- matrix(c(1, 2, 7), nrow=3, ncol=1)
B_2 <- matrix(c(3, 4, 8), nrow=3, ncol=1)

# bi
# can't do B_1 %*% B_2

# bii
print(t(B_1) %*% B_2)

# biii
print(t(B_2) %*% (B_1 %*% t(B_1)))

# biv
# can't do (B_1 %*% t(B_1)) %*% t(B_2)

# bv
print(
    solve(
        (B_2 %*% t(B_2)) + (B_1 %*% t(B_1) - (100 * diag(3)))
    )
)

# c
C <- diag(c(2, 3, 5, -1))
print(
    (solve(C) %*% C) -diag(4)
)
