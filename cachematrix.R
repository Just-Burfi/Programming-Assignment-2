# Programming-Assignment-2
## makeCacheMatrix creates a list with 4 functions analogous to the Assignment 2 Example
## it can cache a matrix inverse
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get, 
       setinv = setinv, getinv = getinv)
}


## cacheInv retrieves a cached matrix inverse if it has already been calculated
## else, it calculates it 

cacheInv <- function(x, ...) {
  m <- x$getinv()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinv(m)
  m
        ## Return a matrix that is the inverse of 'x'
  
}
