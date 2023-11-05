#1.a.i
data("LakeHuron"); #pobranie bazy danych
x=length(LakeHuron); #wyznaczamy dlugosc/ilosc danych w tej bazie
y1=cut(LakeHuron, sqrt(x)); #dzielimy szereg na przedzialy rownej dlugosci
# ze wzoru: k≃sqrt(n) //n = liczba obserwacji.
print(y1); #wyswietlamy szereg przedialowy o rownych dlugosciach
table(y1);

#1.a.ii
cs <- cut(LakeHuron, breaks = quantile
          (LakeHuron, p = seq(0, 1, length.out = 5+1)),
          include.lowest = TRUE); #szereg przedzialowy - 5klas
#rownej liczebnosci.
print(cs);
table(cs);

#1.b
class_counts <- table(y1); #obliczenie liczebnosci obserwacji
dominant <- names(class_counts)[which.max(class_counts)];
#znajdujemy klase z najwyzsza powtarzalnoscia
cat("Dominanta znajduje sie w przedziale:", dominant, "\n");


#//////////////////////////////////////
#2.a
data(Indometh); #sprawdzamy baze danych indometh
table(Indometh); #wyswietlamy w postaci tabelki
n <- length(Indometh$conc); #wyznaczenie wielkosci probki
#2.b
n_range <- range(Indometh$conc);
#2.c srednia x mediana:
srednia <- mean(Indometh$conc);
mediana <- median(Indometh$conc);
if (srednia > mediana) {
  kom <- "srednia > mediana";
} else if (srednia < mediana) {
  kom <- "mediana > srednia";
} else {
  kom <- "mediana = sredniej";
}
#2.d 
# Test Shapiro na normalnosc symetrii
sym_test <- shapiro.test(Indometh$conc);
if (shapiro_test$p.value < 0.05) {
  cat("Probka nie jest rozkładem normalnym.\n");
} else {
  cat("Probka to rozkład normalny.\n");
}
#2.e
srednia_przycieta <- mean(Indometh$conc, trim = 0.25);
#2.f koncentracje probki (kurtoza).
install.packages("moments"); #pobieramy biblioteke
library(moments); #zalaczamy ja
kurtosis(Indometh$conc); #wykonujemy obliczenia za pom. gotowej funkcji

