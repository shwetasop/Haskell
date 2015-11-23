data Tree = Leaf Int | Node Tree Int Tree

occurs::Int->Tree->Bool
occurs n (Leaf y)
	|y==n = True
	|otherwise = False
occurs n (Node tr1 n1 tr2) 
	|n1==n = True
	|otherwise =occurs n tr1 || occurs n tr2
