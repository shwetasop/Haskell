pack []  = [[]]
pack [x]  = [[x]]
pack (x:xs)= if  x `elem` (head (pack xs)) 
	then  (x:(head (pack xs))):(tail (pack xs))
   	else  [x]:(pack xs)



packall [] _   =  [[]]
packall (x:xs) (Length (x:xs)) = pack1 x  xs (Length (x:xs))
	where pack1 x (y:ys) (Length (x:xs)) 
		| x==y = [x]:pack1 x ys ((Length (x:xs)-1))
		|otherwise = pack1 x ys ((Length (x:xs)-1))
