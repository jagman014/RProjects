# Exercises

# a
foo <- c(13563, -14156, -14319, 16981, 12921, 11979, 9568, 8833, -12968, 8133)

# ai
print(foo[is.finite(foo ^ 75)])

# aii
print(foo[foo ^ 75 != -Inf])

# b
bar <- matrix(
    c(77875.4, -35466.25, -39803.81, 27551.45, -73333.85, 55976.34,
      23764.3, 36599.69, 76694.82, -36478.88, -70585.69, 47032),
    nrow=3, ncol=4
)

# bi
print(which(is.nan((bar ^ 65) / Inf), arr.ind=TRUE))

# bii
print(B_1 <- bar[!is.nan((bar ^ 67) + Inf)])
print(B_2 <- bar[bar ^ 67 != -Inf])
print(B_1 == B_2)

# biii
print(bar[(is.finite(bar ^ 67)) | (bar ^ 67 == -Inf)])
