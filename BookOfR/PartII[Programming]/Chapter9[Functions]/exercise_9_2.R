# Exercise 9.2

# a
print(seq(-4, 4, 0.2))
    # from, to, step.size

# bi
print(array(8:1, dim=c(2, 2, 2)))
    # positional, exact matching

# bii
print(rep(1:2, 3))
    # positional matching

# biii
print(seq(from=10, to=8, length=5))
    # exact, partial matching

# biv
print(sort(decreasing=T, x=c(2, 1, 1, 2, 0.3, 3, 1.3)))
    # exact, positional matching

# bv
print(which(matrix(c(T, F, T, T), 2, 2)))
    # positional matching

# bvi
print(which(matrix(c(T, F, T, T), 2, 2), a=T))
    # positional, partial matching

# c
print(args(plot.default))
    # type -> normal arg
    # pch -> within ...
    # xlab -> normal arg
    # ylab -> normal arg
    # lwd -> within ...
    # lty -> within ...
    # col -> within ...
