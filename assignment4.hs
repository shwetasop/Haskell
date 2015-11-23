slice :: [a]->Int->Int->[a]
slice [] 1 1 = []
slice (x:xs) a b 
	|a>1 = slice xs (a-1) (b-1)
	|b<1 = []
	|otherwise = x:slice xs a (b-1)  

	
	
	
delete :: [Int]->Int->[Int]
delete xs n = toremove xs n
	where toremove [] _ = [] 
	      toremove (x:xs) 1 = toremove xs n
	      toremove (x:xs) k = x : toremove xs (k-1)

data Tree = Leaf Int | Node Tree Int Tree

occurs::Int->Tree->Bool
occurs n (Leaf y)
	|y==n = True
	|otherwise = False
occurs n (Node tr1 n1 tr2) 
	|n1==n = True
	|otherwise =occurs n tr1 || occurs n tr2

		  
sort :: [[Int]]->[[Int]]
sort []=[]
sort [x]=[x]
sort (x:y:xs)
	|(length x) > (length y) = y: sort (x:xs) 
	|otherwise               = x: sort (y:xs)


sortiter :: [[Int]] -> Int -> [[Int]]
sortiter xs i
	|i  == (length xs) = xs
	|otherwise = sortiter (sort xs) (i+1)


sortlist :: [[Int]]-> [[Int]]
sortlist xs = sortiter xs 0


flatten :: [[Int]]->[Int]
flatten list= [ x| sublist <- list,x<-sublist]
