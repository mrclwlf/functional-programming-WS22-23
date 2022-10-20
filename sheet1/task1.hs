mySum :: Int -> Int
mySum n
 | n < 1 = error "Input must be >= 0!"
 | n > 1 = n + mySum (n - 1)
 | n == 1 = n
