## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y)
  {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(temp) inv <<- temp
  getinv <- function() inv
  list(set= set,
       get= get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- l$getinv()
  if(!is.null(i))
  {
    message("Extracting inverse matrix from cache....")
    return(i)
  }
  m <- l$get()
  i <- solve(m)
  l$setinv(i)
  i
}
