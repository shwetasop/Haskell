data Tree = Leaf Int | Node Tree Int Tree

collectnode :: Int -> Tree -> [Int]
collectnode n (Leaf y)
	|y>n = [y]
	|otherwise = []
collectnode n (Node tr1 n1 tr2)
	|n1 > n = (collectnode n tr1)++[n1]++(collectnode n tr2)
	|otherwise =(collectnode n tr1)++(collectnode n tr2)
