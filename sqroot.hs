sqroot  m n = [x | x <-  [1..n], y<- [m..n], x*x==y ]

sqroot1 :: Int -> Int -> [Float] 
sqroot1 m n =[x | x<- [1..n],x*x<=n,x*x>=m]
