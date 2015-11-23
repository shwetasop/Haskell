sort :: [[Int]]->[[Int]]
sort []=[]
sort [x]=[x]
sort (x:y:xs)
	|(length x) > (length y) = y: sort (x:xs) 
	|otherwise               = x: sort (y:xs)


sortiter :: [[Int]] -> Int -> [[Int]]
sortiter xs i
	|i  == (length xs) = xs
	|otherwise = sortiter (sort xs) (i+1)


sortlist :: [[Int]]-> [[Int]]
sortlist xs = sortiter xs 0
