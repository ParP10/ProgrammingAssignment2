## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Create cache inverse matrix
makeCacheMatrix <- function(x = matrix()) {
  # result
  inverseM <- NULL
  #set new matrix
  set <- function(y) {
    x <<- y
    inverseM <<- NULL
  }
  # getMatrix
  get <- function() x
  #set inverse matrix
  setInverseM <- function(inverseMatrix) iverseM <<- inverseMatrix
  #get inverse matrix
  getInverseM <- function() inverseM
  # return list of functions
  list(set = set, get = get,
       setInverseM = setInverseM,
       getInverseM = getInverseM)

}


## Write a short comment describing this function

## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  # set current value of inverse matrix to variable inverseM
  inverseM <- x$getInverseM()
  # if current value is not null, return it
  if(!is.null(inverseM)) {
    message("getting cached data")
    return(inverseM)
  }
  #if current value is null, compute value of inverse matrix
  data <- x$get()
  inverseM <- solve(data, ...)
  x$setInverseM(inverseM)
  # return value of inverse matrix
  inverseM
}
