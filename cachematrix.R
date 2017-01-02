## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	ix <- NULL 
	set <- function(y) { 
		x <<- y 
		ix <<- NULL 
	} 
	get <- function() x  
	setInverse <- function(inverse) ix <<- inverse
	getInverse <- function() ix 
	list(set = set, get = get, 
	setInverse = setInverse, 
	getInverse = getInverse) 

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
       	ix <- x$getInverse()
        if(!is.null(ix)) {
                message("getting cached inverse")
                return(ix)
        }
        data <- x$get()
        ix <- solve(data, ...)
        x$setInverse(ix)
        ix
}
