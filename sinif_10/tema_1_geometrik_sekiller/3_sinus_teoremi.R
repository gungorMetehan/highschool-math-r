# Sinüs Teoremi
## a / sinA = b / sinB

sinus_teoremi <- function(a, A_deg, B_deg) {
  b <- (a * sin(B_deg * pi / 180)) / sin(A_deg * pi / 180)
  return(b)
}

sinus_teoremi(200, 37, 64)

sinus_teoremi(10, 90, 37)