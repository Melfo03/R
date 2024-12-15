#VEKTÖRLERDE İSTATİSTİK


x <- c(23,45,67,43,56)

# N n 

length(x)

sum(x)

x[1] + x[2] + x[3] + x[4] + x[5]

ort <- sum(x) / length(x)
ort

#Toplam için
sum(x)

# ORtalama
mean(x)


# Uzunluj Eleman Saysı
length(x)
#.....................................................................................................................



#Standart Sapma
x <- c(12,34,56,34,23,45)

length(x)

?sd
mean(x)
sd(x)
#.....................................................................................................................


#Varyans
x <- c(12,14,10,11,13,17,16)

length(x)

sd1 <- sd(x)
vr1 <- sd(x)**2
sd1
vr1


# Varyans hesaplama fonksiyonu
var(x)

# Standartsapmanın karesi ile de hesaplanır
sd(x)**2


y <- c(12,25,60,56,35,24,45)
length(y)

sd2 <- sd(y)
vr2 <- var(y)

sd1;vr1;sd2;vr2
#.....................................................................................................................


#Medyan
x <- c(12,34,56,23,34,12,35)

median(x)
mean(x)


# Açıklık
max(x) - min(x)
range(x)
r <- range(x)
r[2] - r[1]

# Çeyreklikler 

quantile(x)

quantile(x , probs = c(0.25 , 0.5 , 0.75)) 
quantile(x , probs = c(0.10 , 0.60 , 0.95)) 
#.....................................................................................................................


#Çarpıklık Katsayısı
x <- c(12,13,14,15,16, 100,120)
x
mean(x)
median(x)


y <- c(12,15,17,18,20,24,26)
mean(y)
median(y)

hist(x)


install.packages('e1071')
library(e1071)

skewness(x)

z <- c(1,2,3 , 60,70,60,70,80,70)
hist(z)
skewness(z)
#.....................................................................................................................



#Frekans
x <- c(12,12,13,13,14,14,13,12,12,15,15,16)
length(x) 

unique(x)


table(x)

t <- table(x)
t
names(t)

t[1]
t["12"]
class(t["12"])

t[["12"]]

class(t)

t[1]
t[[1]]
t["12"]
t[["12"]]
t


c <- c('A' , 'A' , 'A' , 'B' , 'B' , 'C')
c

table(c)
t <- table(c)
t['A']
t[['A']]
t[1]
t[2]
#.....................................................................................................................



#NA Değerlerini Hesaplamalara Dahil Etmeme İşlemleri
x <- c(12,13,14,15,NA)

sum(x)

sum(x , na.rm = T)
mean(x)
mean(x , na.rm = T)
sd(x , na.rm = T)
median(x , na.rm = T)


is.na(x)

which(is.na(x))

y <- c(12,13,14,15,NA,NA,14,1,15,NA)

which(is.na(y))

any(is.na(y))

t <- c(1,2,3,4,5)
any(is.na(t))


mean(x , na.rm = any(is.na(y)))
mean(t , na.rm = any(is.na(t)))


n <- which(is.na(y))
y[n]

y[n] <- 0

y


y <- c(12,13,14,15,NA,NA,14,1,15,NA)
y[is.na(y)]
y[is.na(y)] <- 0
y
#.....................................................................................................................



#Normal Dağılan Verileri Oluşturma
rnorm(100)

r <- rnorm(100)
length(r)


hist(r)

r1 <- rnorm(30 , mean = 10 , sd = 3)
r1
hist(r1)






