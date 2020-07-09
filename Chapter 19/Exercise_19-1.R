attach(mtcars)
cars = as.matrix(mtcars)
h = dist(scale(cars))
h2 = hclust(h, method = "single")
plot(h2)

h = dist(scale(cars), method = "manhattan")
h2 = hclust(h, method = "single")
plot(h2)
