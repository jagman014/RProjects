# Exercises

# a
A <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)

# ai
print(which(A == 6))

# aii
print(which(A >= 6))

# aiii
print(which(A < (6 + 2)))

# aiv
print(which(A != 6))

# b
B <- array(data=A[-1:-3], dim=c(2, 2, 3))

# bi
print(B[B <= ((6 / 2) + 4)])

# bii
print(B[B + 2 <= ((6 / 2) + 4)])

# c
C <- diag(10)
print(C == 0)

# d
print(any(B <= ((6 / 2) + 4)))
print(all(B <= ((6 / 2) + 4)))

print(any(B + 2 <= ((6 / 2) + 4)))
print(all(B + 2 <= ((6 / 2) + 4)))

# e
print(any(diag(C == 0)))
