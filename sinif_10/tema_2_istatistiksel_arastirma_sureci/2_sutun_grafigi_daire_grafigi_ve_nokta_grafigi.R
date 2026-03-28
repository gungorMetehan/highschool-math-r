# Sütun Grafiği, Daire Grafiği ve Nokta Grafiği

# Öğrencilerin en sevdiği dersler isimli bir veri seti oluşturalım.
veri <- c(
  "Matematik", "Matematik", "Fizik", "Kimya",
  "Matematik", "Biyoloji", "Fizik", "Matematik",
  "Kimya", "Biyoloji", "Matematik", "Fizik",
  "Matematik", "Fizik", "Matematik", "Fizik",
  "Matematik", "Matematik", "Biyoloji", "Biyoloji"
)

library(ggplot2)

## Sütun Grafiği
ggplot(data = data.frame(veri), aes(x = veri)) +
  geom_bar() +
  labs(
    title = "En Sevilen Dersler - Sütun Grafiği",
    x = "Dersler",
    y = "Frekans"
  )

## Daire Grafiği
ggplot(data = data.frame(veri), aes(x = "", fill = veri)) +
  geom_bar(width = 1) +
  coord_polar(theta = "y") +
  labs(title = "En Sevilen Dersler - Daire Grafiği") +
  theme_void()

## Nokta Grafiği
library(dplyr)

df <- data.frame(veri)

df <- df %>%
  group_by(veri) %>%
  mutate(sira = row_number())

ggplot(df, aes(x = veri, y = sira)) +
  geom_point(size = 5) +
  labs(
    title = "En Sevilen Dersler - Nokta Grafiği",
    x = "Dersler",
    y = "Frekans"
  )