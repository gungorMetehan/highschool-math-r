# Kosinüs Teoremi
## Bu teorem ile üçgen şeklindeki bir cismin iki kenarının uzunluğu ve bu iki kenar arasındaki 
## açı ölçüsü bilindiğinde üçüncü kenar uzunluğunu ölçmeye gerek kalmadan hesaplamak mümkündür. 

kosinus_teoremi <- function(a, b, C_deg) {
  sqrt(a^2 + b^2 - 2 * a * b * cos(C_deg * pi / 180))
}

kosinus_teoremi(1200, 1500, 120)     # 300 * sqrt(61)

kosinus_teoremi(60, 50*sqrt(3), 30)  # 10 * sqrt(21)