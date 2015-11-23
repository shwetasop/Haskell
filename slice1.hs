slice :: Int->Int->[a]->[a]
slice [] 1 1 = []
slice (x:xs) a b 
	|a>1 = slice xs (a-1) (b-1)
	|b<1 = []
	|otherwise = x:slice xs a (b-1)  
