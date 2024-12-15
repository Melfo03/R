##DATAFRAME

#DataFrame Sorgu İşlemleri

df <- data.frame( 'A' = rnorm(100 , mean = 10 , sd = 2), 
                  'B' = rnorm(100 , mean = 34 , sd = 10) , 
                  'C' = rnorm(100 , mean = 45 , sd = 15))
df
View(df)


df$A

df$A < 8
which(df$A < 8)

idx <- which(df$A < 8)

# A'nın 8 den küçük olan alt kümesi
df[idx,]

df[idx, c('B' , 'C')]

df2 <- df[idx, c('B' , 'C')]
df2

class(df2)


df

mean(df$B)

df$B < mean(df$B)
idx2 <- which(df$B < mean(df$B))

df[idx2 ,]
df[idx2 , c('A' , 'C')]


View(df[idx2 , c('A' , 'C')])
#.....................................................................................................................



df <- data.frame('A' = c(12,14,15,16,17) , 
                 'B' = c(12,17,67,54,34) , 
                 'C' = c('a' , 'b' , 'c' , 'd' , 'e'))
df


length(df$A)

# Satır sayısı
nrow(df)

# Sütun sayısı
length(df)
ncol(df)

# Hem satır hem sütun sayısı verir
d <- dim(df)
d[1]
d[2]
#.....................................................................................................................



#Subset() Fonksiyonu
data()


CO2
View(CO2)


?subset

names(CO2)

df2 <- subset(CO2 , subset = (uptake > 30 & Type == 'Quebec') )
nrow(CO2)
nrow(df2)

df3 <- subset(CO2 , subset = (uptake > 30 & Type == 'Quebec') , 
              select = c(Treatment , conc) ) 

View(df3)
nrow(df3)


df4 <- subset(CO2 , subset = (uptake > 30 | Type == 'Quebec') ) 

View(df4)
nrow(df4)

df5 <- subset(CO2 , subset = (Type == 'Quebec' | Treatment == 'nonchilled') & 
                (uptake > 30 & uptake < 35)   
)
View(df1)

#.....................................................................................................................



#Satır Ve Sütun Ortalamaları

data()

View(iris)

d1 <- rowMeans(iris[1:4])

iris['Ortalama'] <- d1

View(iris)
d2 <- rowMeans(iris[1:2] , na.rm = T)
iris['Ortalama2'] <- d2
View(iris)

colMeans(iris[1:4]  , na.rm = T)
#.....................................................................................................................



View(iris)

setosa <- which(iris$Species == 'setosa')
versicolor <- which(iris$Species == 'versicolor')
virginica <- which(iris$Species == 'virginica')

meanSetosa <- mean(iris[ setosa , c('Sepal.Length')])
meanVersicolor <- mean(iris[ versicolor , c('Sepal.Length')])
meanVerginica <- mean(iris[ virginica , c('Sepal.Length')])

# Ortalamalar
meanSetosa;meanVersicolor;meanVerginica

aggregate(iris , by = list(iris$Species) , FUN = mean)
# Ortalama
aggregate(iris[1:4] , by = list(iris$Species) , FUN = mean)
# Standart Sapma
aggregate(iris[1:4] , by = list(iris$Species) , FUN = sd)
# Toplam
aggregate(iris[1:4] , by = list(iris$Species) , FUN = sum)


aggregate(iris[1:4] , by = list(iris$Species) , FUN = mean , na.rm = T)
#.....................................................................................................................

#Csv Verilerini Aktarma

# C:\Users\pc\Desktop\RLessons\RLessons\src
setwd("C:\Users\pc\Desktop\RLessons\RLessons\src")
getwd()

list.files()

df <- read.csv('CSV__singapore.csv' , header = TRUE , sep = ";" , dec = ".")
View(df)


df2 <- read.csv('CSV__singapore.csv' , header = TRUE , sep = "," , dec = ".")
View(df2)

getwd()
setwd("/Users/pc/Desktop/")
getwd()

df <- read.csv('src/CSV__singapore.csv' , header = TRUE , sep = ";" , dec = ".")
View(df)
#.....................................................................................................................


#Merge Fonksiyonu



merge_df = merge(Demografik , Transactions , 
                 by.x = "ID" , by.y = "CUSTOMER_ID")

View(merge_df)


names(Transactions)
names(Transactions)[2] <- 'ID'
names(Transactions)

merge_df2 <- merge(Demografik , Transactions , by = 'ID')
View(merge_df2)
# Help 
?merge
#.....................................................................................................................


View(iris)

summary(iris)

View(summary(iris))
str(iris)

head(iris)

iris[10:15 , ]


?head

head(iris , n = 5)
tail(iris , n = 15)
#.....................................................................................................................



list.files('C:\Users\pc\Desktop\RLessons\RLessons\src')

df <- read.csv('C:\Users\pc\Desktop\RLessons\RLessons\src/CSV__singapore.csv' , 
               header = T , sep = ";" , dec = '.')
View(df)

mean(df$price)

any(is.na(df$price))

mean(df$price , na.rm = T)

sd(df$price , na.rm = T)

median(df$price , na.rm = T)

hist(df$price)
hist(df$price[df$price < 1000])

sd(df$price , na.rm = T) 
var(df$price , na.rm = T)

min(df$price , na.rm = T)
max(df$price , na.rm = T)

table(df$room_type)

which(df$room_type == '110')
df <- df[-964 , ]
table(df$room_type)


class(df$room_type)
levels(df$room_type)

which(df$room_type == "")
df <- df[-which(df$room_type == ""), ]

table(df$room_type)

quantile(df$price)
#.....................................................................................................................


#Apply() Fonkisyonu
View(iris)

apply(iris[1:4] , MARGIN = 1 , FUN = mean)

# Sağlama işlemi
iris[1 , 1:4]
class(iris[1 , 1:4])
as.numeric(iris[1 , 1:4])
mean(as.numeric(iris[1 , 1:4]))

apply(iris[1:4] , MARGIN = 1 , FUN = sd)
sd(as.numeric(iris[1 , 1:4]))

apply(iris[1:4] , MARGIN = 1 , FUN = sum)


apply(iris[1:4] , MARGIN = 2 , FUN = sd)
apply(iris[1:4] , MARGIN = 2 , FUN = mean)
apply(iris[1:4] , MARGIN = 2 , FUN = sum)
apply(iris[1:4] , MARGIN = 2 , FUN = max)
apply(iris[1:4] , MARGIN = 2 , FUN = min)

lapply(iris, FUN = mean)

l <- list('a' = c(13,24,55,67,89,90) , 
          'b' = c(13,45,65,23,45) , 
          'c' = c(11,22,34,23,12))
lapply(l , FUN = mean)
lapply(l , FUN = sd)
lapply(l , FUN = max)
#.....................................................................................................................



#With() Fonksiyonu

df <- CSV__singapore
View(df)
names(df)

df$id
df["id"]

attach(df)
host_name
host_id
class(host_id)

detach(df)
host_id

detach(df)
detach(df)
host_id

with(df , print(host_name) )


with(df , {
  x <- mean(price , na.rm = T)
  y <- x - 5 
  print(y)
})









