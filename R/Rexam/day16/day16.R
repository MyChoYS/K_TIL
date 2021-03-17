# 상관분석

library(MASS)
str(cats)
?cats
View(cats)
head(cats)
plot(cats$Hwt ~ cats$Bwt,
     col="forestgreen", pch=19,
     xlab="Body Weight (kg)", ylab="Heart Weight (g)",
     main="Body Weight and Heart Weight of Cats")

cor(cats$Bwt, cats$Hwt)
with(cats, cor(Bwt, Hwt))

cor.test(cats$Bwt, cats$Hwt) #p-value가 작으므로 귀무가설을 기각하고 대립가설을 채택 
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
cor(iris.na.test) #결측치부터 제거해야 한다. 

cor(iris.na.test, use="complete.obs")
cor(iris.na.test, use="pairwise.complete.obs")

install.packages("psych")
library(psych)
corr.test(iris[-5])
print(corr.test(iris[-5]), short=FALSE)

?state.x77
str(state.x77)
head(state.x77)
old.op <- options(digits=2) #소수점 이하 둘째까지..
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


######################
## 단순선형회귀분석 ##
######################

# R에 내장된 women 데이터셋으로 키에 따른 몸무게 예측 분석

str(women)
head(women)
?women

# 선형관계 확인
plot(women, xlab="키(in)", ylab="몸무게(lbs)")

plot(women$height, women$weight, xlim=c(0, 
                                        max(women$height)), ylim=c(0, max(women$weight)),
     xlab="키(in)", ylab="몸무게(lbs)")

# 회귀선 그리기
plot(women$height, women$weight, xlab="키(in)", ylab="몸무게(lbs)")
abline(lm(weight~height, data=women), col="red", lty=2)

cor(women$height, women$weight) #변수의 순서는 상관없음.
cor(women$weight, women$heigh)

# 회귀분석
women.lm <- lm(weight~height, data=women)
women.lm
summary(women.lm)
#단, 독립변수의 갯수가 단순히 늘어나기만 해도 결정계수가 높아지기 때문에
#이러한 단점을 보안한 수정된 결정계수는 결정계수보다 작은 값으로 산출될 수 있다.

# 회귀식(모델)
# wight = -87.51667 + 3.45000*height #선형모델
# 키값에 따른 몸무게 예측
h = c(100, 120, 140)
-87.51667 + 3.45000*h

predict(women.lm, data.frame(height=h)) #데이터프레임으로 값을 줘야 함 




# R에 내장된 cars 데이터셋으로 자동차 속도에 따른 정지 거리 예측

str(cars)
head(cars)

x <- cars$speed
y <- cars$dist

# 선형관계 확인
plot(x, y, xlab="속도", ylab="정지 거리")
abline(lm(y~x))

# 수리적 모형으로 해 구하기
cars.lm <- lm(y~x)
cars.lm
summary(cars.lm)
str(cars.lm)
names(cars.lm) 
(intercept <- cars.lm$coefficients[1])
(slope <- cars.lm$coefficients[2])

# 회귀선 그리기
plot(x, y, xlab="속도", ylab="정지 거리")
abline(a=intercept, b=slope, col="red", lty=2)


# 예측
x <- 35
y.hat <- slope*x + intercept
y.hat 


predict(cars.lm, newdata=data.frame(x=35))
predict.lm(cars.lm, newdata=data.frame(x=35))


(cars.lm2 <- lm(dist ~ speed, data=cars))
predict(cars.lm2, newdata=data.frame(speed=35))
predict.lm(cars.lm2, newdata=data.frame(speed=35))


# factory.csv 파일을 읽어서 회귀분석
fdata <- read.csv("data/factory.csv")
str(fdata)
fdata
plot(fdata$age, fdata$cost, xlab="사용연도", ylab="정비비용", pch=19, col="blue", cex.lab=1.5)
title("사용연도와 정비비용", cex.main=2, col.main="red") 

factory.lm <- lm(cost ~ age, data=fdata)
abline(factory.lm, col="red")

summary(factory.lm)

# 회귀 방정식으로 예측(연식 4년인 기계의 정비비용 예측)
29.107 + 13.637 * 4 
predict(factory.lm, newdata=data.frame(age=4) )

names(factory.lm)
sum(factory.lm$residuals) # 잔차들의 합

cbind(fdata, factory.lm$residuals, factory.lm$fitted.values)

fdata[,2] == round(factory.lm$residuals + factory.lm$fitted.values)



# 데이터들을 표준화 시켜서 회귀분석
attach(fdata)
st_fdata <- cbind(fdata, st_age=(age-mean(age))/sd(age), st_cost=(cost-mean(cost))/sd(cost))
attach(st_fdata)
st_factory.lm <- lm(st_cost ~ st_age, data=st_fdata)  
plot(st_age, st_cost, xlab="사용연도", ylab="정비비용", pch=19, col="blue", cex.lab=1.5)
title("변수 표준화 후의 사용연도와 정비비용", cex.main=2, col.main="red") 
abline(st_factory.lm, col="red")
summary(st_factory.lm)
detach(st_fdata)
predict(st_factory.lm, newdata=data.frame(st_age=4) )



attach(fdata)
st_fdata <- cbind(fdata, st_age=scale(age), st_cost=scalecost)
attach(st_fdata)
st_factory.lm <- lm(st_cost ~ st_age, data=st_fdata)  
plot(st_age, st_cost, xlab="사용연도", ylab="정비비용", pch=19, col="blue", cex.lab=1.5)
title("변수 표준화 후의 사용연도와 정비비용", cex.main=2, col.main="red") 
abline(st_factory.lm, col="red")
summary(st_factory.lm)
detach(st_fdata)
predict(st_factory.lm, newdata=data.frame(st_age=4) )



# Orange 데이터셋 : 각 나무의 종류, 나무의 나이, 나무 둘레 길이에 대한 35개의 관측값으로 구성 
head(Orange)
data(Orange)
head(Orange)
model <- lm(circumference ~ age, Orange) 
model
# 회귀 계수만 출력
coef(model)
# 잔차 추출
r <- residuals(model)
r[1:4] 

# 모델을 적용하여 예측값 구하기
f <- fitted(model) # predict()
r <- residuals(model)

# 예측 데이터값 + 잔차
f[1:4] + r[1:4] 
# 실제 데이터값
Orange[1:4,'circumference'] 



# 생성된 모델로 지정된 독립변수 값에 대한 종속변수 값 예측하기
predict.lm(model, newdata = data.frame(age = 100))


# 결정계수는 상관계수의 제곱
summary(model)
cor(Orange$circumference, Orange$age)
cor(Orange$circumference, Orange$age) ^ 2


# 단순회귀 모델의 시각화
plot(Orange$age, Orange$circumference)
abline(coef(model))
