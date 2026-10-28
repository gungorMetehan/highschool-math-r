# Mantık Bağlaçları, Niceleyiciler ve Karar Verme

# Mantık bağlaçları için doğruluk tablosu
tablo <- expand.grid(p = c(FALSE, TRUE), q = c(FALSE, TRUE))
tablo$ve <- tablo$p & tablo$q
tablo$veya <- tablo$p | tablo$q
tablo$ya_da <- xor(tablo$p, tablo$q)  # Yalnızca biri doğru.
tablo$ise <- !tablo$p | tablo$q      # p ise q.
tablo$ancak_ve_ancak <- tablo$p == tablo$q
tablo

# Örnek
belge_turu <- function(ortalama, basarisiz_ders, davranis, devamsizlik) {
  uygun <- basarisiz_ders == 0 && davranis == 100 && devamsizlik <= 5
  if (!uygun || ortalama < 70) {
    "Belge alamaz"
  } else if (ortalama < 85) {
    "Tesekkur"
  } else {
    "Takdir"
  }
}

belge_turu(90, 0, 100, 3)  # Takdir (Betül)
belge_turu(78, 0, 90, 2)   # Belge alamaz (Bekir)
belge_turu(82, 0, 100, 3)  # Tesekkur (Meryem)
belge_turu(85, 0, 100, 5)  # Takdir; eşik değerlerini de kontrol edin.

# Deneyiniz: Başarısız ders sayısı 1 olursa karar nasıl değişir?

# all(): tümü; any(): en az biri
puanlar <- c(90, 68, 71, 75, 86, 78, 82, 88, 86, 72)
all(puanlar >= 70)  # FALSE
any(puanlar > 85)   # TRUE