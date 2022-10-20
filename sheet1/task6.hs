asPrefixOf :: String -> String -> String
asPrefixOf p s = asPrefixOf' p s "" where
  asPrefixOf' :: String -> String -> String -> String
  asPrefixOf' p s r
    | s == "" = p
    | p == "" = r ++ s
    | head p == head s = asPrefixOf' (tail p) (tail s) (r ++ [head p])
    | otherwise = asPrefixOf' (tail p) s (r ++ [head p])
