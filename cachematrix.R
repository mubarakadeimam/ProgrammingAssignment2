## Put comments here that give an overall description of what your
## functions do

##  set the value of the matrix
##  get the value of the matrix
##  set the value of the matrix inverse
##  get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y) {
        x <<- y
        m <<- NULL
      }
      get <- function() x #gets the value of the input matrix
      setinv <- function(solve) m <<- solve #calculates the matrix inverse
      getinv <- function() m #gets the inverse of the input matrix
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## It takes 


cacheSolve <- function(x, ...) {
        
        m <- x$getinv()
        if(!is.null(m)) {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        
        m
}