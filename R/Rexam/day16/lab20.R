library(psych)
library(corrgram)
library(corrplot)
airquality
table(is.na(airquality))

air<- airquality[complete.cases(airquality),]

#1
pairs(air[,1:4])
corr.test(air[,1:4]) #wind와 solar.r이 유의성을 만족하지 않는다. p-value = 0.18 > 0.05 
cor.test(air$Solar.R,air$Wind)
cor(air)

dev.copy(png,"output/lab20_1.png")
dev.off()

#2
pairs.panels(air[,1:4], bg="red", pch=21, hist.col="gold", 
             main="Correlation Plot of airquality Data")

dev.copy(png,"output/lab20_2.png")
dev.off()

#3
par(mar=c(2,2,2,2),mfrow=c(1,1))
corrplot(cor(air[,1:4]), method="pie", addCoef.col="black", type="lower", order="hclust", tl.srt=45, diag=F)

dev.copy(png,"output/lab20_3.png")
dev.off()
