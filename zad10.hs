-- a) Define a function map2 f l1 l2 that applies a 2-argument function to all elements of lists l1 l2.
-- For example:
-- > map2 (+) [1,2,3] [8,9,10]
-- [9,11,13]
f x y = x + y
map2 :: (a -> a -> b) -> [a] -> [a] -> [b]
map2 _ [] [] = []
map2 f (x : xs) (y : ys) 
    | length xs == length ys = f x y : map2 f xs ys
    | otherwise = []

-- b) Define a function filter p l returning a list of elements of l that fulfill a 1-argument predicate p.
-- it's just filter from Prelude but with apostrophe :x
filter' :: (a -> Bool) -> [a] -> [a]
filter' p []                 = []
filter' p (x:xs) | p x       = x : filter' p xs
                | otherwise = filter' p xs