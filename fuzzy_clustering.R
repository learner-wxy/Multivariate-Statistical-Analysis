# ģ�����෨
library(foreign)
library(cluster)

mydata<-read.spss("./3.7.1Asia.sav") 
mydata
X<-as.data.frame(mydata)  #ת�����ݸ�ʽ
X
Z<-data.frame(scale(X[,2:7]),row.names=X[,1]) #�����ݽ��б�׼����������������Ϊ��Ӧ�Ĺ���
Z
fresult<-fanny(Z,3)#�۳�����
fresult
summary(fresult)
plot(fresult)#�������ͼ�����Ӱͼ�����Ʊ���ͼ1:5|0.60��������һ�����5����Ʒ��������5����Ʒƽ����������Ϊ0.60��