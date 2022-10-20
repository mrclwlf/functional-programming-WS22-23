digit :: Int -> Int
digit n = if n == 0 then 0 else
  if n < 0 then (-1) * (mod ((-1) * n) 10 + digit (div ((-1) * n) 10))
  else mod n 10 + digit(div n 10)

isPrefixOf :: String -> String -> Bool
isPrefixOf p s = if length p > length s then False
  else if p == "" then True
  else if head p == head s then isPrefixOf (tail p) (tail s)
  else False
