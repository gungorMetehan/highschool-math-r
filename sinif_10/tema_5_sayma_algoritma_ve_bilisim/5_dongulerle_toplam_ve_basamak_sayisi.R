# Döngülerle Toplam ve Basamak Sayısı

# 1 ile 100 arasındaki tek sayıların toplamı: for döngüsü
toplam_for <- 0
for (i in seq(1, 99, by = 2)) {
  toplam_for <- toplam_for + i
}
toplam_for  # 2500

# Aynı işlem: while döngüsü
sayac <- 1
toplam_while <- 0
while (sayac < 100) {
  toplam_while <- toplam_while + sayac
  sayac <- sayac + 2
}
toplam_while               # 2500
sum(seq(1, 99, by = 2))    # Hazır komutla kontrol
sum(1:10)                  # 55; 10 da toplama dahil

# Doğal sayının basamak sayısı: her adımda son basamağı atalım
basamak_sayisi <- function(n) {
  if (length(n) != 1 || !is.finite(n) || n < 0 || n != floor(n)) {
    stop("Negatif olmayan bir tam sayi giriniz.")
  }
  if (n == 0) return(1)
  adet <- 0
  while (n > 0) {
    n <- n %/% 10  # Tam sayı bölmesi: örneğin 472 %/% 10 = 47
    adet <- adet + 1
  }
  adet
}
basamak_sayisi(4728)  # 4
basamak_sayisi(0)     # 1

# Deneyiniz: Döngüde sayacı 2 yerine 1 artırırsanız hangi toplamı bulursunuz?