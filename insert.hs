insert x ys 0 = []++ys
insert x (y:ys) k 
	| k>1  =  y:insert x ys (k-1)
	|otherwise = x:y:insert x ys 0
