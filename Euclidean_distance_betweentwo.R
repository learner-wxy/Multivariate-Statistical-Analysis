# 计算两两之间的欧氏距离
a1=c(6901.6,2321.3,4632.8,1558.2,3447.0,3018.5,2313.6,802.8)
a2=c(8467.3,1903.9,7385.4,1420.7,5100.9,3452.3,1691.9,645.3)
a3=c(5067.7,1746.6,3753.4,1430.2,1993.8,2078.8,1524.5,492.8)
a4=c(5777.3,1776.9,3752.6,1329.1,2517.9,2322.1,1583.4,479.9)
a5=c(5975.7,1963.5,3809.4,1322.1,3064.3,2352.9,1750.4,614.9)
X=rbind(a1,a2,a3,a4,a5)
X
D=matrix(NA,nrow=5,ncol=5)#先创建一个空的矩阵，后把它填满
D
for (i in 1:5){
  for(j in 1:5)
  {
    D[i,j]=sqrt(t(X[i,]-X[j,])%*%(X[i,]-X[j,]))#相当于a1与a2对应数相减后，的数平方和，再开方
  }
}
D
  



