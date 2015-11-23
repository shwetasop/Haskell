square [] n =  n
square (x:xs) n
	|x*x ==n =[x]
	|otherwise =  square xs n
