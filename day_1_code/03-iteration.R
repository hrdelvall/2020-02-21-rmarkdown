f_values <- c(0, 32, 212, -40)

f_values*10

f_values*c(10, 100)


f_k<-function(f_temp) {
  converted<-((f_temp-32)) * (5/9) +273.15
  return(converted)
}

f_values*10

for (x in f_values) {
  print(x*10)
}


for (pizza in f_values) {
  print(f_k(pizza))
}

library(purrr)

converted<- purrr::map(f_values, f_k)
converted

class(converted)

purrr::map_dbl(f_values,f_k)

purrr::map(mtcars, class)
purrr::map(mtcars, summary)

# apply, lapply, sapply, vapply

lapply(mtcars, f_c)

purrr::map_dbl(mtcars,mean)
sapply(mtcars, mean)
vapply(mtcars, mean, numeric(1))

#mean of every column in mtcars
purrr::map_dbl(mtcars,mean)
# determine the type of each column in nycflights13::flights
library(nycflights13)
flights
purrr::map(flights,class)
# compute the number of unique values in each column of iris
iris
num_unique<-function(x) {
  return(length(unique(x)))
}
purrr::map_dbl(iris,num_unique)
purrr::map_dbl(iris, function(x){length(unique(x))})
purrr::map_dbl(iris, ~length(unique(.)))

# generate 10 random normals from distributions with means of -10,0,10, and 100
rnorm(10,-10)
rnorm(10,10)
purrr::map(c(-10,0,10,100), ~rnorm(n=10,mean= .))


library(purrr)
safe_log<-safely(log)
log(10)
safe_log("a")

x<- list(1,10,"a")
y<-x%>% map(safe_log)

y%>% transpose()
flipped_results<- y%>% transpose()
flipped_results$result


mu<-list(5,10,-3)
map(mu,rnorm,n=5)

sigma<-list(1,5,10)
map2(mu,sigma,rnorm,n=5)

n<-list(1,3,5)

args<-list( mean = mu,sd = sigma,n = n)

pmap(args, rnorm)
