addlistelem x  []  =  []
addlistelem x (y:ys) = x+y:  addlistelem x ys

addlists [] list  =[]
addlists (x:xs) list = addlistelem x list ++ addlists xs list
