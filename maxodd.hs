maxodd [x] = x
maxodd (x:xs)
	|x > maxodd xs = x
	|otherwise     = maxodd xs


oddelem []  = []
oddelem [x]  = [x]
oddelem (x:y:ys) = x:oddelem ys 


evenelem [] = []
evenelem [x]= [x]
evenelem (x:y:ys) = y: evenelem ys
