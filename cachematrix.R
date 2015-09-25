## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
  INVMAT <- NULL
  getmatrix <- function() x
  setinverse <- function(inv) INVMAT <<- inv
  getinverse <- function() INVMAT
  
  return(list(getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse))
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
  if(!is.null(x$getinverse())){
    message("Inverse matrix in cache, returning...")
    return(INVMAT)
  }
  
  x$setinverse(solve(x$getmatrix()))
  INVMAT
  
}
