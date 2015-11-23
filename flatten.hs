flatten :: [[Int]]->[Int]

flatten list= [ x| sublist <- list,x<-sublist]
