# 상관분석

library(MASS)
str(cats)
?cats
head(cats)
plot(cats$Hwt ~ cats$Bwt,
     col="forestgreen", pch=19,
     xlab="Body Weight (kg)", ylab="Heart Weight (g)",
     main="Body Weight and Heart Weight of Cats")

cor(cats$Bwt, cats$Hwt)
with(cats, cor(Bwt, Hwt))

cor.test(cats$Bwt, cats$Hwt)
with(cats, cor.test(Bwt, Hwt))
with(cats, cor.test(~ Bwt + Hwt))
cor.test(~ Bwt + Hwt, data=cats)
cor.test(~ Bwt + Hwt, data=cats, subset=(Sex=="F"))
with(cats, cor.test(~ Bwt + Hwt, subset=(Sex=="M")))



str(iris)
cor(iris[-5])

iris.cor <- cor(iris[, 1:4])
class(iris.cor)
str(iris.cor)
iris.cor
iris.cor["Petal.Width", "Petal.Length"]
pairs(iris[, 1:4])
cor.test(iris$Petal.Length, iris$Petal.Width)
cor.test(iris$Sepal.Length, iris$Sepal.Width)
cor.test(iris$Petal.Length, iris$Sepal.Width)
cor.test(iris$Sepal.Length, iris$Petal.Width)

iris.na.test <- iris[, 1:4]
iris.na.test[1,1] <- NA
iris.na.test[3,2] <- NA
iris.na.test[4,3] <- NA
head(iris.na.test)
cor(iris.na.test)

cor(iris.na.test, use="complete.obs")
cor(iris.na.test, use="pairwise.complete.obs")

install.packages("psych")
library(psych)
corr.test(iris[-5])
print(corr.test(iris[-5]), short=FALSE)

?state.x77
str(state.x77)
head(state.x77)
old.op <- options(digits=2)
cor(state.x77)
options(old.op)



str(mtcars)
head(mtcars)
car_cor <- cor(mtcars)
round(car_cor,2)
install.packages("corrplot")
library(corrplot)
corrplot(car_cor)
corrplot(car_cor, type="lower", order="hclust", tl.srt=45)
corrplot(car_cor, method="ellipse", type="lower", order="hclust", tl.srt=45, diag=F)
corrplot(car_cor, method="number", type="lower", order="hclust", tl.srt=45, diag=F)
corrplot(car_cor, method="shade", type="lower", order="hclust", tl.srt=45, diag=F)
corrplot(car_cor, method="color", type="lower", order="hclust", tl.srt=45, diag=F)
corrplot(car_cor, method="pie", type="lower", order="hclust", tl.srt=45, diag=F)
corrplot(car_cor, method="color", type="lower", order="hclust", tl.srt=45)
corrplot(car_cor, method="color", addCoef.col="black", type="lower", order="hclust", tl.srt=45)
corrplot(car_cor, method="color", addCoef.col="black", type="lower", diag=F, tl.srt=45)



library(psych)
pairs.panels(state.x77, bg="red", pch=21, hist.col="gold", 
             main="Correlation Plot of US States Data")


install.packages("corrgram")
library(corrgram)
corrgram(state.x77, order=TRUE, lower.panel=panel.shade, 
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Corrgram of US States Data")


cols <- colorRampPalette(c("darkgoldenrod4", "burlywood1", 
                           "darkkhaki", "darkgreen"))
corrgram(state.x77, order=FALSE, col.regions=cols,
         lower.panel=panel.pie, upper.panel=panel.conf, 
         text.panel=panel.txt, main="Corrgram of US States Data")




cor(Orange$circumference, Orange$age)
plot(Orange$circumference, Orange$age, col = "red", pch = 19 )
cor.test(Orange$circumference, Orange$age)