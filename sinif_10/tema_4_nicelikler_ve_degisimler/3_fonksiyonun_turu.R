# Fonksiyonun Türü

artan_mi <- function(x, y) {
  all(diff(y) > 0)
}

azalan_mi <- function(x, y) {
  all(diff(y) < 0)
}

dogrusal_mi <- function(x, y) {
  egimler <- diff(y) / diff(x)
  all(abs(egimler - egimler[1]) < 1e-6)
}


## Artan ve Doğrusal
x1 <- 1:5
y1 <- 2*x1 + 1

plot(x1, y1, type = "b",
     main = "Artan ve Doğrusal",
     xlab = "x", ylab = "y")

artan_mi(x1, y1)
azalan_mi(x1, y1)
dogrusal_mi(x1, y1)

## Azalan ve Doğrusal
x2 <- 1:5
y2 <- -3*x2 + 10

plot(x2, y2, type = "b",
     main = "Azalan ve Doğrusal",
     xlab = "x", ylab = "y")

artan_mi(x2, y2)
azalan_mi(x2, y2)
dogrusal_mi(x2, y2)

## Artan ama Doğrusal Değil
x3 <- 1:5
y3 <- x3^2

plot(x3, y3, type = "b",
     main = "Artan ama Doğrusal Değil",
     xlab = "x", ylab = "y")

artan_mi(x3, y3)
dogrusal_mi(x3, y3)

## Ne Artan Ne Azalan
x4 <- 1:5
y4 <- c(2, 5, 3, 6, 4)

plot(x4, y4, type = "b",
     main = "Ne Artan Ne Azalan",
     xlab = "x", ylab = "y")

artan_mi(x4, y4)
azalan_mi(x4, y4)
dogrusal_mi(x4, y4)