sdfsdfadfadf

#這是註解
3 + 3

demo(graphics)

# 數字相加
3 + 8

# 數字相減
3 - 8

# 數字相乘
5 * 5

# 數字相除
11 / 2

# 指數
2^10

# 取餘數
11%%2

# 指定變數
a = 3
a

# 變數相加
b = 5
c = a + b
c


card_length = 3
card_width = "5 inches"
card_length * card_width
Error in card_length * card_width : 
  non-numeric argument to binary operator

#重新將card_width 指到5  
> card_width = 5
> card_length * card_width



# 數值型態
numer = 42.5

# 字串型態
char = "some text"

# 布林邏輯
logic = TRUE

# 使用class 檢查資料型態
class(logic)


# 不同型態的向量
height_vec = c(180,169,173)
name_vec = c("Brian", "Toby", "Sherry")

# 兩個向量進行數學運算
x = c(1,2,3,7) 
y= c(2,3,5,1)

x+y 
x*y
x – y 
x/y


height_vec = c(180,169,173)
height_vec

names(height_vec) = c("Brian", "Toby", "Sherry")
height_vec

name_vec = c("Brian", "Toby", "Sherry")
names(height_vec) = name_vec


height_vec > 175
height_vec < 175
height_vec >= 175
height_vec <= 175
height_vec == 180
height_vec != 180


x = 1:20
x

y = seq(1,20)
y

?seq
help(seq)

seq(1,20,2)
seq(1,3.5, by =0.5)
seq(1,10,length=2)

# 透過sum 將向量資料作加總
x = c(1,2,3,7) 
sum(x)

> ?sum
> help(sum)


rep(c(5,8),3)


rep(c(1,2), each=2)
rep_len(c(1,2), 5)
[1] 1 2 1 2 1

vector("numeric", length = 10)
vector("character", length = 10) 
vector("logical", length = 10) 


matrix(1:9, byrow=TRUE, nrow=3)
matrix(1:9, nrow=3)


kevin = c(85,73)
marry = c(72,64)
jerry = c(59,66)

mat = matrix(c(kevin, marry, jerry), nrow=3, byrow= TRUE)

colnames(mat) = c('first', 'second')
rownames(mat) = c('kevin', 'marry', 'jerry')


mat2 = matrix(c(kevin, marry, jerry), nrow=3, byrow=TRUE, 
dimnames=list(c('kevin', 'marry', 'jerry'),c('first', 'second')))

rowSums(mat2)
colSums(mat2)


mat3 = rbind(mat2, c(78,63))
rownames(mat3)[nrow(mat3)] = 'sam'
mat3

mat4 = cbind(mat2,c(82,77,70))
colnames(mat4)[ncol(mat4)] = 'third'
mat4


m1 = matrix(1:4, byrow=TRUE, nrow=2)
m2 = matrix(5:8, byrow=TRUE, nrow=2)
m1 + m2
m1 - m2
m1 * m2
m1 / m2

m1 %*% m2

t(m1)
t(m2)

mat2[1,] 
mat2[,1]
mat2[2:3,]
mat2[2,1]


dim(mat2)
nrow(mat2)
ncol(mat2)


weather_category

weather= c("sunny","rainy", "cloudy", "rainy", "cloudy")
weather_category = factor(weather)
weather_category


temperature = c("Low", "High", "High", "Medium", "Low", "Medium")
temperature_category = factor(temperature, order = TRUE, levels = c("Low", 
    "Medium", "High"))
temperature_category
temperature_category[3] > temperature_category[1]
temperature_category[4] > temperature_category[3]

levels(weather_category)
levels(temperature_category)


weather= c("s","r", "c", "r", "c")
weather_factor = factor(weather)
levels(weather_factor) = c("cloudy","rainy","sunny")
weather_factor

air_class = c("business", "economy", "first", "economy", "first")
df = data.frame(a=c(1,2,3,4,5),b=c(2,3,4,5,6))
df

data()
data(iris)

class(iris)
head(iris)
head(iris, 10)

tail(iris)
tail(iris, 10)

str(iris)

iris[1:3,]
iris[1:3,1]
iris[1:3,"Sepal.Length"]
head(iris[,1:2])

iris$"Sepal.Length"

Five.Sepal.iris = iris[1:5, c("Sepal.Length", "Sepal.Width")]
setosa.data = iris[iris$Species=="setosa",1:5]
which(iris$Species=="setosa")

Sepal.data = subset(iris, select=c("Sepal.Length", "Sepal.Width")
setosa.data = subset(iris, Species =="setosa")
example.data= subset(iris, Petal.Length <=1.4 & Petal.Width >= 0.2, select=Species )

flower.type = data.frame(Species = "setosa", Flower = "iris")
merge(flower.type, iris[1:3,], by ="Species")

iris[order(iris$Sepal.Length, decreasing = TRUE),]
item = list(thing="hat", size="8.25") 
item

test = list(name="Toby", score = c(87,57,72)) 
test$score
test$score[2]

flower= list(title="iris dataset", data= iris)
str(flower)
flower$data[1,"Sepal.Width"]

x = 5;
if(x > 3){ 
    print("x > 3");
} else if(x ==3){
    print("x == 3");
}else{
    print("x < 3");
}
sum = 0
for(i in 1:100){
     sum = sum + i;
}
sum



x <- c("sunny","rainy", "cloudy", "rainy", "cloudy")
for(i in 1:length(x)) {
 print(x[i])
}
for(i in seq_along(x)) {
 print(x[i])
}
for(letter in x) {
 print(letter)
}
for(i in 1:length(x)) print(x[i])

mat = matrix(1:9, byrow=TRUE, nrow=3)
for(i in seq_len(nrow(mat))) {
 for(j in seq_len(ncol(mat))) {
 print(mat[i, j])
 } 
}

sum = 0;
cnt = 0;
while(cnt < 100){
	sum = sum + cnt;
	cnt = cnt + 1;
}
sum	

sum = 0;
cnt = 0;
while(cnt <= 100){
    sum = sum + cnt;
    cnt = cnt + 1;
}
sum


sum = 0;
cnt = 0;
repeat{
	cnt = cnt + 1;
	if(cnt > 100) break;
	sum = sum + cnt;
}
sum;	

f <- function(<arguments>) {

}

f <- function(a, b) {
   a * 2
}
f(2)


f = function(a, b) {
     print(a+ b)
}
f(3)


f = function(a, b = 2, c = NULL) {
}



install.packages("plyr") 
library(plyr)
head(iris)
ddply(iris, c("Species"), function(df) mean(df$Sepal.Length))


library(reshape)
iris.melt <- melt(iris,id='Species')
cast(Species~variable,data=iris.melt,mean,
     subset=Species %in% c('setosa','versicolor'),
     margins='grand_row') 

     aggregate(x=iris[,1:4],by=list(iris$Species),FUN=mean)
     
     
test.data = read.table(header = TRUE, text = "
+ a b
+ 1 2
+ 3 4
+ ")
class(test.data)

write.table(test.data, file = "test.txt" , sep = " ")
write.csv(test.data, file = "test.csv")

觀看套件文件
help(package ="e1071")
?e1071::svm

help.search(“svm”)


觀看範例
demo()
q()
ls()
rm()

