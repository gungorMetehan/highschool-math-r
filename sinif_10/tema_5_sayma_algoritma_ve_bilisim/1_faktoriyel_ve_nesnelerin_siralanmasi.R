# Faktöriyel ve Nesnelerin Sıralanması

# Beş farklı kitabın yan yana sıralanması
5 * 4 * 3 * 2 * 1  # 120
factorial(5)        # 120; factorial(n), n! hesaplar

# Hazır komut yerine döngüyle aynı hesabı yapalım.
faktoriyel <- function(n) {
  if (length(n) != 1 || !is.finite(n) || n < 0 || n != floor(n)) {
    stop("n, negatif olmayan bir tam sayi olmalı.")
  }
  sonuc <- 1
  for (i in seq_len(n)) {
    sonuc <- sonuc * i
  }
  sonuc
}

faktoriyel(5)  # 120
faktoriyel(0)  # 1; döngü hiç çalışmaz.

# 8 kişilik ekipte iki uç sabit: ortadaki 6 kişi yer değiştirebilir.
factorial(6)  # 720

# TUNA harflerinden tekrarsız ikili sıralamalar
harfler <- c("T", "U", "R", "A")
ikililer <- expand.grid(birinci = harfler, ikinci = harfler,
                        stringsAsFactors = FALSE)
ikililer <- ikililer[ikililer$birinci != ikililer$ikinci, ]
ikililer
nrow(ikililer)  # 4 * 3 = 12

# 7 farklı araçtan 4'ünün sıralanması
factorial(7) / factorial(7 - 4)  # 840