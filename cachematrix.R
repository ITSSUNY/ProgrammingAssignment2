## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  inverseM <- NULL
  set <- function(y) {
    x <<- y
    inverseM <<- NULL
  }
  get <- function() x
  setinverse <- function(inverseMatrix) inverseM <<- inverseMatrix
  getinverse <- function() inverseM
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
  
}
 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverseM <- x$getinverse()
  if(!is.null(inverseM)) {
    message("getting cached data")
    return(inverseM)
  }
  data <- x$get()
  inverseM <- solve(data, ...)
  x$setinverse(inverseM)
  inverseM  
}

##usage_________
##a <- c(2,1)
##b <- c(5,3)
##xyz <- rbind(a,b)
##mm <- makeCacheMatrix(xyz)
##cacheSolve(mm)
