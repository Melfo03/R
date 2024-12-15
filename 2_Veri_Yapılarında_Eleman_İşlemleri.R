##ELEMAN SEÇİMİ

x <- c('A' , 'B' , 'C')

# Birinci Eleman Seçimi 
x[1]

# İkinci Eleman Seçimi
x[2]

y <- c(1,2,3,4,5,6,7,8,9,10)

# 1 ve 3 arasındaki elemanlar
y[1:3]
y[4:9]
y[5:8]

y[c(5,6,7,8)]

t <- c(11,12,13,29,25,29,30,31,32)
t[c(4,8,9)]
t[c(4,8,15)]

t[c(1 , 2, 3)]
t[3:8]
#.....................................................................................................................

x <- c(12,13,14,15,16)
x

# Eleman seçimi 
x[1]
x[5]

# Eleman çıkartma işlemi
x[-1]
x[-5]

# Çıkartma işleminş kalıcı hale getirmek için tekrar atama yapılmalı

x = x[-1]
x = x[-4]
x

x <- c(12,13,14,15,16)
y <- x[-1]

# NOT: 
# Tek satırda birden fazla komut için ; kullanılabilir 
x;y

x[c(1,2,3)]
x[c(-1,-2,-3)]

cıkartılacak <- c(2,3,1)
x[-cıkartılacak]

c <- x[-cıkartılacak]
c

1:3
x[1:3]


# Ardışık indexleri çıkartma 
-1:3
x[-1:3] # Hatalı cıakrtma 
x[-c(1:3)]
#.....................................................................................................................


x <- c(10,11,21,32,43,56)

# Tekil eleman değitirme
x[2] <- 33
x

# Birden fazla elemanı tek bir değer ile değiştirme
# 10 33 21 32 43 56 
x[c(1,2)] <- 1 
x

# Birden fazla eleman değiştrime 
x[c(1,2)] <- c(10,11)
x[c(1,2)] <- c(1,2,3)

x[1:3] <- 11:13
x
#.....................................................................................................................


x <- c(11,22,33,44)

# 5ç elemanı ekleme 
x[5] <- 55


# Bırden fazla eleman ekele
x[5:10] <- 3


# 11. eleman NA olur
x[12] <- 5

x[11] <- 1
x

x[c(13,14)] <- c(11,12)
x
#.....................................................................................................................

#Listelerde Eleman İşlemleri
#Listeye Eleman Ekleme
list(1,2,3,4)
list(c(1,2,3) , 'A' , 10)

x <- list(11,12 , c('A' , 'B' , 'C') )

x[1]
x[[1]]

class(x[1])
class(x[[1]])

x[3][2] # Null değerini verir

x[[3]][2] # Doğru kullanım


y <- list('A' = c(1,2,3,4) , 'B' = c(11,22,33,44))
names(y)
y
y['A']
class(y['A'])

y[['A']]
class(y[['A']])


y$B
y$A

class(y$B)
class(y$A)
#.....................................................................................................................


#Listeden Eleman Çıkarma
x <- list(1,2,3 , c(11,22,33))

x[[1]] <- NULL

x[[3]][-3]

x[[3]] <- x[[3]][-3]
x

y <- list(c(1,2,3) , 'A' , 'B')

y[[1]] <- NULL

y[[1]] <- y[[1]][-2] 

y <- list('A' = c(1,2,3) , 'B' = 2)

y$A <- NULL
y
x[-1]
x
#.....................................................................................................................


x <- list(1,2,3,4)
x[[2]] <- NULL
x <- x[-2] 
x

x <- list('A' , 'B' , 'C' , 12 , 13, c(11,22,33,44))

x[[2]] <- 'DD' 
x[1] <- 'AA'

x[[6]][4] <- 0
x
#.....................................................................................................................


x <- list(11,12,13)

# Eleman değiştirme
x[[2]] <- 15
x


# YEni elaman eklemede

x[4] <- 33
x

x[5] <- 34
x

x[[6]] <- 35
x

x[[7]] <- c(11,12,13,14)
x

x[8] <- c(11,12,13,14)
x

x[[8]] <- c(11,12,13,14)
x

x[[15]] <- 15
x
#.....................................................................................................................

#Matrislerde Eleman Seçimi

# Matris oluşturma
m <- matrix(c(11,12,13,14) , nrow = 2 , ncol=2 , byrow = TRUE)


# Matrislerde Eleman İşlemleri

m1 <- matrix(c(12,22,34,45,45,56,57,68) , nrow=2 , ncol=4 , byrow=TRUE)

m1

# [1,] [,1] = [1,1]
# Birinci satır ve birinci sütun

m1[1,1]
m1[2,4]
m1[2,5]

# Matrisin parçalarını seçmek

m1[c(1,2) , c(1,2)]
class(m1[c(1,2) , c(1,2)])

m1[1:2,2:4]
m1[c(1) , c(1,3,4)]
#.....................................................................................................................


m <- matrix(c(1,2,3,4) , nrow=2 , ncol=2 , byrow=T)
m

class(m[,-2])
class(m)

m <- m[,-2]
as.matrix(m)

m1 <- matrix(c(11,22,33,44,55,66,77,88) , 4, 2 , T)
m1

# TEk bir satrı çıkartma 
m1[-3 , ]

# Çoklu satır çıkartma işlemleri
m1[-c(2,3) , ]
m1[-c(2:3) , ]
m1[-c(2:4) , ]

# Değerleri NA'ya çevirme
m1[2,2] <- NA
m1
m1[c(1,2) , 1] <- NA
m1

m1[2,2] <- 123
m1

m2 <- m1[-4,]
m2
#.....................................................................................................................


#Matrislere Satır Sütun Ekleme

m <- matrix(c(1,2,3,4) , 2,2,T)
m

# Yanlış kullanım
m[ , 3] <- c(1,2) 

# Doğru kullanım

cbind(m , c(1,2))
rbind(m , c(1,2))

cbind(m , c(1,2 ,3))
rbind(m , c(1,2 , 3))

m <- cbind(m , c(1,2))
m <- rbind(m , c(1,2 , 3 , 5))
m
#.....................................................................................................................



#DataFrame Eleman Seçimi
df <- data.frame('A' = c(12,13,14,15,16) , 'B' = c('A' , 'B' , 'C' , 'D' , 'E'))

df[1,1]
df[1,2]

df[,2]
df[,1]
df[5,]

class(df[,2])
class(df[5,])

df2 <- data.frame( 'A' = c(12,13,14,15,16) , 
                   'B' = c('A' , 'B' , 'C' , 'D' , 'E'),
                   'C' = c(45,23,67,89,24))

df2

df2[,c(2,3)]
class(df2[,c(2,3)])

df2[2]
df2[1]
class(df2[1])

df2[['A']]
df2[,1]

class(df2[['A']])
class(df2[,1])


df2[,2] # Vektor
df2[2] # Data frame
df2['B'] # Data frame
df2[['B']] # Vektor

df2$A # vektor
df2$B
df2$C

df2[c('A' , 'B')]
df2[[c('A' ,'B')]] # HAtalı kullanım 
#.....................................................................................................................


#DataFrame Satır Sütun İşlemleri
df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))
df

# İkinci sütunun çıkartılmış seçimi
df[-2]
df[-1]

df[2]
# Kaydetme kalıcı halde getirmek için tekrar atama işlemi
df <- df[-2]
df

df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))

df[,1]
df[,-1]

df[-1]

df[2] <- NULL
df

df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))
df['A'] <- NULL
df

df <- data.frame('A' = c(1,2,3,4,5) , 
                 'B' = c(4,5,6,7,8),
                 'C' = c(11,222,32,41,54))

df[-c(1,3)]
df[,-c(1,3)] # Sonucu vektordur
df[,-3] # Bu bir data frame olur

df[c('A' ,'B')] <- NULL
df


df <- data.frame('A' = c(1,2,3,4,5) , 
                 'B' = c(4,5,6,7,8),
                 'C' = c(11,222,32,41,54))

df <- df[-1,]
df[1,]

df[-c(2:4) ,]
df[-c(1,4),]
#.....................................................................................................................


df <- data.frame('A' = c(1,2,3,4) , 'B' = c(4,5,6,7))
df

df[1,2]
df[2,2]

df[1,2] <- 20
df

df[2,2] <- 21
df

df[c(3,4) , 2 ] <- 35
df

df[1, c(1,2)] <- 35

df[1, c(1,2)] <- c(22,44)
df

df[ c(3,4), 1] <- c(33,44)
df
#.....................................................................................................................


df <- data.frame('A' = c(1,2,3,4) , 
                 'B' = c('A' , 'B' , 'C' , 'D'),
                 'C' = c(11,22,33,44))


cbind(df , 'D' = c(33,44,55,66))
df
df <- cbind(df , 'D' = c(33,44,55,66))
df

df[5] <- c(12,13,14,15)
df
df$Yeni <- c('F' , 'G' , 'H' , 'Z')
df

df['Yeni2'] <- c(1,2,3,4)
df



