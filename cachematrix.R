


##HELLO
## function1 is makecache function which make a special matrix and rerurn it's inverse  

## Write a short comment describing this function
 

makeCacheMatrix <- function(x=matrix ()){
  
  inverse1<- NULL
  set <- function(y){
    
    x<<- y
    inverse1<<- NULL
  }
  
  get<- function() x
  setInv <- function(inverse) inverse1<<- inverse
  getInv<- function() inverse1
  list(set=set, get= get, setInv=setInv, getInv=getInv)
}
## this function solve the matrix by getting it;s inverse by function solve

  
  cacheSolve<- function(x,...){
    inv<- x$getInv()
    if(!is.null(inv)){
      message('Getting cached dataa')
      return(inv)
    }
    mat<- x$get()
    inv<- solve(mat,...)
    x$setInv(inv)
    inv
  }
  
}