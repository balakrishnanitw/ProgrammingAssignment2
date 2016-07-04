## Put comments here that give an overall description of what your
makeCacheMatrix <- function(x = matrix()) {

         # holds the cached value or NULL if nothing is cached
           
          cache <- NULL
          
        # store a matrix
          setMatrix <- function(newValue) {
                x <<- newValue
                # since the matrix is assigned a new value, flush the cache
                cache <<- NULL
         }
      
        # returns the stored matrix
          getMatrix <- function() {
                         x
         }
        
       # cache the given argument 
          cacheInverse <- function(solve) {
          cache <<- solve
         }
          
      # get the cached value
         getInverse <- function() {
          cache
         }
                  
     # return a list. Each named element of the list is a function
       list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
         }

  
  # The following function calculates the inverse of a "special" matrix created with 
  # makeCacheMatrix
  cacheSolve <- function(y, ...) {
         # get the cached value
          inverse <- y$getInverse()
         # if a cached value exists return it
                
           }
