iris
View(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Length,main = "Histogram Grafi�i",xlab ="De�erler",ylab ="Frekans")

hist(iris$Sepal.Length,main = "Histogram Grafi�i"
     ,xlab ="De�erler"
     ,ylab ="Frekans",breaks =20)


hist(iris$Sepal.Length,main = "Histogram Grafi�i"
     ,xlab ="De�erler"
     ,ylab ="Frekans",breaks =20,
      xlim =c(0,10),
      ylim = c(0,20))#Histogram Grafi�indeki Eksen Limitlerini Ayarlar
#.....................................................................................................................

#H�STOGRAM GRAF���N�N RENKLEND�R�LMES�

hist(iris$Sepal.Length,
     main="Histogram Grafi�i",
     xlab="De�erler",
     ylab="Frekans",
     col="#34495e",
     border ="Blue")

hist(iris$Sepal.Length,
     main="Histogram Grafi�i",
     xlab="De�erler",
     ylab="Frekans",
     col=c("#2ecc71","#8e44ad","#bdc3c7"),
     border ="Blue",
     breaks=30)


# Histogram Grafi�i �zerine Yo�unluk E�risi �izimi
hist(iris$Sepal.Length,
     main ="Histogram Yo�unluk Grafik E�risi",
     xlab="De�erler",
     ylab="Yo�unluk",
     prob=T)
#Density Fonkisyonunu Hist �al��t�r�ld�ktan Sonra �al��t�r�p E�riyi G�rebilirsiniz Tek Ba��na �al��maz
density(iris$Sepal.Length)#Yo�unluk Verisini Standartla�t�r�r
lines(density(iris$Sepal.Length))
lines(density(iris$Sepal.Length),adjust=2)#Adjust E�riyi D�zle�tirir
lines(density(iris$Sepal.Length,adjust =2),col="blue",lwd=3,lty="dotted")#lwd E�rinin Kal�nl���n� Ayarlar
#..................................................................................................................

#Sa��l�m Diyagram� (Scatter Plot)
View(airquality)
plot(airquality$Ozone)
plot(airquality$Ozone,bty="L")#bty �eklini De�i�tirir
plot(airquality$Ozone,pch="$")#pch Diyagramdaki Noktalar�n �eklini De�i�tirir
plot(airquality$Ozone,pch=19)
plot(airquality$Ozone,pch=19,type = "h")#type Diyagram�n �eklini De�i�tirir
plot(airquality$Ozone,pch=19,type = "l")
plot(airquality$Ozone,pch=19,type = "b")
plot(airquality$Ozone,pch=19,type = "c")
plot(airquality$Ozone,pch=19,type = "o")
plot(airquality$Ozone,pch=19,type = "s")


plot(airquality$Ozone,airquality$Temp,xlab="Ozon",ylab="S�cakl�k",main="Ozon Ve S�cakl�k �li�ki Grafi�i",pch=19,type="p")
?plot

plot(airquality$Ozone,pch=19,col="blue")#Noktalar�n Yerlerinin De�i�tirilmesi
levels(as.factor(airquality$Month))
#Gruplara G�re Renklendirme
plot(airquality$Ozone,airquality$Temp,xlab="Ozon",ylab="S�cakl�k",
     main="Ozon Ve S�cakl�k �li�ki Grafi�i",
     pch=19,type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)])
legend(x="topright",legend =levels(as.factor(airquality$Month)),
       col=c("blue","red","purple","black","gray"),
       pch=19)

#Konum D�zenleme

par(mar=c(5,5,5,5),xpd=TRUE)#Grafi�in Margin De�erini De�i�tirir

plot(airquality$Ozone,airquality$Temp,
     xlab="Ozon",
     ylab="S�cakl�k",
     main="Ozon Ve S�cakl�k �li�ki Grafi�i",
     pch=19,
     type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)])

legend(x="topright",legend =levels(as.factor(airquality$Month)),
       col=c("blue","red","purple","black","gray"),
       pch=19,inset =c(-0.15,0) )#�nset Legendin Konumunu Ayarlar

#Sa��l�m Diyagram� Noktalar�n�n Belirli Bir De�i�kene G�re Boyutland�r�lmas�
par(mar=c(4,4,4,6),xpd=TRUE)

plot(airquality$Ozone,airquality$Temp,
     xlab="Ozon",
     ylab="S�cakl�k",
     main="Ozon Ve S�cakl�k �li�ki Grafi�i",
     pch=19,
     type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)],
     cex=airquality$Wind/10)

legend(x="topright",
      legend=levels(as.factor(airquality$Month)),
      col =c("blue","red","purple","black","gray"),
      pch =19,inset = c(-0.15,0))

legend(x="topright",legend=c("Az R�zgar","Orta R�zgar","Y�ksek R�zgar"),
       pt.cex=c(0.2,0.9,2),
       pch =19,
       inset =c(-0.28,0.7))


