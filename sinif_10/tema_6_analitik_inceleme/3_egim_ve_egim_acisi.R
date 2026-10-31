# Eğim ve Eğim Açısı

egim <- function(x1, y1, x2, y2) {
  if (x1 == x2) stop("Dikey doğrunun eğimi tanımsızdır.")
  (y2 - y1) / (x2 - x1)
}
# A(-8,-5), B(12,10), C(19,34) noktalarını ele alalım.
m_AB <- egim(-8, -5, 12, 10)
m_BC <- egim(12, 10, 19, 34)
c(AB = m_AB, BC = m_BC)  # 0.75; 24/7

# atan(), radyan verir. Dereceye çevirelim.
aci_AB <- atan(m_AB) * 180 / pi
aci_AB  # Yaklaşık 36.87 derece

# Negatif eğimde eğim açısı 90 ile 180 derece arasındadır.
m <- -1
aci <- atan(m) * 180 / pi
if (aci < 0) aci <- aci + 180
aci  # 135

# Dikey doğru x = 2; eğim açısı 90 derece, eğimi tanımsız.
plot(0, 0, type = "n", xlim = c(-5, 5), ylim = c(-5, 5), asp = 1,
     xlab = "x", ylab = "y", main = "Pozitif, negatif ve tanımsız eğim")
abline(h = 0, v = 0, col = "gray")
abline(a = 0, b = m_AB, col = "blue")
abline(a = 0, b = -1, col = "red")
abline(v = 2, col = "darkgreen", lty = 2)