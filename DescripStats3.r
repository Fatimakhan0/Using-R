#Reading text file from disk
data=read.table(file="D:\\7086\\EnggCollege.txt",header=TRUE)
head(data)
View(data)

#Reading text file from URL
url="https://courses.edx.org/c4x/MITx/6.00.1x_5/asset/words.txt"
data1=read.table(url,header=TRUE)
head(data1)
View(data1)

#Create a dataframe to export it to disk in a text format
df=data.frame(x=c(1,4,4,5,6,7,10,12),
              y=c(2,2,3,3,4,5,11,11),
              z=c(8,9,9,9,10,13,15,17))
write.table(df,file='D:\\7086\\r2disc')


#Create a dataframe to export it to disk in a csv format
df1=data.frame(name=c("Deva","Raja","Shekar","Raj","Ravi"),
               age=c(23,41,32,55,40))
write.csv(df,"D:/7086/Peope.csv")

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

install.packages("readxl")
library(readxl)
#import Excel file into R
data = read_excel("D:/7086/AI'DS-B.xlsx")
View(data)

install.packages("XML")
#Reading XML file
library(XML)
library(methods)
result=xmlParse(file="D:/7086/r2xml.xml")
print(result)
df2=xmlToDataFrame("D:/7086/r2xml.xml")
View(df)