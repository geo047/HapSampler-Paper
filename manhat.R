# generate plot for paper - figure 1  
# manhattan plot  example
library(ggplot2)
library(ggthemes)

set.seed(101)
u <- runif(n=2000, min=0.02, max=0.95)




v <- c( seq(0.0001,0.001, 0.0001), 0.2, 0.00000000001, 0.1, 0.0000000001, 0.000000001,0.0000001, 0.0000002,0.0000005, 
       0.000001, 0.00001, 0.0001, 0.1, 0.1, seq(0.0001, 0.1,  0.005) )

x <- c(u[1:500],v,u[500:2000])

df <- data.frame(x=c(1:length(x)), y=-log10(x))



p <- ggplot(df, aes(x=x/10, y=y)) + geom_point()   + xlab("map position") + 
            ylab(expression(-log[10]("p-value"))) 
  #  p + theme_gdocs()
  # p + theme_par()
  p + theme_solarized() +   theme(aspect.ratio=1) + theme(text = element_text(size=20))
  