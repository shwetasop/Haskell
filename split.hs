
split_main xs n = [take n xs]++[drop n xs]


take1 1 (x:xs)= []
take1 n (x:xs)= x: take1 (n-1) xs


drop1 1 (x:xs)= xs
drop1 n (x:xs)= drop (n-1) xs 

