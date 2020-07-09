cars = as.matrix(mtcars)
image(scale(cars), col = cm.colors(256))
image(scale(cars), col = rainbow(100))
image(scale(cars), col = terrain.colors(16))
