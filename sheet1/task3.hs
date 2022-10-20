isPrefixOf :: String -> String -> Bool
isPrefixOf s t
  | length s > length t = False
  | s == "" = True
  | head s == head t = isPrefixOf (tail s) (tail t)
  | otherwise = False
