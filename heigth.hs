data Tree= Leaf Int| Branch Tree Tree

height:: Tree->Int
heigth (Leaf _) = 1
heigth (Branch left right) = 1 + max (heigth left) (height right)
