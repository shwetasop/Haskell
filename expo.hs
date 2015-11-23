expo :: Integer->Integer->Integer
expo x 1	=x
expo x y	=x * expo x (y-1)
