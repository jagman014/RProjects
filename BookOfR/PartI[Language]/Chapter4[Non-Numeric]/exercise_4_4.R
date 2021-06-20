# Exercises

# a
cat('"The quick brown fox\n\tjumped over\n\t\tthe lazy dogs"')

# b
num1 <- 4
num2 <- 0.75

paste('The result of multiplying ', num1, ' by ', num2, ' is ', num1 * num2)

# c
directory <- getwd()
sub(pattern='jagma', replacement='gallen', directory) -> directory

print(directory)

# d
bar <- "How much wood could a woodchuck chuck"
print(bar)

# di
bar <- paste(bar, "if a woodchuck could chuck wood")
print(bar)

# dii
bar <- gsub(pattern='wood', replacement='metal', bar)
print(bar)

# e
E <- "Two 6-packs for £12.99"

# ei
print(substr(E, start=5, stop='10') == '6-pack')

# eii
E <- sub(pattern='12', replacement='10', E)
print(E)
