

airquality<-datasets::airquality

###Top 10 rows and last10 rows
head(airquality,10)
tail(airquality,10)

###Columns
airquality[,c(1,2)]
df<-airquality[,-6]
summary(airquality[,1])
summary(airquality[,3])
summary(airquality)
####Rows#####
summary(airquality[6,])
summary(airquality[3,])
summary(airquality[c(1,3),])
summary(airquality)

####summary of data####
airquality$Temp
summary(airquality)
summary(airquality$Wind)

### Plots with points,line and both or o ####
plot(airquality$Temp, airquality$Wind,type="o")
plot(airquality$Wind,type="o")
plot(airquality$Temp,type="o")
plot(airquality)
plot(airquality$Ozone,ylab='ozone concentration',type="o" , xlab='number of instances', main='Ozone levels in NY city', col='red')

### Horizontal bar plot ####

barplot(airquality$Ozone, main='Ozone concentration in air',ylab='Ozone levels',col='red', horiz=T,axes=T)
barplot(airquality$Ozone, main='Ozone concentration in air',ylab='Ozone levels',col='red',horiz=F, axes=T)
barplot(airquality$Ozone, main='Ozone concentration in air',ylab='Ozone levels',col='red',horiz=F,axes=F)
barplot(airquality$Ozone, main='Ozone concentration in air',ylab='Ozone levels',col='red',horiz=T,axes=F)

#Histogram Plot#
hist(airquality$Temp,col='violet')
hist(airquality$Wind), col='blue'
hist(airquality$Solar.R, main='solar radiation values in air',col='purple',xlab='solar rad')

## Single Box Plot ##

boxplot(airquality$Temp,main="temp_boxplot", col='violet')
boxplot(airquality$Wind,main="wind_boxplot", col='blue')
boxplot(airquality$Ozone,main="ozone_boxplot", col='red')
boxplot(airquality$Solar.R,main="solarrad_boxplot", col='purple')

## Multiple boxplots ##

boxplot(airquality, main='multiple box plots')
boxplot(airquality[,0:3], main='multiple box plots')
boxplot(airquality[,0:5], main='multiple box plots')

# Margin of the grid (mar), 
# No of rows and columns(mfrow),
# Whether a border is to be included (bty)
# Position of the labels (las:1 for horizontal, las:0 for vertical)
# bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(airquality$Ozone)    
plot(airquality$Ozone, airquality$Wind) 
plot(airquality$Solar.R, type = "l") 
plot(airquality$Wind, type = "o") 
plot(airquality$Temp, type = "b") 
barplot(airquality$Ozone, main='Ozone concentration in air',xlab='Ozone levels',col='red', horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:2], main='multiple')


