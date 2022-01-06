-- Create a function that will recursively calculate the fibonacci sequence of passed n.
-- 0 1 1 2 3 5 8 13 21

fib :: Integer -> Integer
fib n = do
 let n1 = 0
 let n2 = 1
 fibonacci_recursive n n1 n2

fibonacci_recursive :: Integer -> Integer -> Integer -> Integer
fibonacci_recursive n n1 n2 = do
 if n == 0
  then do
   n
 else if n <= 1 
  then do
   n2
  else 
   fibonacci_recursive (n-1) (n2) (n1+n2)