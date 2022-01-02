-- Create a function "same_values" that returns True if p1(x, y) and p2(x, y) have the same value, and False otherwise.
plus x y = x + y
times x y = x * y

same_values :: (Integer -> Integer -> Integer) -> (Integer -> Integer -> Integer) -> Integer -> Integer -> Bool
same_values a b x y = do
 if a x y == b x y
  then True
 else False