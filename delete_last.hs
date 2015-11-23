delete_last  :: Int->[Int] -> [Int]

delete_last x [] = []
delete_last x (y:ys)
	|x==y =  []++ys
	|otherwise = y:delete_last x ys


reverse1 []=[]
reverse1 (x:xs)= reverse1 xs++ x

delete_main a lt = reverse( delete_last a (reverse lt))
