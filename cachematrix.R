
## Put comments here that give an overall description of what your
## functions do
## Function is designed to create special "matrix" object that can cache its inverse for that matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
    invr <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invr <<- inverse
  getinverse <- function() invr
  list(set=set, get=get, setinverse=setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
##Function will take the inverse of the cached special "matrix" identified with the funciton above. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  invr <= x$getinverse()
  if(!is.null(invr)) {
    message("Getting Cached Data")
    return(invr)
  }
  
  mat <- x$get()
  invr <- solve(mat, ...)
  x$setinverse(invr)
  invr
}


