# Asal Sayılar ve Asal Çarpanlar

## Asal Sayılar
asal_mi <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  TRUE
}

asal_mi(1)
asal_mi(91)
asal_mi(101)

## Asal Çarpanlar
asal_carpanlar <- function(n) {
  i <- 2
  sonuc <- c()
  
  while (n > 1) {
    if (n %% i == 0) {
      sonuc <- c(sonuc, i)
      n <- n / i
    } else {
      i <- i + 1
    }
  }
  sonuc
}

asal_carpanlar(90)
asal_carpanlar(100)
asal_carpanlar(25)