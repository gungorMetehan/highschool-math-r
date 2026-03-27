# Frekans Tablosu Oluşturma ve Göreli Frekans
## Frekans Tablosu Oluşturma

frekans_tablo <- function(veri) {
  table(veri)
}

# Öğrencilerin en sevdiği dersler isimli bir veri seti oluşturalım.
veri <- c(
  "Matematik", "Matematik", "Fizik", "Kimya",
  "Matematik", "Biyoloji", "Fizik", "Matematik",
  "Kimya", "Biyoloji", "Matematik", "Fizik",
  "Matematik", "Fizik", "Matematik", "Fizik",
  "Matematik", "Matematik", "Biyoloji", "Biyoloji"
)

frekans_tablo(veri)

## Göreli Frekans

goreli_frekans <- function(veri) {
  frekans <- table(veri)
  frekans / length(veri)
}

goreli_frekans(veri)