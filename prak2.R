a <- c(1,2,-5,0.3,6,-2,4) 
b <- c("one","two","three") 
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) 
print(a)
print(b)
print(c)

#MATRIKS
cells <- c(3,15,-27,38)
r_adilla <- c("R1", "R2")
c_adilla <- c("C1", "C2") 
nama_matrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                      dimnames=list(r_adilla, c_adilla))
print(adilla_matrix)


#Data Frame
adilla1 <- c(1,2,3,4)
adilla2 <- c("red", "white", "red", NA)
adilla3 <- c(TRUE,TRUE,TRUE,FALSE)
dataku <- data.frame(adilla1, adilla2, adilla3)
names(dataku) <- c("ID","Color","Passed") 
print(dataku)

data_adilla <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_adilla)

install.packages("RMySQL")



library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'ps2_adilla', host = 'localhost')
dbListTables(con) 
myQuery <- "select * from ps2adilla;"
df <- dbGetQuery(con, myQuery)

install.packages("dplyr")
library(dplyr)
df<-filter(df,jenis.kelamin=="L")
print(df)


library(dplyr)
df<-filter(df,Brick=="No",Neighborhood=="East")
print(df)

