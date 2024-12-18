makeVector <- function(x = numeric()) {
00

m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setmean <- function(mean) m <<- mean
getmean <- function() m
list(set = set, get = get,
setmean = setmean,
getmean = getmean)
}
cachemean <- function(x, ...) {
m <- x$getmean()
if(!is.null(m)) {
004
message("getting cached data")
005
return(m)

}
data <- x$get()
m <- mean(data, ...)
x$setmean(m)
m
