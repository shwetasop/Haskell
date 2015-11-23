findmax [x]  =x
findmax (x:xs)
	| x > findmax xs = x
	|otherwise = findmax xs
