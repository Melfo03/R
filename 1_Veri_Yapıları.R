##DATA FRAME
x = 5

y = c(1,2,3,4,5)
y

z <- c(10,20,30,40) 
z

## hatalı Kullanım
c(10,20,30,40) <- z


t <- c("A" , 'D' , 'F' , "D")
t


e <- c("A" , "B" , 2,3,4, "D")
e


# Hatalı kullanım 
c(34,45, , 45,67)
#.....................................................................................................................


# Vektorler  

x <- c(1,2,3,4,5)
y <- c('A' , 2 , 3 ,4)

# Veri tipi kontrol etme
class(y)
class(x)

# VEktor içerisine vektor ekleme  
z <- c(10 ,11,12 , 12 , x)


# Listeler 
l <- list(1,2,3,4,5)
l1 <- list(2 , 3 , 'A' , 'B')
l2 <- list(2 ,3 , c(10,11,12,13))
l3 <- list(2,3,4 , list(1,2,3) , list(1,c(1,2,3,4)))

#Matris
m <- matrix(c(10,15,20,25) , nrow=2 , ncol=2)

# Listeye matrisin eklenmesi
l4 <- list('Vector' = c(10,11,12,13) , 'Matris' = m)

# Data Frame
df <- data.frame('a' = c(1,2,3,4,5) , 'b' = c(11,12,13,14,15))

# Listeye data frame eklenmesi
l5 <- list('Vector' = c(10,11,12,13) , 'Matris' = m , 'DF' = df)
#.....................................................................................................................

## Liste Tipi Veri Yapısı

x <- c(1,2,3,4,5,6)
x


# Liste Oluşturma 

# Nümerik 
l1 <- list(13,56,47,89)
l1

# Karakter
l2 <- list('A' ,'B')
l2

# Hem karakter hem de nümerik
l3 <- list('A' , 'B' , 2 , 'C' , 6)
l3


# Liste içerisinde vektör

l4 <- list(c(1,2,3,4,5) , 'A' , 5)
l4


l5 <- list('a' = c(1,2,3,4,5) , 'b' = 'A')
l5

g = c(56,67)

l6 <- list('a' = g , 'b' = g)
l6

f <- c(45,56)
h <-c(1,2)

fh <- c(f,h)
fh


x <- c(10,20,30,40)
y <- c('A' , 'B' , 'C' , 'D')
z <- c(11,22,33,44)

df <- data.frame(x,y,z)
df

View(df)


t <- c(1,2,3,4,5)
e <- c(45,67,56,34,23)
data.frame(x,y,z,t)
data.frame(t,e)

df2 <- data.frame('AVar' = x , 'BVar' = y , 'CVar' = z)
View(df2)

df3 <- data.frame(c(1,2,3,4,5) , 
                  c(34,45,67,89 ,45) ,
                  c(12,34,45,34 ,45))
View(df3)

df4 <- data.frame( 'a' = c(1,2,3,4,5) , 
                   'b' = c(34,45,67,89 ,45) ,
                   'c' = c(12,34,45,34 ,45))
View(df4)



df5 <- data.frame( a = c(1,2,3,4,5) , 
                   b = c(34,45,67,89 ,45) ,
                   c = c(12,34,45,34 ,45))
View(df5)

df6 <- data.frame( 'a b' = c(1,2,3,4,5) , 
                   'b c' = c(34,45,67,89 ,45) ,
                   'c d' = c(12,34,45,34 ,45))
View(df6)
#.....................................................................................................................


# Matrisler 


x = c(1,2,3,4)

matrix(x , nrow = 2 , ncol=2 )
matrix(x , nrow=2 , ncol=2 , byrow=TRUE)


y = c(1,2,3,4,5,6,7,8)

matrix(y , nrow = 2 , ncol=4)
matrix(y , nrow = 4 , ncol=2)


matrix(x , nrow = 4 , ncol = 4)
matrix(x , nrow = 4 , ncol = 4 , byrow = T)


matrix(x , nrow = 5 , ncol = 5)


