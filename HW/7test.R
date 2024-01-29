# Wczytaj dane
dane <- read.table("C://Users//kubsoa//Downloads//stres.txt", header = TRUE)

# Podstawowe statystyki dla zmiennej cisnienie
summary(dane$cisnienie)

# Średnia wartość zmiennej cisnienie osobno dla kobiet i mężczyzn
srednia_cisnienie_kobiety <- mean(dane$cisnienie[dane$plec == 1])
srednia_cisnienie_mezczyzni <- mean(dane$cisnienie[dane$plec == 0])

print(paste("Średnie ciśnienie dla kobiet: ", srednia_cisnienie_kobiety))
print(paste("Średnie ciśnienie dla mężczyzn: ", srednia_cisnienie_mezczyzni))


# Oblicz kwantyl na poziomie 0.65 (ponieważ chcemy znaleźć wartość, powyżej której jest 35% obserwacji)
kwantyl_cisnienie <- quantile(dane$cisnienie, 0.65)

print(paste("Wartość zmiennej cisnienie, powyżej której znajduje się 35% wszystkich obserwacji: ", kwantyl_cisnienie))


# Oblicz skośność dla zmiennej cisnienie
install.packages("e1071")
library(e1071)
skosnosc_cisnienie <- skewness(dane$cisnienie)

print(paste("Skośność zmiennej cisnienie: ", skosnosc_cisnienie))


# Oblicz kurtozę dla zmiennej cisnienie
kurtoza_cisnienie <- kurtosis(dane$cisnienie)

print(paste("Kurtoza zmiennej cisnienie: ", kurtoza_cisnienie))


# Narysuj wykresy skrzynkowe dla zmiennej cisnienie w rozbiciu na plec
boxplot(cisnienie ~ plec, data = dane, main = "Wykres skrzynkowy ciśnienia w zależności od płci", xlab = "Płeć", ylab = "Ciśnienie")


# Wykonaj test chi-kwadrat
test <- chisq.test(table(dane$plec))

# Wyświetl wyniki
print(test)




# Oblicz przedział ufności
srednia <- mean(dane$cisnienie)
sd <- sd(dane$cisnienie)
n <- length(dane$cisnienie)
blad_standardowy <- sd / sqrt(n)
margines_bledu <- qnorm(0.98) * blad_standardowy
dolny <- srednia - margines_bledu
gorny <- srednia + margines_bledu

# Wyświetl wyniki
print(c(dolny, gorny))



# Wczytaj pakiet moments
if(!require(moments)) {
  install.packages("moments")
  library(moments)
}

# Oblicz kurtozę
kurtoza <- kurtosis(dane$cisnienie)

# Wyświetl wynik
print(kurtoza)
