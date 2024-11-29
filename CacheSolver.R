cacheSolve <- function(x, ...) {
    inv <- x$getinverse()  # Get the cached inverse
    if(!is.null(inv)) {
        message("getting cached data")  # If the inverse is cached, return it
        return(inv)
    }
    data <- x$get()  # Get the matrix
    inv <- solve(data, ...)  # Compute the inverse of the matrix
    x$setinverse(inv)  # Cache the computed inverse
    inv  # Return the inverse
}
