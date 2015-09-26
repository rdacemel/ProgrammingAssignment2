## Put comments here that give an overall description of what your
## functions do
#This two functions work together to calculate the inverse of a given matrix just once and store the result. If the inverse matrix is further required they would just return the
#stored matrix avoiding repetitive calculations and therefore saving computational time.

## Write a short comment describing this function
#The function makeCacheMatrix gets a matrix as unique argument and returns a list of three functions that work specifically for the given matrix. The first one just returns the matrix, 
#the second cache the value of the inverse matrix in the global environment, and the third returns either the cached inverse matrix or NULL in case the inverse doesn't exists yet.

makeCacheMatrix <- function(x = matrix()) { 
  matinv <<- NULL
  getmatrix <- function() x
  setinverse <- function(inv) matinv <<- inv
  getinverse <- function() matinv
  
  return(list(getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse))
  
}


## Write a short comment describing this function
#This function gets the list of three functions returned by makeCacheMatrix. Then, it uses them to return the cached inverse matrix if available and if not 
#it calculates it,save it on the global environment and returns it.


cacheSolve <- function(x, ...) {
    
  if(!is.null(x$getinverse())){
    message("Inverse matrix in cache, returning...")
    return(x$getinverse())
  }
  
  x$setinverse((solve(x$getmatrix())))
  x$getinverse()
  
}
