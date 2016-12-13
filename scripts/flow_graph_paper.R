# clear the working space
rm(list = ls())
# load the library
# for the SST paper
library(diagram)
M  <- matrix(nrow = 15, ncol = 3, byrow = TRUE, data = 0)
C <- M
A <- M
M[1:15] <- c(0.39,0.31,0.3,0.45,0.21,0.34,0.4,0.24,0.36,0.47,0.32,0.21,0.47,0.27,0.26)
C[1:15]<- c(0.557,0.449,0.429,0.818,0.266,0.515,0.667,0.316,0.563,0.887,0.471,0.266,0.887,0.370,0.351)
A[1:15]<- c(0.009,0.008,0.007,0.013,0.005,0.009,0.011,0.006,0.009,0.014,0.008,0.005,0.014,0.006,0.006)

strn=M
cert=C
covrg=A

# http://stackoverflow.com/questions/16112162/graph-flow-chart-of-transition-from-states

col   <- strn
col[] <- "red"
col[2, 1] <- col[4, 1] <- "blue"
plotmat(strn, box.prop = 2,
        arr.lwd=A,
        lwd = 1, box.lwd = 2, box.cex = 1, cex.txt = 0.8, 
        arr.lcol = col, arr.col = col, box.type = "rect",
        lend=3)