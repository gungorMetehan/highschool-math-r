# İçten Bölme, Orta Nokta ve Ağırlık Merkezi

# P, A-B parçasını AP:PB = m:n oranında içten bölsün.
icten_bol <- function(A, B, m, n) {
  if (m <= 0 || n <= 0) stop("Oran sayilari pozitif olmali.")
  (n * A + m * B) / (m + n)
}

# Örnek 1: A = (1, 2) ve B = (5, 6) olsun.
A <- c(x = 1, y = 2)
B <- c(x = 5, y = 6)
P <- icten_bol(A, B, 1, 3)
P  # (2, 3)
sqrt(sum((P - A)^2)) / sqrt(sum((B - P)^2))  # 1/3

# Örnek 2: Aynı mesafede hızlar 1/3 ve 1/2 ile orantılı: AC:CB = 2:3.
A <- c(x = -3, y = 6)
B <- c(x = 7, y = -4)
icten_bol(A, B, 2, 3)  # Karşılaşma: (1, 2)
M <- (A + B) / 2
M  # Orta nokta: (2, 1)

# Ağırlık merkezi bağıntısı
C <- c(x = 2, y = 7)
G <- (A + B + C) / 3
G  # (2, 3)

# Ağırlık merkezi görselleştirme
plot(c(A[1], B[1], C[1], A[1]), c(A[2], B[2], C[2], A[2]),
     type = "l", asp = 1, xlab = "x", ylab = "y", main = "Ağırlık Merkezi")
points(G[1], G[2], col = "red", pch = 19)
text(G[1], G[2], "G", pos = 3)