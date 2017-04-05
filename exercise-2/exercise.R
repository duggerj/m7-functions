# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2){
  return(cat("The difference in length is ", abs((length(v1) - length(v2)))))
}

# Pass two vectors of different length to your `CompareLength` function
vectorShort <- c(1,2,3,4,5)
vectorLong <- c(1,2,3,4,5,6,7,8,9,10)
CompareLength(v1,v2)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1,v2){
  if (length(v1) > length(v2)){
    return(cat("Your first vector is longer by ", abs((length(v1) - length(v2))), " elements"))
  } else if (length(v2) > length(v1)){
    return(cat("Your second vector is longer by ", abs((length(v1) - length(v2))), " elements"))
  } else{
    return("Your vectors are the same length")
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(v1,v2)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(v1,v2){
  if (length(v1) > length(v2)){
    return(cat(deparse(substitute(v1))," is longer by ", abs((length(v1) - length(v2))), " elements"))
  } else if (length(v2) > length(v1)){
    return(cat(deparse(substitute(v2))," is longer by ", abs((length(v1) - length(v2))), " elements"))
  } else{
    return("Your vectors are the same length")
  }
}


