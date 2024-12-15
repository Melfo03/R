#DATE TİPİ VERİLER

d1 <- '12/12/2020'
d2 <- '13/12/2020'

class(d1)

d1 <- as.Date(d1 , format = '%d/%m/%Y')
d1
class(d1)
d2 <- as.Date(d2 , format = '%d/%m/%Y')
d2
class(d2)

d2 - d1
d1 - d2
class(d1 - d2)

as.double(d2 - d1)


d3 <- '12/12/2020'
d4 <- '20/12/2020'
d3 <- as.Date(d3 , format = '%d/%m/%Y')
d4 <- as.Date(d4 , format = '%d/%m/%Y')

as.double(d4-d3)

d5 <- '12/12/2020'
d6 <- '12/12/2021'
d5 <- as.Date(d5 , format = '%d/%m/%Y')
d6 <- as.Date(d6 , format = '%d/%m/%Y')

as.double(d6-d5)


d7 <- '12/12/2020'
d8 <- '28/12/2021'
d7 <- as.Date(d7 , format = '%d/%m/%Y')
d8 <- as.Date(d8 , format = '%d/%m/%Y')

as.double(d8-d7)
#.....................................................................................................................



d1t <- '12/12/2020 12:30:00'
d2t <- '12/12/2020 12:45:00'
d1t <- as.POSIXlt(d1t , format = '%d/%m/%Y %H:%M:%S')
d2t <- as.POSIXlt(d2t , format = '%d/%m/%Y %H:%M:%S')

d1t
d2t
d2t - d1t
as.double(d2t-d1t)


d3t <- '12/12/2020 12:30:00'
d4t <- '13/12/2020 12:45:00'
d3t <- as.POSIXlt(d3t , format = '%d/%m/%Y %H:%M:%S')
d4t <- as.POSIXlt(d4t , format = '%d/%m/%Y %H:%M:%S')

d3t
d4t
d4t - d3t
as.double(d4t-d3t)


d5t <- '12/12/2020 12:30:00'
d6t <- '12/12/2020 13:45:00'
d5t <- as.POSIXlt(d5t , format = '%d/%m/%Y %H:%M:%S')
d6t <- as.POSIXlt(d6t , format = '%d/%m/%Y %H:%M:%S')

d5t
d6t
d6t - d5t
as.double(d6t-d5t)
#.....................................................................................................................


# %d - day as a number (0-31)	01-31
# %a - abbreviated weekday Mon
# %A - unabbreviated weekday Monday
# %m - month (00-12)	00-12
# %b - abbreviated month Jan
# %B - unabbreviated month January	
# %y - 2-digit year  07
# %Y - 4-digit year	 2007


Sys.Date()

today <- Sys.Date()
today
class(today)


format(today , format = "%d/%m/%Y")
g <- format(today , format = "%d/%m/%Y")
class(g)

tarih <- '06/06/2016'
class(tarih)

as.Date(tarih , format = '%d/%m/%Y')
yeniTarih <- as.Date(tarih , format = '%d/%m/%Y')
class(yeniTarih)


as.Date(g , format = "%d/%m/%Y")
today <- as.Date(g , format = "%d/%m/%Y") 
class(today)

tarih2 <- '23-05-2020'
class(tarih2)
as.Date(tarih2 , format = '%d-%m-%Y')
#.....................................................................................................................



as.Date()
as.POSIXct()
as.POSIXlt()

d <- '12/12/2012'

d2 <- c('12/12/2012' , '13/12/2012' , '14/12/2012' )
d2
class(d2)

d2 <- as.Date(d2  , format = "%d/%m/%Y")
class(d2)
d2

d3 <- c('12-12-2012' , '13-12-2012' , '14-12-2012' )
class(d3)
d3
d3 <- rep(d3 , times = 5)
d3 <- rep(d3 , each = 3)
d3
length(d3)

d3 <- as.Date(d3 , format = "%d-%m-%Y")
class(d3)

# Tarih ve Zaman içeren değerler
d4 <- c('12-12-2012 12:12:01' , '13-12-2012 12:12:01' , '14-12-2012 12:12:01' )
d4
class(d4)

d4 <- as.POSIXlt(d4 , format = "%d-%m-%Y %H:%M:%S" , tz = "UTC")
d4
class(d4)

d4un <- unclass(d4)
d4un[['sec']][3]

d4un[['year']][2]
d4un[['year']][2] + 1900
#.....................................................................................................................



Sys.Date() # Tarih
Sys.time() # Tarih ve Zaman


t1 <- Sys.time()
t1

class(t1) # Tarih Zaman formatları

t1
t1 <- as.POSIXct(t1)
class(t1)
unclass(t1)

t1l <- as.POSIXlt(t1)
t1l
unclass(t1l)

unct1l <- unclass(t1l)
unct1l

names(unct1l)

unct1l[['min']]
unct1l[['sec']]
unct1l[['mday']]
unct1l[['year']] + 1900
unct1l[['mon']] + 1


t2 <- '12/12/1920 18:30:23'
t2
class(t2)

tv2 <- as.POSIXlt(t2 , format = "%d/%m/%Y %H:%M:%S" , tz = "UTC")
tv2
t2
tv2c <- unclass(tv2)


tv2c[['min']]
tv2c[['sec']]
tv2c[['mday']]
tv2c[['year']] + 1900
tv2c[['mon']] + 1

t3 <- '12/12/1840 18:30:23'
t3
class(t3)

tv3 <- as.POSIXlt(t3 , format = "%d/%m/%Y %H:%M:%S" , tz = "UTC")

tv3c <- unclass(tv3)

tv3c[['min']]
tv3c[['sec']]
tv3c[['mday']]
tv3c[['year']] + 1900
tv3c[['mon']] + 1

tv3c[['year']]
#.....................................................................................................................


#Ardışık Tarih Verileri Oluşturma


seq(from = 1 , to = 100 , by = 5)

# Ardışık Tarih

# 1 er gün ara ile artar
seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2020' , format = '%d/%m/%Y') , 
    by = 1)
# 5 er gün ara ile artar
seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2020' , format = '%d/%m/%Y') , 
    by = 5)

# Gün
seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2020' , format = '%d/%m/%Y') , 
    by = 'day')
# Ay
seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2021' , format = '%d/%m/%Y') , 
    by = 'month')

d <- seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
         to = as.Date('22/12/2021' , format = '%d/%m/%Y') , 
         by = 'month')

length(d)


# yıl
seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2030' , format = '%d/%m/%Y') , 
    by = 'year')

d <- seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
         to = as.Date('22/12/2030' , format = '%d/%m/%Y') , 
         by = 'year')

length(d)

seq(from = as.Date('12/12/2020' , format = '%d/%m/%Y' ) , 
    to = as.Date('22/12/2030' , format = '%d/%m/%Y') , 
    by = 'quarter')
length(d)

seq(from = as.Date('01/01/2021' , format = '%d/%m/%Y' ) , 
    to = as.Date('01/03/2030' , format = '%d/%m/%Y') , 
    by = 'quarter')
length(d)

seq(from = as.Date('01/01/2021' , format = '%d/%m/%Y' ) , 
    to = as.Date('01/03/2022' , format = '%d/%m/%Y') , 
    by = 'quarter')
length(d)

seq(from = as.Date('01/01/2021' , format = '%d/%m/%Y' ) , 
    to = as.Date('01/03/2022' , format = '%d/%m/%Y') , 
    by = 'quarter')
length(d)


seq(from = as.Date('01/01/2021' , format = '%d/%m/%Y' ) , 
    to = as.Date('01/03/2022' , format = '%d/%m/%Y') , 
    by = 'week')
length(d)


# Zaman İçeren Değer Üzerinde
# 15 Saniye
seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 12:45:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 15)

# 1 Dakika
seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 12:45:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 60)

# 1 Saat
seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 18:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 60*60)


seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 18:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'hour')

seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 18:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'min')

seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2021 12:32:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'sec')

seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('12/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'day')

seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/03/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'month')


seq(from = as.POSIXct('01/01/2021 12:30:00' , format = '%d/%m/%Y %H:%M:%S' ) , 
    to = as.POSIXct('01/01/2022 12:30:00' , format = '%d/%m/%Y %H:%M:%S') , 
    by = 'min')
#.....................................................................................................................


#Sorgu İşlemleri

d <- seq(from = as.Date('2012-01-01') , 
         to = as.Date('2020-01-01') , 
         by = 'month')

# Ay olarak artan vektor
d

x <- c(1,2,3,4)
x > 2
x[x>2]

# Tanımlı Format
d[d > '2019-05-01']

# Tanımsız format as.Date() kullanılmalı
d[d > as.Date('01/01/2019' , format = "%d/%m/%Y")]

which(d > as.Date('01/01/2019' , format = "%d/%m/%Y"))
inx <- which(d > as.Date('01/01/2019' , format = "%d/%m/%Y"))
d[inx]


dt <- seq(from = as.POSIXct('2012-01-01 12:00:00') , 
          to = as.POSIXct('2012-01-01 12:45:00') , 
          by = 'min')
dt
class(dt)


dt > '2012-01-01 12:30:00'
dt[dt > '2012-01-01 12:30:00']
which(dt > '2012-01-01 12:30:00')


dt < '2012-01-01 12:30:00'
dt[dt < '2012-01-01 12:30:00']
which(dt < '2012-01-01 12:30:00')


dt <= '2012-01-01 12:30:00'
dt[dt <= '2012-01-01 12:30:00']
which(dt <= '2012-01-01 12:30:00')


dt == '2012-01-01 12:30:00'
dt[dt == '2012-01-01 12:30:00']
which(dt == '2012-01-01 12:30:00')


dt < '2012-01-01 12:30:30'
dt[dt < '2012-01-01 12:30:30']
which(dt < '2012-01-01 12:30:30')


dt > '2012-01-01 12:30:30'
dt[dt > '2012-01-01 12:30:30']
which(dt > '2012-01-01 12:30:30')

dt > as.POSIXct('01//01//2012 12:30:30' , format = '%d//%m//%Y %H:%M:%S')
dt[dt > as.POSIXct('01//01//2012 12:30:30' , format = '%d//%m//%Y %H:%M:%S')]
which(dt > as.POSIXct('01//01//2012 12:30:30' , format = '%d//%m//%Y %H:%M:%S'))
#.....................................................................................................................



x  <- c(1,2,3,4,5,6,7)


x > 5 
x < 7

# And yani "ve"
x > 5 & x < 7

# Or yani 'veya'
x > 5 | x < 7


d <- seq(from = as.Date('2012-01-01') , 
         to = as.Date('2012-01-25'), 
         by = 'day')
d


# tarihler 
d > '2012-01-08' & d < '2012-01-17'
d[d > '2012-01-08' & d < '2012-01-17']
which(d > '2012-01-08' & d < '2012-01-17')

# Tarih ve Zamanlar 

dt <- seq(from = as.POSIXct('2012-01-01 12:00:00') , 
          to = as.POSIXct('2012-01-01 12:30:00 '), 
          by = 'min')
dt

dt > '2012-01-01 12:15:00' & dt < '2012-01-01 12:20:00'
dt[dt > '2012-01-01 12:15:00' & dt < '2012-01-01 12:20:00']
which(dt > '2012-01-01 12:15:00' & dt < '2012-01-01 12:20:00')


dt > '2012-01-01 12:15:00' & dt <= '2012-01-01 12:20:00'
dt[dt > '2012-01-01 12:15:00' & dt <= '2012-01-01 12:20:00']
which(dt > '2012-01-01 12:15:00' & dt <= '2012-01-01 12:20:00')




d1 <- seq(from = as.Date('2012-01-01'), 
          to = as.Date('2012-06-01'),
          by = "month")

d2 <- seq(from = as.Date('2012-02-01'), 
          to = as.Date('2012-07-01'),
          by = "month")

length(d1)
length(d2)

class(d1)
class(d2)

d2 - d1


d2
d1
d2 - d1

d2
d2  - as.Date('2012-02-01')

x <- d2  - as.Date('2012-02-01')

x[0]
x[1]
x[2]
as.double(x)
as.double(x[2])
#.....................................................................................................................


#Tarih Verilerinin Sıralanması


x <- c(3,4,2,6,7)

sort(x , decreasing = T)

d <- seq(from = as.Date('2012-01-01'), 
         to = as.Date('2012-01-30') , 
         by = 'day')
d

dr <- sample(d)

sort(dr , decreasing = T)
sort(dr , decreasing = F)
#.....................................................................................................................


#Strptime() Fonksiyonu
# https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/strptime


x <- '2012-01-01'
y <- '01/01/2020'

x1 <- strptime(x , format = '%Y-%m-%d')
x2 <- strptime(y , format = '%d/%m/%Y')

x1
x2

class(x1)
class(x2)

x <- '2012-01-01 12:00:00'
y <- '01/01/2020 12:00:00'

x1 <- strptime(x , format = '%Y-%m-%d %H:%M:%S' , tz = "GMT")
x2 <- strptime(y , format = '%d/%m/%Y %H:%M:%S' , tz = "GMT")


class(x1)
x1
class(x2)
x2
#.....................................................................................................................


#Chron Kütüphanesi

install.packages('chron')
library(chron)

?chron



x <- '01/01/2020'
y <- '01/02/2020'

d <- c(x,y)
d
class(d)

d <- chron(dates. = d , format = "d/m/y")
class(d)



x <- '01/01/2020'
y <- '01/02/2020'

xt <- '12:00:00'
yt <- '12:30:00'

d <- c(x,y)
dt <- c(xt ,yt)
class(d)
class(dt)


d <- chron(dates. = d , times. = dt ,  format = c(dates = 'd/m/y' , times = 'h:m:s'))
class(d)
d
d[1]
#.....................................................................................................................


#Weekdays()ve Months() Fonksiyonları

x <- '01/01/2020'
x1 <- '02/01/2020'

y <- as.Date(x , format = "%d/%m/%Y")
y1 <- as.Date(x1 , format = "%d/%m/%Y")


weekdays(y)
weekdays(y1)
months(y)
months(y1)

x2 <- '1 Eylül 2019'
x3 <- '1 September 2019'


as.Date(x3 , format= "%d %B %Y")

sessionInfo()

Sys.setlocale('LC_TIME' , 'tr_TR.UTF-8')
as.Date(x2 , format= "%d %B %Y")


Sys.setlocale('LC_TIME' , 'en_US.UTF-8')



d <- seq(from = as.Date('2012-01-01' , format = '%Y-%m-%d') , 
         to = as.Date('2012-02-29' , format= '%Y-%m-%d'),
         by = 'day')


