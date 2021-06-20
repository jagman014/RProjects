# Exercises

# a
A <- list(
    seq(-4, 4, length.out=20),
    matrix(c(F, T, T, T, F, T, T, F, F), nrow=3, ncol=3),
    c('don', 'quixote'),
    factor(c('LOW', 'MED', 'LOW', 'MED', 'MED', 'HIGH'))
)

# ai
print(A[[2]][2:1, 2:3])

# aii
A[[3]][1] <- sub(pattern='d', replacement='D', A[[3]][1])
A[[3]][2] <- sub(pattern='q', replacement='Q', A[[3]][2])

cat('"Windmills! ATTACK"\n\t-\\', A[[3]][1], ' ', A[[3]][2], '/-', sep='')

# aiii
print(A[[1]][A[[1]] > 1])

# aiv
print(which(A[[4]] == 'MED'))

# b
B <- list(
    facs=A[[4]],
    nums=c(3, 2.1, 3.3, 4, 1.5, 4.9),
    oldlist=A[1:3]
)

# bi
print(B$facs[B$nums >= 3])

# bii
B$flags <- rep(B$oldlist[[2]][, 3], times=2)

# biii
print(B$nums[!B$flags])

# biv
B$oldlist[[3]] <- 'Don Quixote'
