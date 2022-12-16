## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL               ##create an empty object for the inverse
      set <- function(y) {
              x <<- y
              inv <<- NULL
      }
      get <- function() x       ##get the generated matrix data    
      setinverse <- function(inverse) inv <<- inverse
      getinverse <- function() {
              inver <- ginv(x)  ##invert x
              inver%*%x	        ##inverted x*x (X'X)
      }
      list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
        inv <- x$getinverse()     ##inverse of matrix x
        if(!is.null(inv)) {       ##return only if not empty
      	message("...inverting your matrix")
                return(inv)
        }
        data <- x$get()           ##Get inputted data
        inv <- solve(data, ...)   ##Calculate inverse values
        x$setinverse(m)
        inv                       ##output inverted matrix
}
