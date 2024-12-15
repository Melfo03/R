
##BERNOULLİ DAĞILIMI
#Bernoulli Yalnızca 0 Ve 1 Yada Doğru Ve Yanlıştan Oluşur
install.packages("Rlab")
library(Rlab)
?dbern
#Başarılı Olma Olasılığı 0.6 
dbern(x=0,prob =0.6)#Başarısız Olma Olasılığını Verir
dbern(x=1,prob =0.6)#Başarılı Olma Olasılığını Verir

pbern(q=5,prob=0.7,lower.tail = TRUE)#Pbernde Çıkan Sonuçların 1 Veya 1'den Az Olma Olasılığı
pbern(q=0,prob=0.7,lower.tail = TRUE)#Pbernde Çıkan Sonuçların 0 Veya 0'den Az Olma Olasılığı
pbern(q=1,prob=0.7,lower.tail = FALSE)#Pbernde Çıkan Sonuçların 1'den Fazla Olma Olasılığı
pbern(q=0,prob=0.7,lower.tail = FALSE)#Pbernde Çıkan Sonuçların 0'dan Fazla Olma Olasılığı


qbern(p=0.8,prob=0.7,lower.tail = FALSE)#0.8'Den Daha Büyük Bir Olasılık İle 1'i Bulma Olasılığı
qbern(p=0.6,prob=0.7,lower.tail = FALSE)#0.6'Dan Daha Büyük Bir Olasılık İle 1'i Bulma Olasılığı
qbern(p=0.8,prob=0.7,lower.tail = TRUE)#0.8'Den Daha Küçük Bir Olasılık İle 1'i Bulma Olasılığı
qbern(p=0.6,prob=0.7,lower.tail = TRUE)#0.6'Den Daha Küçük Bir Olasılık İle 1'i Bulma Olasılığı


n<-rbern(n=1000,prob=0.8)#Verilen Başarılı Olma Olasılığına Göre Random Bir Gözlem Üretir
table(n)
#.....................................................................................................................

##BİNOM DAĞILIMI
?dbinom
#Başarılı Olma Olasılığı 0.7
dbinom(x=5,size=10,prob=0.7)#Toplam 10 Gözlemde 5 Kere Başarılı Olma Olasılığı
dbinom(x=7,size=10,prob=0.7)#Toplam 10 Gözlemde 7 Kere Başarılı Olma Olasılığı
dbinom(x=9,size=10,prob=0.7)#Toplam 10 Gözlemde 9 Kere Başarılı Olma Olasılığı

plot(x=1:30,y=dbinom(x=1:30,size=30,prob=0.7),pch=19)#1'den 30'a Kadar 30 Gözlemde Toplam Başarılı Olma Sayısının Noktasal gösterimi
lines(dbinom(x=1:30,size=30,prob=0.5),pch=19)#1'den 30'a Kadar 30 Gözlemde Toplam Başarılı Olma Sayısının Noktasal gösterimi


pbinom(q=5,size = 30,prob=0.7,lower.tail =TRUE)#Toplam 10 Gözlemde 5 Veya 5'Den Az Başarılı Olma Oranı
pbinom(q=16,size = 30,prob=0.7,lower.tail =TRUE)#Toplam 10 Gözlemde 5 Veya 5'Den Az Başarılı Olma Oranı
pbinom(q=7,size = 30,prob=0.7,lower.tail =FALSE)#Toplam 10 Gözlemde 5 Veya 5'Den Fazla Başarılı Olma Oranı
plot(x=1:30,y=pbinom(1:30,size=30,prob=0.7,lower.tail =TRUE))


pbinom( q = 10 , size = 30 , prob = 0.7 , lower.tail = TRUE)
#Alttakilerin Toplamı Üstteki İle Aynı Sonucu Verir
dbinom(x = 10 , size = 30 , prob = 0.7 ) +
  dbinom(x = 9 , size = 30 , prob = 0.7 )+
  dbinom(x = 8 , size = 30 , prob = 0.7 )+
  dbinom(x = 7 , size = 30 , prob = 0.7 )+
  dbinom(x = 6 , size = 30 , prob = 0.7 )+
  dbinom(x = 5 , size = 30 , prob = 0.7 )+
  dbinom(x = 4 , size = 30 , prob = 0.7 )+
  dbinom(x = 3 , size = 30 , prob = 0.7 )+
  dbinom(x = 2 , size = 30 , prob = 0.7 )+
  dbinom(x = 1 , size = 30 , prob = 0.7 )+
  dbinom(x = 0 , size = 30 , prob = 0.7 )


# Örnek : 
# Bir e-ticaret sitesine gelen ortalama 4 müşteriden 1'i alış 
# veriş yapıyor. Bu e-ticaret sitesine bir gün için 30 müşteri girmesi
# bekleniyor en az 10 alış veriş yapılma olasılığı nedir?  

?pbinom(q=9,size = 30,prob=0.25,lower.tail =FALSE)#lower.tail=FALSE Olduğu için Eşitlik Olmadığından 1 Eksik Alındı

#Müşterilerin web sitesinde bulunan reklama tıklama olasılığı 0.6 dır.
#Bu durumda sayfayı ziyaret eden 500 müşteriden en az 300'nün bu reklama tıklama olasılığı nedir? 

pbinom(q=300,size=500,prob=0.6,lower.tail =FALSE)







# Olasılık değerine göre kaç kare başarılı olacağımız?
qbinom(p=0.7,size=30,prob =0.25,lower.tail =FALSE)#0.7 Olasılıkla 6'Dan Fazla Müşteri Ürün Alır
qbinom(p=0.5,size=30,prob =0.25,lower.tail =FALSE)#0.5 Olasılıkla 7 veya 7'Den Az Müşteri Ürün Alır

# Rastgele Binom Dağılan Veriler 

rbinom(n = 50 , size = 100 , prob = 1/4)#30 Müşteriden Kaç Tanesi Ürün Satın Alır 50 Adet Rastgele Veri

d<-rbinom(n = 50 , size = 40 , prob = 1/4)
hist(d)
#.....................................................................................................................

##POİSSON DAĞILIMI
#1 Saatte 15 Araba Geçen Bir Köprümüz Var
?dpois
#1 Saatte 10 Araba Geçme İhtimali
dpois(x=10,lambda =15)

#1 Saatte 5 Araba Geçme İhtimali
dpois(x=5,lambda =15)

plot(x=1:30,y=dpois(x=1:30,lambda =15),pch=19)#1'Den 30'a Kadar Araba Geçme Sayılarının İhtimal Grafiği


#1 Saatte 10 Arabadan Fazla Geçme İhtimali
ppois(q=10,lambda =15,lower.tail =FALSE)

##1 Saatte 15 Araba yada 15 Arabadan Az Geçme İhtimali
ppois(q=10,lambda=15,lower.tail =TRUE)

#1 Saatte 0'dan 30 Kadar Olan Sayılardan Az Araba Geçme Olasılığı Grafiği
plot(x=1:30,y=ppois(q=1:30,lambda=15,lower.tail = TRUE),pch=19)

### Örnek : 
### E-Ticaret sitesi üzerine bir Makine Öğrenmesi algoritması 
### eklendi ve algoritma ile müşterilerin beğenebileceği ürünler 
### tahmin edilerek satış yapma olasılığı tahmin edilmek isteniyor.
### Makine öğrenmesi algoritması eklendikten sonra elde edilen
### verilere göre günün öğlen saatlerinin 1 saatlik zaman diliminde 
### makine öğrenmesi modeli ile ürün tavsiyelerini gören müşterilerden
### 20 tanesi satın alma işlemi yapıyor. Buna göre herhangi başka bir 
### öğlen saatlerinde 1 saatlik zaman diliminde 30'dan fazla satış yapılma olasılığı 
### nedir.

ppois(q=30,lambda=20,lower.tail =FALSE)

# Olasılık Değerine Göre Kaç Ürün Satılacak?
qpois(p=0.01347468,lambda =20,lower.tail =FALSE)
qpois(p=0.6,lambda =20,lower.tail =FALSE)

#Rastgele Veri Üretimi
rpois(n=50,lambda=20)
#.....................................................................................................................

##HİPERGEOMETRİK DAĞILIM

#10 Denemede 26 Kırmızı 23 Siyah Olan Toplamda 52 Kart İçinden
#4 Tane Kırmızı Kart Çekme İhtimali Nedir?
dhyper(x=4,m=26,n=23,k=10)#x=İstenilen Sayı,#m=Kırmızı Top Sayısı,#n=Siyah Top Sayısı,#Çekilen Top Sayısı
dhyper(x=3,m=26,n=23,k=10)
dhyper(x=2,m=26,n=23,k=10)
plot(x=1:26,y=dhyper(x=1:26,m=26,n=23,k=26),pch=19)

#8 Denemede 26 Kırmızı 23 Siyah Olan Toplamda 52 Kart İçinden 5 veya 5'Den Az Kırmızı Gelme İhtimali
phyper(q=5,m=26,n=23,k=8,lower.tail =TRUE)
#8 Denemede 26 Kırmızı 23 Siyah Olan Toplamda 52 Kart İçinden 4'Den Fazla Kırmızı Gelme İhtimali
phyper(q=4,m=26,n=23,k=8,lower.tail =FALSE)


## Örnek; 

### Erkek kıyafeti üzerine Instagram sosyal medyasında bir reklam 
### verilmesi planlanmaktadır. Reklam sadece Şişli semtinde
### oturan, cinsiyeti erkek ve 20 ile 25 yaş arasındaki kullanıcalara
### gösterilecek şekilde ayarlanmıştır. Bu kriterli sağlayan toplam 10000
### kişinin instagramda kayıtlı olduğu bilgisi verilmiştir. 10000 kişi içerisinden
### 5000 kişinin google arama verilerine göre yeni sezon kıyafetlerine  
### ihtiyacı olacağı beklenmektedir. Instagram anlaşımasına göre
### reklam sadece 10000 kişi içerisinde 3000 kişiye yanlızca bir 
### kere gösterilecektir. Bu durumda bu reklamın kıyafet ihtiyacı
### olan en az 1500 kişiye gösterilme olasılığı nedir? 
phyper(q=1499,m=5000,n=5000,k=3000,lower.tail =FALSE)


## Olasılık değerine elde edilecek durum sayısı


qhyper( p = 0.6 , m = 5000 , n = 5000 , k = 3000 , lower.tail = TRUE)
qhyper( p = 0.6 , m = 5000 , n = 5000 , k = 3000 , lower.tail = FALSE)
qhyper( p = 0.9 , m = 5000 , n = 5000 , k = 3000 , lower.tail = FALSE)


#Rastgele Veri Üretimi

rhyper(nn=50,m=5000,n=5000,k=3000)
#.....................................................................................................................

##UNİFORM DAĞILIM
#Atılan Bir Zarda 1 Gelme İhtimali
dunif(x=,min=0,max=10)
dunif(x=0,min=0,max=6)
dunif(x=3,min=1,max=6)
dunif(x=4,min=1,max=6)


#Atılan 1 Zarın 3'Den Küçük Gelme İhtimali
punif(q=,min=1,max=6,lower.tail =F)
#.....................................................................................................................


##ÜSTEL (EXPONENTİAL) DAĞILIM

## Bir otobüs durağına 10 dakikada bir otobüs gelmektedir. Bu durumda;  
## Lambda bir dakika için 1/10'a eşit olacaktır. 

## Poisson Problemi : Bir dakika sonra otobüs gelmeme olasılığı nedir? 
dpois(x=0,lambda=1/10)
## Üstel   Problemi : Otobüsün gelmesinin bir dakikadan daha uzun süremesi 
pexp(q=1,rate=1/10,lower.tail =FALSE)

#Otobüsün 2.Dakikada Gelmesi İhtimali
dexp(x=2,rate =1/10)
dexp(x=3,rate =1/10)
dexp(x=4,rate =1/10)
plot(x=1:15,y=dexp(x=1:15,rate=1/10))

#Otobüsün Gelmesinin 4 Dakikadan Fazla Sürmesi İhtimali
pexp(q=4,rate=1/15,lower.tail =FALSE)
#Otobüsün Gelmesinin 4 Dakikadan Az Sürmesi İhtimali
pexp(q=4,rate=1/15,lower.tail =TRUE)


# 0.7 İhtimalle Kaçıncı Dakikadan Sonra Bir Otobüs Geçer(20 Dakikada 1 Otobüs Geçiyor)
qexp(p=0.7,rate =1/20,lower.tail =FALSE)

rexp(n=50,rate =1/20)
#.....................................................................................................................


##NORMAL DAĞILIM

#Ortalaması Ve Standart Sapması Verilen Seriden 20 Sayısını Elde Etme Olasılığım
dnorm(x=1000,mean=30,sd=5)
plot(x=20:40,y=dnorm(x=20:40,mean=30,sd=5))

## Bir sınıftaki erkeklerin boylarının ortalaması 180 cm
## ve standart sapma değeri 10cm 

## 160cm'den daha fazla olma olasılığı
pnorm(q=160,mean=180,sd=10,lower.tail =FALSE)

## 160cm'den daha Az olma olasılığı
pnorm(q=160,mean=180,sd=10,lower.tail =TRUE)


# 0.70 İhtimalle Seçtiğim Kişinin Boyunun En Fazla Kaç Olduğunu Bulun
qnorm(p=0.70,mean=180,sd=10,lower.tail =TRUE)

## 0.70 İhtimalle Seçtiğim Kişinin Boyunun En Az Kaç Olduğunu Bulun
qnorm(p=0.70,mean=180,sd=10,lower.tail =FALSE)

rnorm(n=50,mean=180,sd=10)
#.....................................................................................................................

##STANDART NORMAL DAĞILIM
# Normal Dağılım
dnorm( x = 20 , mean = 15 , sd = 5)

# Standart Normal Dağılım
dnorm( x = 20 , mean = 0 , sd = 1)
dnorm( x = 0.6 , mean = 0 , sd = 1)
dnorm( x = -0.6 , mean = 0 , sd = 1)


vec <- seq(0,1 , by = 0.001)

plot(x = vec , y = dnorm(x = vec, mean = 0 , sd = 1 ) , 
     bty = "L" ,
     pch = 19
)

vec2 <- seq(-1,1 , by = 0.001)
plot(x = vec2 , y = dnorm(x = vec2, mean = 0 , sd = 1 ) , 
     bty = "L" ,
     pch = 19
)


rnorm(n = 100 , mean = 0 , sd = 1)
#.....................................................................................................................


#MERKEZİ LİMİT TEOREMİ
# Z vektorü popülasyon
z <- c(10,15,14,18,10,23,23,23,56,34,13,19,19,45,45,34)

hist(z)

# Rastgele örnek seçimi 
sample(z , size = 4)

# Ortalama vektoru oluşturma
sonuc <- numeric(50)
for(i in 1:50){
  ornek <- sample(z , size = 4)
  sonuc[i] <- mean(ornek)
}
sonuc

par(mfrow = c(1,2))
hist(z)
hist(sonuc)


