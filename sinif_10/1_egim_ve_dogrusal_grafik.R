# Eğim ve Doğrusal Grafik

## Eğim
egim <- function(x1, y1, x2, y2) {
  (y2 - y1) / (x2 - x1)
}

egim(1, 3, 3, 7)

## Doğrusal Grafik
dogru_grafik <- function(m, b) {
  x <- seq(-10, 10, by = 0.1)
  y <- m * x + b
  
  plot(x, y, type = "l",
       main = "Doğrusal Grafik",
       xlab = "x", ylab = "y")
}

dogru_grafik(2, 1)