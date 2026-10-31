# Gerçek Yaşamda Doğrusal Modeller

# Telefon tarifesi: sabit 60 TL, dakika başına 0.50 TL
ucret <- function(dakika) 60 + 0.50 * dakika
ucret(100)        # 110 TL
(80 - 60) / 0.50  # 80 TL için 40 dakika

dakika <- seq(0, 200, by = 10)
plot(dakika, ucret(dakika), type = "l", lwd = 2,
     xlab = "Konusma suresi (dakika)", ylab = "Ucret (TL)", main = "Telefon tarifesi")
points(100, ucret(100), col = "red", pch = 19)

# Celsius-Fahrenheit: (-5, 23) ve (10, 50) noktaları
m <- (50 - 23) / (10 - (-5))
b <- 23 - m * (-5)
c(egim = m, sabit = b)  # 1.8 ve 32
fahrenheit <- function(celsius) m * celsius + b
fahrenheit(c(0, 100))  # 32, 212

# 200 TL birim satış geliri ve 3000 TL sabit gider ile başa baş durumu
adet <- c(5, 10, 25, 50, 80, 100)
data.frame(adet, gelir = 200 * adet, gider = 3000, kar = 200 * adet - 3000)
3000 / 200  # 15 ürün: başa baş; kâr için en az 16 ürün gerekir.
