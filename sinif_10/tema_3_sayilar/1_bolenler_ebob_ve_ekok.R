# Bölenler, EBOB ve EKOK
## Bölenler
tum_bolenler <- function(n) {
  n <- abs(n)
  
  poz <- which(n %% 1:n == 0)
  neg <- -poz
  
  list(
    pozitif = poz,
    negatif = neg,
    toplam_bolen = length(poz) + length(neg)
  )
}

tum_bolenler(12)

## EBOB (En Büyük Ortak Bölen)
ebob <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  abs(a)
}

ebob(18, 12)

## EKOK (En Küçük Ortak Kat)
ekok <- function(a, b) {
  abs(a * b) / ebob(a, b)
}

ekok(12, 21)