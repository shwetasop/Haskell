append []  ys =  [ys]
append  (x:xs) ys = [x]:append xs (y:ys)
