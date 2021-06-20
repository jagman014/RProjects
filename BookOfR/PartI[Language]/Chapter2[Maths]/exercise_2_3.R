# Exercises

# (a)
a <- seq(from=5, to=-11, by=-0.3)
print(a)

# (b)
a <- sort(a, decreasing=FALSE)
print(a)

# (c)
c <- rep(c(-1.3, -5.7, -9), times=2, each=10)
print(sort(c, decreasing=TRUE))

# (d)
d_i <- 6:12
d_ii <- rep(5.3, times=3)
d_iii <- -3
d_iv <- seq(from=102, to=length(c), length.out=9)
d <- c(d_i, d_ii, d_iii, d_iv)
print(d)

# (e)
print(length(d))
