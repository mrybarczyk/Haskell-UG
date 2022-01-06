-- Create a function that will iteratively calculate the fibonacci sequence of passed n.

-- Example of an iterative function calculating factorial using an acumulator (acc)
-- silnia n = silnia_help n 1
--    where silnia_help 0 acc = acc
--          silnia_help n acc = silnia_help (n - 1) (n * acc)

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