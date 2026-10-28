# Sıralama ile Seçme Arasındaki Fark

# Beş fakültenin her ikisi arasına bir yol: AB ve BA aynı yoldur.
fakulteler <- c("A", "B", "C", "D", "E")
yollar <- combn(fakulteler, 2)
yollar
ncol(yollar)  # 10
choose(5, 2)  # 10; choose(n, r), r elemanlı seçimleri sayar.

# Aynı iki fakülte sıralansaydı AB ve BA yolları farklı iki yol olarak sayılırdı.
factorial(5) / factorial(3)  # 20

# Altı paranın ikisinin tura, dördünün yazı olması
choose(6, 2)  # 15 farklı durum

# 5 kız ve 4 erkekten 3 kız, 2 erkek içeren bir ekip
choose(5, 3) * choose(4, 2)  # 60

# Deneyiniz: Ekibi 2 kız ve 3 erkekle kurarsanız sonuç kaç olur?