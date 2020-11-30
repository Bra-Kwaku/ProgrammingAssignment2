## Put comments here that give an overall description of what your
## functions do

## A pair of function that caches the inverse of a matrix
## ## This function will create a special matrix object that cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
get <- function()x
setInverse <- function(solveMatrix) inv <<- solveMatrix
list(set = set, get, setInverse = setInverse, getInverse = getInverse)
}


  ## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
  cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(!is.null(inv)){
      message("getting cached data")
      return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setInverse(inv)
    inv      
}
