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
#2.b

