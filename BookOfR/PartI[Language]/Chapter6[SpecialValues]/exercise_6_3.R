# Exercises

# ai
foo <- array(1:36, dim=c(3, 3, 4))
print(class(foo))

# aii
bar <- as.vector(foo)
print(class(bar))

# aiii
baz <- as.character(bar)
print(class(baz))

# aiv
qux <- as.factor(baz)
print(class(qux))

# av
quux <- bar + c(-0.1, 0.1)
print(class(quux))

# b
ai <- is.numeric(foo) + is.integer(foo)
aii <- is.numeric(bar) + is.integer(bar)
aiii <- is.numeric(baz) + is.integer(baz)
aiv <- is.numeric(qux) + is.integer(qux)
av <- is.numeric(quux) + is.integer(quux)

B <- factor(c(ai, aii, aiii, aiv, av))
print(B)
print(as.numeric(B))

# c
C <- matrix(2:13, nrow=3, ncol=4)
print(as.character(as.vector(C)))

# d
D <- matrix(
    c(34, 0, 1,
      23, 1, 2,
      33, 1, 1,
      42, 0, 1,
      41, 0, 2),
    nrow=5, ncol=3, byrow=TRUE
)

# di
D.data.frame <- as.data.frame(D)

# dii
D.data.frame.logic <- D.data.frame
D.data.frame.logic[, 2] <- as.logical(D.data.frame.logic[, 2])

# diii
D.data.frame.factor <- D.data.frame.logic
D.data.frame.factor[, 3] <- as.factor(D.data.frame.factor[, 3])
