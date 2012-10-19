require(plyr)
require(reshape)
pick100topcor<-function(d) {
    cr <- cor(d[,-4:-1])
    rownames(cr)<-names(d)[-4:-1]
    colnames(cr)<-names(d)[-4:-1]
    cr[lower.tri(cr,diag=TRUE)] <- NA
    mcr<-na.omit(melt(cr))
    mcr[order(abs(mcr[,3]),decreasing=TRUE)[1:100],]
}

nicecor <- function(d) {
    cr <- cor(d[,-4:-1])
    rownames(cr)<-names(d)[-4:-1]
    colnames(cr)<-names(d)[-4:-1]
    cr
}
