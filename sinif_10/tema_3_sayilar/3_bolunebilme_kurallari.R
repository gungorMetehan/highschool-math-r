# Bölünebilme Kuralları

bolunebilir_mi <- function(n, k) {
  n %% k == 0
}

bolunebilir_mi(120, 4)
bolunebilir_mi(121, 5)

# 2, 3, 4, 5, 6, 8, 9 ve 10 ile Bölünebilme
basamaklar <- function(n) {
  as.numeric(strsplit(as.character(abs(n)), "")[[1]])
}

## 2 ile Bölünebilme
bolunme_2 <- function(n) {
  n %% 2 == 0
}

bolunme_2(15)

## 3 ile Bölünebilme
bolunme_3 <- function(n) {
  sum(basamaklar(n)) %% 3 == 0
}

bolunme_3(15)

## 4 ile Bölünebilme
bolunme_4 <- function(n) {
  son2 <- as.numeric(substr(as.character(abs(n)),
                            nchar(abs(n))-1, nchar(abs(n))))
  son2 %% 4 == 0
}

bolunme_4(115)

## 5 ile Bölünebilme
bolunme_5 <- function(n) {
  son <- n %% 10
  son == 0 || son == 5
}

bolunme_5(115)

## 6 ile Bölünebilme
bolunme_6 <- function(n) {
  bolunme_2(n) && bolunme_3(n)
}

bolunme_6(115)

## 8 ile Bölünebilme
bolunme_8 <- function(n) {
  son3 <- as.numeric(substr(as.character(abs(n)),
                            nchar(abs(n))-2, nchar(abs(n))))
  son3 %% 8 == 0
}

bolunme_8(4104)

## 9 ile Bölünebilme
bolunme_9 <- function(n) {
  sum(basamaklar(n)) %% 9 == 0
}

bolunme_9(4104)

## 10 ile Bölünebilme
bolunme_10 <- function(n) {
  n %% 10 == 0
}

bolunme_10(4104)

# Ekstra
## 11 ile Bölünebilme
bolunme_11 <- function(n) {
  digits <- basamaklar(n)
  
  tek <- sum(digits[seq(1, length(digits), 2)])
  cift <- sum(digits[seq(2, length(digits), 2)])
  
  abs(tek - cift) %% 11 == 0
}

bolunme_11(14104)