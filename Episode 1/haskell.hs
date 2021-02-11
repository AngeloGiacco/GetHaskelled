--EPISODE 1
--MATHS IN HASKELL

next :: Int -> Int 
next n = n + 1

prev :: Int -> Int 
prev n = n - 1

getNextEven :: Int -> Int
-- if the number is even, add 2
-- otherwise we'll just add one
getNextEven n 
  | even n    = n + 2
  | otherwise = n + 1

getNextEven' :: Int -> Int 
getNextEven' n 
  | even n    = n + 2 
  | otherwise = getNextEven' (n - 1)

add :: Int -> Int -> Int 
add x y = x + y

add' :: Int -> Int -> Int 
add' 0 y = y 
add' x y = add' (x - 1) (y + 1) 

fib :: Int -> Int 
-- fib = 1 1 2 3 5 8 13 21 34 55
-- fib n returns the nth integer 
fib 1 = 1 
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2) 
-- fib 3 = fib 2 

fib' :: Int -> Int 
fib' n = fib'' n 1 0


fib'' :: Int -> Int -> Int -> Int 
fib'' counter current previous 
  | counter == 1 = current 
  | otherwise = fib'' (counter - 1) (current + previous) current
