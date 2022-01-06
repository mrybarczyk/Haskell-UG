-- Create a function that will recursively calculate the fibonacci sequence of passed n.
-- 0 1 1 2 3 5 8 13 21

fib :: Integer -> Integer
fib n = do
 if n <= 1 
  then do
   n
  else 
   fib (n-1) + fib (n-2)

 