# Exercises

# (a)
a <- c(seq(from=3, to=6, length.out=5), 
       rep(c(2, -5.1, -33), times=2), (7 / 12) + 2)
print(a)

# (b)
b <- c(a[1], a[length(a)])
print(b)

# (c)
c <- a[c(-1, -length(a))]
print(c)

# (d)
d <- c(b[1], c, b[length(b)])
print(d)

# (e)
a <- sort(a, decreasing=FALSE)
print(a)

# (f)
f <- a[length(a):1]  # reverses the sorted vector
print(f)

# (g)
g <- c(rep(c[3], times=3), rep(c[6], times=4), c[length(c)])
print(g)

# (h)
h <- a
h[c(1, 5:7, length(h))] <- 99:95
print(h)
