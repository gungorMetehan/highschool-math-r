# Temel Trigonometrik Oran Fonksiyonları
## 1. Sinüs

sin_oran <- function(karsi, hipotenus) {
  return(karsi / hipotenus)
}

## 2. Kosinüs
cos_oran <- function(komsu, hipotenus) {
  return(komsu / hipotenus)
}

## 3. Tanjant
tan_oran <- function(karsi, komsu) {
  return(karsi / komsu)
}

## 4. Kotanjant
cot_oran <- function(komsu, karsi) {
  return(komsu / karsi)
}

sin_oran(3, 5)   # 0.6
cos_oran(4, 5)   # 0.8
tan_oran(3, 4)   # 0.75
cot_oran(4, 3)   # 1.333

tan_oran(3, 4) * cot_oran(4, 3)   # 1

sin_oran(3, 5) / cos_oran(4, 5)   # tan_oran()
cos_oran(4, 5) / sin_oran(3, 5)   # cot_oran()