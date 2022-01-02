-- What are the values of given expressions?
-- In short: if you type given value in ghci what would be the response from the compiler.

-- 10
--     r: 10

-- 5+3+4
--     r: 12

-- 9-1
--     r: 8

-- 6/2
--     r: 3.0

-- 2*3+4*6
--     r: 30

-- let a = 3 in a+1
--     r: 4

-- let a = 1 in let b = a+1 in a+b+a*b
--     r: 5

-- a
--     r: error: Variable not in scope: a

-- let square n = n*n in square 4
--     r: 16

-- let fac n = if n == 0 then 1 else n*fac(n-1) in fac 5
--     r: 120