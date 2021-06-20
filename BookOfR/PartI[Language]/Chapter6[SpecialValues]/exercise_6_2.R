# Exercises

# a
foo <- c(4.3, 2.2, NULL, 2.4, NaN, 3.3, 3.1, NULL, 3.4, NA)

# ai
print(length(foo))

# aii
print(which(is.na(foo)))

# aiii
print(is.null(foo))

# aiv
print(is.na(foo[8]) + 4 / NULL)

# b
B <- list(
    c(7.7, NA, 3, NA, 1, 1, 5, NA)
)

# bi
names(B) <- 'alpha'

# bii
print(is.null(B$beta))

# biii
B$beta <- which(is.na(B$alpha))
