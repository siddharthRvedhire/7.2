#Assignment7.2_Session7

#Problem 1
#1. Write a program to create barplots for all the categorical columns in mtcars.

#Answer 1

#I found this cyl,carb,gear,am,vs etc variable as categorical in mtcars dataset
#hence plotting this!!

counts<- table(mtcars$cyl)
barplot(counts ,main ="bar plot of cyl",xlab="cyl",ylab = "counts",col="blue")
counts<- table(mtcars$carb)
barplot(counts ,main ="bar plot of carb",xlab="carb",ylab = "counts",col="pink")
counts<- table(mtcars$gear)
barplot(counts ,main ="bar plot of gear",xlab="gear",ylab = "counts",col="yellow")
counts<- table(mtcars$am)
barplot(counts ,main ="bar plot of am",xlab="am",ylab = "counts",col="red")
counts<- table(mtcars$vs)
barplot(counts ,main ="bar plot of vs",xlab="vs",ylab = "counts",col="green")


#Problem 2
#2. Create a scatterplot matrix by gear types in mtcars dataset.

#Answer 2

#scatter plot for dataset mtcars
library(ggplot2)
library(car)

#I'm plotting some variables only but we can plot through others mtcars dataset also say wt,qsec etc
scatterplotMatrix(~mpg+disp+drat+hp|gear,data=mtcars,
                  main="Three Gear Options")


#Problem 3
#3. Write a program to create a plot density by class variable.

#Answer 3

#As known as Kernel Density Plots, Density Trace Graph. 
#A Density Plot visualises the distribution of data over a continuous interval 
#or time period. This chart is a variation of a Histogram that uses kernel smoothing to 
#plot values, allowing for smoother distributions by smoothing out the noise.

#Density plots are similar to histograms on a density scale, 
#but instead of fixed bins or intervals with jumps at the boundaries, 
#are smooth. The argument adjust to geom_density regulates how
#smooth the density estimate is, with larger values resulting in smoother graphs.


#****Note****
#as per concerning to acadgild support about the issue that there is no class variable 
#i find in mtcars dataset so that unable to plot through mtcars dataset
#however i find other variable other than class variables in mtcars dataset hence i'm plotting that here

class(mtcars)

#plot density of mpg variable
d<- density(mtcars$mpg)
plot(d, main="kernel density of mpg")
polygon(d,col="blue",border ="black")

#plot density of disp variable
c<- density(mtcars$disp)
plot(c, main="kernel density of disp")
polygon(c,col="green",border ="red")