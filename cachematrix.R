## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Initial step to calculate Cache Matrix
##1.  set the value of the matrix
##2.  get the value of the matrix
##3.  set the value of the inverse of matrix
##4.  get the value of the inverse of matrix


makeCacheMatrix <- function(x = matrix()) {
  inversx <- NULL
  set <- function(y){
    x <<-y
    inversx <<- NULL
  }
  get <- function() x
  setinversx <- function(solve) inversx <<-solve
  getinversx <- function() inversx
  list(set = set,get = get,setinversx = setinversx,getinversx = getinversx)

}


## Write a short comment describing this function
##The following function first checks if the inverse is already calculated
##or not if it is it displays the result or else claculates and displays
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      inversx <- x$getinversx()
      if(!is.null(inversx)) {
        message("getting cached data")
        return(inversx)
      }
      data <- x$get()
      inversx <- solve(data)
      x$setmean(inversx)
      inversx
      
}
