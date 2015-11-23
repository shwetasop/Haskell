even1 [] =[]
even1 [x]= []
even1 (x:y:ys) = y:even1 ys
