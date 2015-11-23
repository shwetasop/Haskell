
replicateall [] k =[]
replicateall (x:xs) k = replicate1 (x:xs) k 
		where replicate1 (x:xs) 0 = replicateall xs k
		      replicate1 (x:xs)  k = x:replicate1 (x:xs) (k-1)
