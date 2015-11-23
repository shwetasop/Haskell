delete :: [Int]->Int->[Int]
delete xs n = toremove xs n
	where toremove [] _ = [] 
	      toremove (x:xs) 1 = toremove xs n
	      toremove (x:xs) k = x : toremove xs (k-1)
