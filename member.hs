
member  a [] =False
member  a (x:xs)
	|a==x	= True
	|otherwise = member a xs
