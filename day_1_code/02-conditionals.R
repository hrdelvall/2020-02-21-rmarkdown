f_k<-function(f_temp) {
  converted<-((f_temp-32)) * (5/9) +273.15
  return(converted)
}
  
k_c<- function(k_temp) {
  return(k_temp-273.15)
}
  
f_c<- function(f_temp) {
  k_temp<-f_k(f_temp)
  temp_c<-k_c(k_temp)
  return(temp_c)
}

k_c<- function(k_temp) {
        if(k_temp<0) {
          warning("you passed in a negative kelvin number")
          return(NA)
        } else {
          return(k_temp-273.15)
        }
}


k_c(NA)

k_c<- function(k_temp) {
  if(is.na(k_temp)) {
    return(NA)
  } else if (k_temp<0) {
    warning("you passed in a negative kelvin number")
    return(NA)
  } else {
    return(k_temp -273.15)
  }
}


k_c(1:10)

if(all(c(TRUE, TRUE, FALSE))) {
  print("hello")
}

c(TRUE, FALSE) && c(TRUE, FALSE)

identical(c(TRUE, FALSE),c(TRUE, FALSE))
identical(0,0L)

# & |
# && ||

#write a function
# takes a single value
# divisable by 3: "fizz"
# divisable by 5: "buzz"
# divisable by 3 and 5: "fizzbuzz"
# otherwise NA # returns value back as character

fizzbuzz<-function(x) {
  if((x%%3)==0  & (x%%5) ==0) {
    return("fizzbuzz")
  } else if(( x%%3 )==0) {
    return("fizz")
  } else if(( x%%5) ==0) {
    return("buzz") 
  } else {
    return(as.character(x))
  }
}



fizzbuzz(6)
fizzbuzz(5)
fizzbuzz(20)
fizzbuzz(15)
fizzbuzz(7)

fizzbuzz_vec<-function(x) {
  dplyr :: case_when(
    (x%%3) ==0 & (x%%5) == 0~ "fizzbuzz",
    (x%%3) ==0 ~ "fizz",
    (x%%5) ==0 ~"buzz",
    TRUE ~ as.character(x)
  )
}


calc_op<-function(x,y, op) {
  switch(op,
         plus = x+y,
         minus = x-y,
         stop("Unknown op!")
    )
}  

calc_op(10, 100, "plus")
  
  
  
  