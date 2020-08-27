my_vector<-c(12,20,35)

vect_x<-c (2,0,0,4)
vect_y<-c(1,9,9,9)

# Adding the vector
vect_x + vect_y
vect_add<-vect_x+vect_y

#Multiplying vector with some scalar
vect_x*48
vect_y*22

#Accessing the elements of the vector 
vect_x[1]
vect_y[4]

# Replacement of index
vect_x[2]<-6
vect_y[4]<-0

## New Data ###

vect_char <- c('R', 'python', 'java', "10","11","20")

df<-data.frame (x=c(1,2,3), y=c("a", "b", "c"))
df[1,2]
df[1,1]
df[1,c(1,2)]
df[c(1,3),c(1,2)]