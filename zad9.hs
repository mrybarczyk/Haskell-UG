-- Create functions working on lists:
-- a) append l m that concatenates lists l and m
-- b) member x l that checks if x is an elements of list l
-- c) reverse l that reverses the list l 
-- d) last l that finds the last element of list l
-- e) delete x l that removes element x from list l
-- f) pairing l1 l2 that creates a list of tuples with elements from lists l1 l2
-- example: pairing [1,2,3] [a,b,c] => [(1,a), (2,b), (3,c)]
-- g) split x l that splits the list into two parts; l1 contains elements lower than x, l2 - greater
-- h) map f l that will apply function f to all elements of the list l

-- a)
append :: [a] -> [a] -> [a]
append l m = do
 l++m

-- b)
member :: Eq a => a -> [a] -> Bool
member _ [] = False
member x (l:lt)
 | l == x = True
 | otherwise = member x lt

-- c)
reverse :: [a] -> [a]
reverse lt = foldl (\acc l-> l : acc) [] lt

-- d)
last :: Eq a => [a] -> a
last (l:lt)
 | lt == [] = l
 | otherwise = Main.last lt

-- e)
delete :: Eq a => a -> [a] -> [a]
delete _ [] = []
delete x (l:lt) 
 | x == l = delete x lt
 | otherwise = l : delete x lt

-- f)
pairing :: [a] -> [a] -> [(a,a)]
pairing (l1:l1t) (l2:l2t) = do
 if length l1t == length l2t
  then do
   [(l1, l2)]
  else
   []

-- g)
-- split _ [] = ([], [])
-- split x (l:lt) = do
--  if l > x
--   then do
--    -
--   else
--    -
--  -

-- h)
-- it's literally map as defined in Prelude :x but with apostrophe
f x = x*x
map' :: (a -> b) -> [a] -> [b]
map' _ []       = []
map' f (x : xs) = f x : map' f xs