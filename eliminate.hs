
eliminate [x] = [x]
eliminate (x:xs)
	|x== head xs = eliminate xs
	|otherwise   = x:eliminate xs
