#Creating the predictor vector, x. 
#This vector stores the heights of persons 
x <- c(152,175,139,187,129,137,180,162,151,130)


#Creating the response vector, y. 
#This vector stores the weights of persons.
y <- c(62,80,55,90,48,56,75,73,63,49)


#Applying the lm function
relation <- lm(y~x)


#Printing the relation model
print(relation)


#Printing the summary of the relationship
print(summary(relation))


#Finding the weights of the person
a <- data.frame(x=170)
result <- predict(relation,a)
print(result)


#Visualising the regression graphically by plotting a chart
#abline function is used for drawing a population/sample regression line
#cex arguement is for indicating the amount by which plotting text and symbols should be scaled relative to the default.
#pch arguement is to specify symbols to use when plotting points. 
plot(y,x,col="blue",main="Height & Weight Regression",abline(lm(x~y)),cex=.3,pch=15,xlab="Weights in Kg",ylab="Height in cm")
