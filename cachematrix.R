## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix and cacheSolve are a combination of functions which help us
## to save computation cost

## Write a short comment describing this function

## This function creates a list to cache the inverse of our original Matrix 

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
      x <<- y
      m <- NULL
  }
  get <- function() x 
  setInvMatrix <- function(solve) m <<- solve
  getInvMatrix <- function() m 
  list(set = set, get = get,
       setInvMatrix = setInvMatrix,
       getInvMatrix = getInvMatrix)
}

## Write a short comment describing this function

## This function computes the inverse Matrix of makeCacheMatrix argument
## If the Inverse has already been compute the CacheSove retrive the result

cacheSolve <- function(x, ...) {
  m <- x$getInvMatrix()
  if(!is.null(m)){
    message("getting cache data")
    return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setInvMatrix(m)
  m
}
