## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the nested 4 functions used to set matrix, get matrix, 
## set inverse matrix, get inverse matrix
## finally return these 4 functions
makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y 
    m<<-NULL
  }
  get<-function() x
  setInverse<-function(solve) m<<-solve
  getInverse<-function() m
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
## get the inverse matrix and test it
cacheSolve <- function(x, ...) {
  m <- x$getInverse()
  if(!is.null(m)){
    message("TO cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setInverse(m)
  m
  ## Return a matrix that is the inverse of 'x'
}
