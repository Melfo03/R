iris
View(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Length,main = "Histogram Grafiði",xlab ="Deðerler",ylab ="Frekans")

hist(iris$Sepal.Length,main = "Histogram Grafiði"
     ,xlab ="Deðerler"
     ,ylab ="Frekans",breaks =20)


hist(iris$Sepal.Length,main = "Histogram Grafiði"
     ,xlab ="Deðerler"
     ,ylab ="Frekans",breaks =20,
      xlim =c(0,10),
      ylim = c(0,20))#Histogram Grafiðindeki Eksen Limitlerini Ayarlar
#.....................................................................................................................

#HÝSTOGRAM GRAFÝÐÝNÝN RENKLENDÝRÝLMESÝ

hist(iris$Sepal.Length,
     main="Histogram Grafiði",
     xlab="Deðerler",
     ylab="Frekans",
     col="#34495e",
     border ="Blue")

hist(iris$Sepal.Length,
     main="Histogram Grafiði",
     xlab="Deðerler",
     ylab="Frekans",
     col=c("#2ecc71","#8e44ad","#bdc3c7"),
     border ="Blue",
     breaks=30)


# Histogram Grafiði Üzerine Yoðunluk Eðrisi Çizimi
hist(iris$Sepal.Length,
     main ="Histogram Yoðunluk Grafik Eðrisi",
     xlab="Deðerler",
     ylab="Yoðunluk",
     prob=T)
#Density Fonkisyonunu Hist Çalýþtýrýldýktan Sonra Çalýþtýrýp Eðriyi Görebilirsiniz Tek Baþýna Çalýþmaz
density(iris$Sepal.Length)#Yoðunluk Verisini Standartlaþtýrýr
lines(density(iris$Sepal.Length))
lines(density(iris$Sepal.Length),adjust=2)#Adjust Eðriyi Düzleþtirir
lines(density(iris$Sepal.Length,adjust =2),col="blue",lwd=3,lty="dotted")#lwd Eðrinin Kalýnlýðýný Ayarlar
#..................................................................................................................

#Saçýlým Diyagramý (Scatter Plot)
View(airquality)
plot(airquality$Ozone)
plot(airquality$Ozone,bty="L")#bty Þeklini Deðiþtirir
plot(airquality$Ozone,pch="$")#pch Diyagramdaki Noktalarýn Þeklini Deðiþtirir
plot(airquality$Ozone,pch=19)
plot(airquality$Ozone,pch=19,type = "h")#type Diyagramýn Þeklini Deðiþtirir
plot(airquality$Ozone,pch=19,type = "l")
plot(airquality$Ozone,pch=19,type = "b")
plot(airquality$Ozone,pch=19,type = "c")
plot(airquality$Ozone,pch=19,type = "o")
plot(airquality$Ozone,pch=19,type = "s")


plot(airquality$Ozone,airquality$Temp,xlab="Ozon",ylab="Sýcaklýk",main="Ozon Ve Sýcaklýk Ýliþki Grafiði",pch=19,type="p")
?plot

plot(airquality$Ozone,pch=19,col="blue")#Noktalarýn Yerlerinin Deðiþtirilmesi
levels(as.factor(airquality$Month))
#Gruplara Göre Renklendirme
plot(airquality$Ozone,airquality$Temp,xlab="Ozon",ylab="Sýcaklýk",
     main="Ozon Ve Sýcaklýk Ýliþki Grafiði",
     pch=19,type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)])
legend(x="topright",legend =levels(as.factor(airquality$Month)),
       col=c("blue","red","purple","black","gray"),
       pch=19)

#Konum Düzenleme

par(mar=c(5,5,5,5),xpd=TRUE)#Grafiðin Margin Deðerini Deðiþtirir

plot(airquality$Ozone,airquality$Temp,
     xlab="Ozon",
     ylab="Sýcaklýk",
     main="Ozon Ve Sýcaklýk Ýliþki Grafiði",
     pch=19,
     type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)])

legend(x="topright",legend =levels(as.factor(airquality$Month)),
       col=c("blue","red","purple","black","gray"),
       pch=19,inset =c(-0.15,0) )#Ýnset Legendin Konumunu Ayarlar

#Saçýlým Diyagramý Noktalarýnýn Belirli Bir Deðiþkene Göre Boyutlandýrýlmasý
par(mar=c(4,4,4,6),xpd=TRUE)

plot(airquality$Ozone,airquality$Temp,
     xlab="Ozon",
     ylab="Sýcaklýk",
     main="Ozon Ve Sýcaklýk Ýliþki Grafiði",
     pch=19,
     type="p",
     col=c("blue","red","purple","black","gray")[as.factor(airquality$Month)],
     cex=airquality$Wind/10)

legend(x="topright",
      legend=levels(as.factor(airquality$Month)),
      col =c("blue","red","purple","black","gray"),
      pch =19,inset = c(-0.15,0))

legend(x="topright",legend=c("Az Rüzgar","Orta Rüzgar","Yüksek Rüzgar"),
       pt.cex=c(0.2,0.9,2),
       pch =19,
       inset =c(-0.28,0.7))


