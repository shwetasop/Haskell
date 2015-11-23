data Tree = Leaf Int | Node Tree Int Tree

collectleaves ::  Tree -> [Int]

collectleaves(Leaf x)   =  [x]
collectleaves(Node tr1 n tr2) = collectleaves  tr1 ++ collectleaves tr2 



collectInternal :: Tree -> [Int]
collectInternal(Leaf x) = []
collectInternal(Node tr1 n  tr2)= n : collectInternal tr1 ++ collectInternal tr2



atlevel (Leaf x) _  = [x]
atlevel (Node tr1 n tr2) l
	|l==1	= [n]
	|l>1	=atlevel tr1 (l-1)++atlevel tr2(l-1)
	|otherwise = []
