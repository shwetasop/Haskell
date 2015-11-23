copy :: [Int] -> Int->Int->[Int]

copy xs 0 b= xs
copy (x:xs) a b = tocpy (x:xs) a b
	where   tocpy (x:xs) a 0 = copy xs (a-1) b 
		tocpy (x:xs) a b = x: tocpy (x:xs) a (b-1)
