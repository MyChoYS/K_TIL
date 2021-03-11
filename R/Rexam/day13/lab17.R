library(dplyr)
library(ggplot2)
#문제1
#1-1
mpg %>% str

#1-2
mpg %>% dim

#1-3
mpg %>% head(10)

#1-4
mpg %>% tail(10)

#1-5
mpg %>% View

#1-6
mpg %>% summary

#1-7
mpg %>% group_by(manufacturer) %>% count

#1-8
mpg %>% group_by(manufacturer,model) %>% count

#문제2
#2-1
mpg -> mpg1
mpg1 %>% rename(city=cty,highway=hwy) -> mpg1

#2-2
mpg1 %>% head

#문제3
View(midwest)
#3-1
midwest %>% str

#3-2
midwest %>% rename(total = poptotal, asian = popasian) -> midwest1

#3-3
midwest1 %>% mutate(pasian = asian/total) -> midwest1

#3-4
midwest1 %>% mutate(test = ifelse(pasian > mean(pasian), "large", "small")) -> midwest1
View(midwest1)

#문제4
#4-1
mpg %>% filter(displ <= 4) %>% summarise(mean_hwy = mean(hwy))
mpg %>% filter(displ >= 5) %>% summarise(mean_hwy = mean(hwy))

mpg %>% group_by(displ <=4,displ>=5) %>%summarise(mean = mean(hwy)) #4이하, 5이상, 4~5사이 3개 

#4-2
mpg %>% group_by(manufacturer) %>% filter(manufacturer == "audi" | manufacturer == "toyota" ) %>% summarise(mean_hwy = mean(cty))

#4-3
mpg %>% group_by(manufacturer) %>% 
  filter(manufacturer == "chevrolet" | manufacturer == "ford" | manufacturer == "honda") %>% 
  summarise(mean_hwy = mean(hwy))

#문제5
#5-1
mpg %>% select(class,cty) -> mpg_class
View(mpg_class)

#5-2
mpg_class %>% filter(class == "suv" | class == "compact") %>% group_by(class) %>% summarise(mean_cty = mean(cty))

#문제6
mpg %>% filter(manufacturer=="audi") %>% group_by(model)  %>% arrange(desc(hwy)) %>% head(5)

mpg %>% filter(manufacturer=="audi") %>% group_by(model) %>% summarise(mean_hwy = mean(hwy))










