-- Using foldl and foldr define functions:
-- a) prod
-- b) length
-- c) and (for lists of Bool values)
-- d) gcd (for lists of natural numbers)
-- e) delete
-- f) map
-- g) reverse
-- h) filter pred
-- i) forall pred

-- a)
prod' (x:xs) = foldl (*) 1 xs

-- b)
length' l = foldr f 0 l
    where f x y = y + 1

-- c)
and' :: [Bool] -> [Bool] -> [Bool]
and' [] [] = []
and' (x : xs) (y : ys) 
    | length xs == length ys = (x && y) : and' xs ys
    | otherwise = []

-- d)
-- gcd' :: Int -> [Int] -> Int
-- gcd' _ [] = 0
-- gcd' a (l:ls) 
--     | l == 0 = a
--     | otherwise = gcd' l ls

-- e)


-- f)
f x = x*x
map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\y ys -> (f y):ys) [] xs

-- g)
reverse' :: [a] -> [a]
reverse' xs = foldl (\acc x-> x : acc) [] xs

-- h)
filter' :: (a -> Bool) -> [a] -> [a]
filter' p [] = []
filter' p (x:xs) = foldr (\x xs -> if p x then x:xs else xs) [] xs

-- i)
forall' :: (a -> Bool) -> [a] -> [Bool]
forall' p [] = []
forall' p (x:xs) = foldr (\x xs -> if p x then True:xs else False:xs) [] xs