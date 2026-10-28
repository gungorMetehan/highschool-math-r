# Ortalama Alarak Kök Bulma

f <- function(x) 2 * x - 6
sol <- 1
sag <- 7
hata_payi <- 1e-6
adimlar <- data.frame(adim = integer(), tahmin = numeric(), deger = numeric())

# Aralık uçlarındaki işaretler zıt; f bu aralıkta süreklidir.
# Sürekli bir fonksiyonda zıt işaretler arada en az bir kök olduğunu gösterir.
for (adim in 1:100) {
  orta <- (sol + sag) / 2
  deger <- f(orta)
  adimlar <- rbind(adimlar, data.frame(adim, tahmin = orta, deger))
  if (abs(deger) < hata_payi) break
  if (f(sol) * deger > 0) {
    sol <- orta
  } else {
    sag <- orta
  }
}
head(adimlar)  # İlk tahminler: 4; 2.5; 3.25; 2.875; ...
orta           # Yaklaşık 3
f(orta)        # Yaklaşık 0

# Bilgisayarda tam sıfır beklemek yerine hata payıyla duruyoruz.
plot(adimlar$adim, adimlar$tahmin, type = "b",
     xlab = "Adim", ylab = "Kok tahmini", main = "Yineleme ile koke yaklasma")
abline(h = 3, col = "red", lty = 2)
# Deneyiniz: f(x) = 3x - 5 için [1, 2] aralığında tekrar uygulayınız.
