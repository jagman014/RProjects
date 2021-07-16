# Exercise 9.1

# a
print(ls("package:methods")[1:20])
print(length(ls("package:methods")))
    # 203 items

# bi
print(environment(read.table))
    # namespace:utils

# bii
print(environment(data))
    # namespace:utils

# biii
print(environment(matrix))
    # namespace:base

# biv
print(environment(jpeg))
    # namespace:grDevices

# c
print(any("smoothScatter" == ls("package:graphics")))
    # TRUE
