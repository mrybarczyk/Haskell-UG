-- Create functions calculating GCD and LCM.
gcd :: Integer -> Integer -> Integer
gcd m n = 
 if  n == 0
  then m
 else Main.gcd n (m `mod` n)

lcm :: Integer -> Integer -> Integer
lcm m n = div (m * n) (Main.gcd m n) 