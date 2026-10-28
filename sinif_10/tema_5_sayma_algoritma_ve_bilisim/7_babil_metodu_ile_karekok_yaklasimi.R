# Babil Metodu ile Karekök Yaklaşımı

# Örnek
sayi <- 70
tahmin <- 8
hata_payi <- 0.001
adimlar <- data.frame(adim = 0, tahmin = tahmin)
for (adim in 1:100) {
  yeni_tahmin <- (tahmin + sayi / tahmin) / 2
  adimlar <- rbind(adimlar, data.frame(adim, tahmin = yeni_tahmin))
  fark <- abs(yeni_tahmin - tahmin)
  tahmin <- yeni_tahmin
  if (fark < hata_payi) break
}

adimlar           # 8; 8.375; 8.366604...; ...
tahmin            # Yaklaşık 8.3666
sqrt(sayi)        # Hazır komutla kontrol.
abs(tahmin - sqrt(sayi))
# Durma ölçütü ardışık tahmin farkıdır; gerçek hatayı ayrıca karşılaştırdık.

# Tamkareden bir adımlı yaklaşım
a <- 123
b <- 121  # 123'e en yakın tamkare 121'dir.
yaklasik <- (a + b) / (2 * sqrt(b))
yaklasik  # 11.090909...
sqrt(a)   # 11.090536...

# Deneyiniz: sayi = 50 ve başlangıç tahmini = 7 ile yineleyiniz.