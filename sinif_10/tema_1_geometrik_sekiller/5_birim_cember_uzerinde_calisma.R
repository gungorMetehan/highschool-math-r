# Birim Çember Üzerinde Çalışma

birim_cember_nokta <- function(aci_deg) {
  x <- cos(aci_deg * pi / 180)
  y <- sin(aci_deg * pi / 180)
  c(x = x, y = y)
}

birim_cember_nokta(30) # sqrt(3)/2 ; 1/2

birim_cember_nokta(45) # 1/sqrt(2) ; 1/sqrt(2)

birim_cember_nokta(60) # 1/2 ; sqrt(3)/2