### How to write a function in R ####
 
# # Form of a function
# function_name <- function(inputs) {
#   output_value <- do_somthing(inputs)
#   return(output_value)
# }


calc_shrub_vol <- function(length, width, height) {
  area <- length * width
  volume <- area * height 
  return(volume)
}

calc_shrub_vol(0.8, 2, 6)

calc_shrub_vol <- function(length, width, height = 1) {
  area <- length * width
  volume <- area * height 
  return(volume)
}

calc_shrub_vol(1.3, 6) ##can run with two values by defining height = 1
calc_shrub_vol(1.3, 6, 3) ##can override hight = 1 and still run with three values
calc_shrub_vol(1.3, 6, height = 3) ##can also call the names of the variables within the function

#### How to use if statements in R ####

# Form of an if statement 
# if (the conditional statement is TRUE ) {
#   do something
# }

##if statement example 1
x <- 6 
if(x > 5) {
  print(x)
}

##if statment example 2
if(!file.exists("data/file1.csv")){
  download.url("http://data.com")
}

##if, else if, and else statement
if(x > 5) {
  print(x)
} else if(x < 5 & x > 1) {
  print("somewhat small")
} else {
  print("way too small")
}

##ifelse statement
ifelse(x==5, "yes", "no")

case_when()