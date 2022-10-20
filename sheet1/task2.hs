digit :: Int -> Int
digit n
  | n == 0 = 0
  | n > 0 =  mod n 10 + digit (div n 10)
  | n < 0 = (-1) * (mod ((-1) * n) 10 + digit (div ((-1) * n) 10))
