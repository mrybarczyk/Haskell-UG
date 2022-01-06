-- Create a function kwad a b c which will find root(s) of a given quadratic function ax^2 + bx + c = 0.

kwad :: Integer -> Integer -> Integer -> [Float]
kwad a b c = do
 let delta = ((fromIntegral b) * (fromIntegral b)) - 4 * fromIntegral a * fromIntegral c
 if delta > 0
  then do
   let x1 = (-1* (fromIntegral b) - sqrt(((fromIntegral b) * (fromIntegral b)) - 4*(fromIntegral a)*(fromIntegral c))) / (2*(fromIntegral a))
   let x2 = (-1* (fromIntegral b) + sqrt(((fromIntegral b) * (fromIntegral b)) - 4*(fromIntegral a)*(fromIntegral c))) / (2*(fromIntegral a))
   [x1, x2]
  else if delta == 0
   then do
    let x0 = (-1 * fromIntegral b) / (2 * fromIntegral a)
    [x0]
  else [0/0]