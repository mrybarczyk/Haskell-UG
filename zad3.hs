-- Create boolean functions: smaller, greater, equal, smaller_equal, greater_equal, not equal. Use only < and boolean operations (e.g. OR, AND)
smaller :: Integer -> Integer -> Bool
smaller a b = do
 if a < b
  then True
 else False

greater :: Integer -> Integer -> Bool
greater a b = do
 if b < a
  then True
 else False

equal :: Integer -> Integer -> Bool
equal a b = do
 if (b < a) == False && (a < b) == False
  then True
 else False

smaller_equal :: Integer -> Integer -> Bool
smaller_equal a b = do
 if (a < b) || (b < a) == False && (a < b) == False
  then True
 else False

greater_equal :: Integer -> Integer -> Bool
greater_equal a b = do
 if (b < a) || (b < a) == False && (a < b) == False
  then True
 else False

not_equal :: Integer -> Integer -> Bool
not_equal a b = do
 if (b < a) == False && (a < b) == False
  then False
 else True