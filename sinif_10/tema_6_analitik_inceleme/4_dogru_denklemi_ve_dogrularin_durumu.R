# Doğru Denklemi ve Doğruların Birbirine Göre Durumu

# d1: y=2x+6, d2: y=2x-4, d3: y=x+1, d4: 2y=2x+2 doğruları verilsin.
# d1 ve d2 paralel; d3 ve d4 çakışır; d1 ve d3 kesişir. Bunu fonksiyon yazarak test edelim.
dogru_durumu <- function(m1, b1, m2, b2) {
  # Bu işlev y=mx+b biçimindeki (dikey olmayan) doğrular içindir.
  if (abs(m1 - m2) < 1e-10) {
    if (abs(b1 - b2) < 1e-10) "Cakisan" else "Paralel"
  } else if (abs(m1 * m2 + 1) < 1e-10) {
    "Dik kesisen"
  } else {
    "Kesisen"
  }
}
dogru_durumu(2, 6, 2, -4)  # Paralel
dogru_durumu(1, 1, 1, 1)   # Cakisan
dogru_durumu(2, 6, 1, 1)   # Kesisen
dogru_durumu(2, 6, -0.5, 1)  # Dik kesisen; ek örnek.

# d1 ile d3'ün kesişimi: 2x+6=x+1.
x_kesisim <- (1 - 6) / (2 - 1)
y_kesisim <- 2 * x_kesisim + 6
c(x = x_kesisim, y = y_kesisim)  # (-5,-4)

# İki noktadan doğru denklemi üretelim.
# A(1, 6) ve B(3, 10): m = 2 ve sabit terim = 4.
x1 <- 1
y1 <- 6
x2 <- 3
y2 <- 10
m <- (y2 - y1) / (x2 - x1)
b <- y1 - m * x1
c(egim = m, sabit = b)  # y = 2x + 4
# x1 = x2 ise bu bölme yapılmaz; doğru x = x1 biçiminde dikeydir.
# Yatay doğru y=sabit biçimindedir. Dikey ve yatay doğrular birbirine diktir.

# Eğimi 2, y eksenini kestiği değer 4 olan doğru.
f <- function(x) 2 * x + 4
f(0)          # y ekseni: (0, 4)
-4 / 2        # x ekseni: (-2, 0)
abs(10 - f(3)) < 1e-10  # K(3, 10) doğru üzerinde midir? Evet.

plot(c(-8, 4), c(-10, 15), type = "n", asp = 1,
     xlab = "x", ylab = "y", main = "Doğruların Birbirine Göre Konumları")
abline(a = 6, b = 2, col = "blue")
abline(a = -4, b = 2, col = "red")
abline(a = 1, b = 1, col = "darkgreen")
points(x_kesisim, y_kesisim, pch = 19)