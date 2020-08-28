library(moments) # To import moments library to calculate skewness and kurtosis

e_quakes<-datasets::quakes

###Top 25 rows and last 15rows
head(e_quakes,25)
tail(e_quakes,15)

###Columns
e_quakes[,c(2,4)]
df<-e_quakes[,-5]
summary(e_quakes[,2])
summary(e_quakes[,5])
summary(e_quakes)
####Rows#####
summary(e_quakes[6,])
summary(e_quakes[3,])
summary(e_quakes[c(1,3),])
summary(e_quakes)


# To get skewness
skewness(e_quakes$long)
skewness(e_quakes$lat)
skewness(e_quakes$depth)
skewness(e_quakes$mag)
skewness(e_quakes$stations)
skewness(e_quakes)

# To get Kurtosis
kurtosis(e_quakes$long)
kurtosis(e_quakes$lat)
kurtosis(e_quakes$depth)
kurtosis(e_quakes$mag)
kurtosis(e_quakes$stations)
kurtosis(e_quakes)

#Measures of Dispersion
var(e_quakes$long)
var(e_quakes$lat)
var(e_quakes$depth)
var(e_quakes$mag)
var(e_quakes$stations)

sd(e_quakes$long)
sd(e_quakes$depth)
sd(e_quakes$mag)
sd(e_quakes$stations)
sd(e_quakes$lat)
summary(e_quakes)

# To Create plots
plot(e_quakes$depth)
plot(e_quakes$long)
plot(e_quakes$lat)
plot(e_quakes$depth,e_quakes$long,type="p")
plot(e_quakes$depth,e_quakes$lat,type="p")
plot(e_quakes$long,e_quakes$lat,type="p")
plot(e_quakes)

# Horizontal bar plot
barplot(e_quakes$depth, main = 'Depth visualization',
        ylab = 'Depth levels', col= 'blue',horiz = F,axes=T)
barplot(e_quakes$lat, main = 'lat visualization',
        ylab = 'lat details', col= 'blue',horiz = T,axes=F)
barplot(e_quakes$mag, main = 'mag visualization',
        ylab = 'mag details', col= 'blue',horiz = T,axes=T)

#Histogram 
hist(e_quakes$long)
hist(e_quakes$lat)
hist(e_quakes$depth)
hist(e_quakes$mag)
hist(e_quakes$stations)
hist(e_quakes$long, main = 'Long Visializtion',
     xlab = 'Long Details.', col='blue')
hist(e_quakes$depth, main = 'depth Visualiztion',
     xlab = 'Depth information.', col='blue')

#Single box plot
boxplot(e_quakes$long,main="Longitude Box Plot")
boxplot(e_quakes$lat,main="Latitude Box Plot")
boxplot(e_quakes$depth,main="Depth Box Plot")
boxplot(e_quakes$mag,main="Magnitude Box Plot")

# Multiple box plots
boxplot(e_quakes,main='Multiple')

barplot(e_quakes$depth, main = 'depth visualisation',
        xlab = 'depth level', col='green',horiz = TRUE)

