## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    ## x is a square invertable matrix
    ## we set , get, matrix then set, get, the inverse of the matrix.
    matr = NULL
    set = function(y) {
        
        x <<- y ##<<- is to place an assignment of a value to an object in the environment.
        matr <<- NULL
    }
    
    get = function() x
    setinverse = function(inverse) matr <<- inverse
    getinverse= function() matr
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        ## Also returns the inverse of the original matrix input to makeCacheMatrix()
        matr = x$getinverse()
        
        
        if (!is.null(matr)){## this portion is for the instance that the inverse was already commited.
            
            
            return(matr)
        }
        ## if not then the rest of the code continues to process the inverse in the cache
        data  <- x$get()
        matr <- solve(data, ...)
        
        x$setinverse(matr)
        
        return(matr)

}
