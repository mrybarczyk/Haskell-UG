--

pow :: Integer -> Integer -> Integer
pow x y = do
 if y > 1
  then pow (x*x) (y-1)
 else
  x