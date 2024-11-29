#makeCacheMatrix
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL  # Initialize the inverse to NULL
    set <- function(y) {
        x <<- y  # Set the matrix
        inv <<- NULL  # Reset the cached inverse
    }
    get <- function() x  # Get the matrix
    setinverse <- function(inverse) inv <<- inverse  # Set the inverse in cache
    getinverse <- function() inv  # Get the cached inverse
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  # Return the list with functions
}
