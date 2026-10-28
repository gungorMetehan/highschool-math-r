# Pascal Üçgeni ve Seçim Sayıları

# n kişi arasından 0, 1, ..., n kişinin seçilme sayıları
n <- 4
choose(n, 0:n)  # 1 4 6 4 1

# Pascal üçgeninin ilk yedi satırı; satır numarası 0'dan başlar.
for (n in 0:6) {
  cat("Satir", n, ":", choose(n, 0:n), "\n")
}

# Bir iç sayı, üstündeki iki komşu sayının toplamıdır.
choose(6, 2)                     # 15
choose(5, 1) + choose(5, 2)      # 5 + 10 = 15

# n. satır toplamı, n kişinin tüm alt gruplarının sayısıdır.
sum(choose(6, 0:6))  # 64
2^6                  # 64

# Deneyiniz: n = 7 için satır toplamını ve 2^n değerini karşılaştırınız.