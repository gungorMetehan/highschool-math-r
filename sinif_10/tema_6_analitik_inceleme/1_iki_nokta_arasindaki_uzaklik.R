# İki Nokta Arasındaki Uzaklık

uzaklik <- function(x1, y1, x2, y2) {
  sqrt((x2 - x1)^2 + (y2 - y1)^2)
}

# örnek
uzaklik(2, 6, 6, 3)  # 5

# robotun konumu: (1 + 3t, 2 + 4t) olsun.
# t = 2 seçilsin.
t <- 2
x <- 1 + 3 * t
y <- 2 + 4 * t
uzaklik(1, 2, x, y)  # 10

# Grafiksel inceleme
plot(c(1, x), c(2, y), type = "b", pch = 19, asp = 1,
     xlab = "x", ylab = "y", main = "Robotun Doğrusal Hareketi")
segments(1, 2, x, 2, lty = 2)
segments(x, 2, x, y, lty = 2)
text(c(1, x), c(2, y), c("Başlangıç", "2. saniye"), pos = 3)

