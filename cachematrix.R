## Builds a set of functions (get(), set(), setinverse(), and getinerese()) 
## and returns the functions within a list to the parent environment.
## 1. Intializing objects x and i
## 2. Defining the functions of get(), set(), setinverse(), and getinerese()
##    set() uses the x from parent enivornment while i (which is set to NULL) grabs cleared object.
##    get() uses lexical scoping and grabs x from parent environment of makeCacheMatrix
##    setinverse() is the object that holds the inverse of x
##    getinverse() is the object that pulls saved the inverse of x
## 3. Use list to assigns each of these functions as an element and returns it to the parent environment.

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
        x <<- y
        i <<- NULL
      }
      get <- function () x
      setinverse <- function(solve) i <<- inverse
      getinverse <- function()i
      list(set = set, get = get, 
           setinverse = setinverse, 
           getinverse = getinverse)
}

## Build a function to cache (temporarily hold in memory) objects that are populated or retrieved by makeCacheMatrix
## 1. Intializing objects x and i
## 2. i is going to go look in x and grab the saved getinverse
## 3. if there is a value currently in i then a message will return
## 4. data is an object that will grab values in the get() object for x
## 5. i will then preform the solve function which will give us the inverse of the data object
## 6. the results of i will be cached (saved in memory) for later

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
