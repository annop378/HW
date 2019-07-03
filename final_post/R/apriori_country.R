library(readr)
#����z�X��H�����P�B�z�������e�T�X�A���O�R�W��from�Mto
setwd("C:/Users/James")
for(i in c(0:89)){
  path <- paste0("tt",i)
  ttcsv <- read_csv(file = path, col_names = FALSE, 
                    locale = locale(encoding = "ASCII"), 
                    na = "null", skip = 1)
  ttcsv$from<-substr(ttcsv$X2,start=7,stop=9)
  ttcsv$to<-substr(ttcsv$X5,start=1,stop=3)
  data <- paste0('ttapriori',i)
  eval(parse(text = paste("write.table(ttcsv",',file="', data,'",sep=",",row.names=F, na = "NA")',sep='')))
}
##�O�s�Ҧ���from�Mto
library(readr)
setwd("C:/Users/James")
data<-NULL
for(i in c(0:89)){
  path <- paste0("ttapriori",i)
  ttcsv <- read_csv(file = path, col_names = FALSE, 
                    locale = locale(encoding = "ASCII"), 
                    na = "null", skip = 1)
  data1<-NULL
  data1<-ttcsv$X7
  data1<-cbind(data1,ttcsv$X8)
  data<-rbind(data,data1)
}
data2 <- paste0('ttaprioriall90')
eval(parse(text = paste("write.table(data",',file="', data2,'",sep=",",row.names=F, na = "NA")',sep='')))
#apriori
library(readr)
library("arules", lib.loc="~/R/win-library/3.5")
ttaprioriall90 <- read_csv(file = "C:/Users/James/ttaprioriall90", col_names = FALSE, 
                           locale = locale(encoding = "ASCII"), 
                           na = "null", skip = 1)

ttapriori89$to <- as.factor(ttapriori89$to)
try<-ttapriori89[,c(7,8)]
path2<-c()
for (i in levels(ttapriori89$to)){
  path <- paste0("to=",i)
  path2<- c(path2,path)
}
ttapriori89$from <- as.factor(ttapriori89$from)
path3<-c()
for (i in levels(ttapriori89$from)){
  path <- paste0("from=",i)
  path3<- c(path3,path)
}
ttapriori89 <- read_csv("C:/Users/James/ttapriori88")

rule <- apriori(try, 
# min support & confidence, �̤p�W�h����(lhs+rhs)
                parameter=list(minlen=1, supp=0.01, conf=0.3),  
                appearance = list(
                lhs=path3,
                rhs=path2) 
# �k������ܪ��S�x
                 )
length(rule)
inspect(rule)                  
dd<-NULL
dd<-rbind(dd,inspect(rule))



## ��z�X�]�q�ֱ������
setwd("C:/Users/James")
library(readr)
X830024 <- read_csv("830024.csv", col_types = cols(Column2 = col_character()), 
                    locale = locale(encoding = "BIG5"))
X830024$type<-substr(X830024$Column2,start=13,stop=14)
data <- paste0('830024Type')
eval(parse(text = paste("write.table(X830024",',file="', data,'",sep=",",row.names=F, na = "NA")',sep='')))
##�u�s�P�]�q������
library(readr)
X830024Type <- read_csv("830024Type", col_types = cols(Column2 = col_character()), 
                        locale = locale(encoding = "BIG5"))
try<-subset(X830024Type,type=='70'|type=='71'|type=='76'|type=='78'|type=='77'|type=='79')
data <- paste0('PackageOnly')
eval(parse(text = paste("write.table(X830024",',file="', data,'",sep=",",row.names=F, na = "NA")',sep='')))
###�s�]�q�P�ֱ�
library(readr)
X830024Type <- read_csv("830024Type", col_types = cols(Column2 = col_character()), 
                        locale = locale(encoding = "BIG5"))
try<-subset(X830024Type,type=='70'|type=='71'|type=='76'|type=='78'|type=='77'|type=='79'|type=='74'|type=='50'|type=='56'|type=='58'|type=='54'|type=='59')
data <- paste0('PackagePlusFast')
eval(parse(text = paste("write.table(X830024",',file="', data,'",sep=",",row.names=F, na = "NA")',sep='')))
