attach(mtcars)
stripchart(mpg~cyl)
detach(mtcars)

attach(mtcars)
stripchart(mpg ~ cyl, method = "jitter")
detach(mtcars)
