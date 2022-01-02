-- Create functions odd n and even n which check if n is odd or even.
-- Use only True, False, 0, 1 and/or -1.

even :: Integer -> Bool
even n = do
 if n `mod` 2 == 0
  then True
 else False

odd :: Integer -> Bool
odd n = do
 if n `mod` 2 == 0
  then False
 else True