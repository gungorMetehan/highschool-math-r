# Trigometrik Alan (Sinüs)
## Üçgenin iki kenarının uzunluğu ve bu iki kenar arasındaki açı değeri bilindiğinde...

ucgen_alani_trig <- function(a, b, aci_deg) {
  (a * b * sin(aci_deg * pi / 180)) / 2
}

ucgen_alani_trig(6, 8, 90)

ucgen_alani_trig(4, 4, 90)

ucgen_alani_trig(200, 200, 30)