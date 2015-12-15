## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    CacheInverse <- NULL
    set <- function(y) {
        x <<- y
        CacheInverse <<- NULL
    }
    get <- function() x
    setInverse <- function(inverse) CacheInverse <<- inverse
    getInverse <- function() CacheInverse
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    invFun <- x$getInverse()
    if(!is.null(invFun)) {
        message("getting cached data")
        return(invFun)
    }
    data <- x$get()
    invFun <- solve(data)
    x$setInverse(invFun)
    invFun
}
