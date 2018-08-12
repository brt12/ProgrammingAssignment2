## Following function helps to resuce the computaion time in calculating Inverse of a matrix by reading in cache


## The fllowing matrix cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    m<- NULL
    set<-function(y){
          x<<-y
          m<<-NULL
    }
    get<-function()x
    setinverse_matrix<-function(inv_matrix) m<<-inv_matrix
    getinverse_matrix<-function()m
    list(set=set,get=get,setinverse_matrix=setinverse_matrix,getinverse_matrix=getinverse_matrix)

}



##This calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinverse_matrix function
cacheSolve <- function(x, ...) {
        m<-x$getinverse_matrix()## Return a matrix that is the inverse of 'x'
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data<-x$get()
        m<-solve(data)
        x$setinverse_matrix(m)
        m
        }
