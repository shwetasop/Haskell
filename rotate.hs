rotate (xs) 0 = xs
rotate (x:xs) k = rotate xs (k-1) ++ [x]


