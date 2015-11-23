duplicate list = concat1 [[x,x]| x <- list]

concat1 []=[]
concat1 (x:xs) = x ++ concat xs
