main = do
        putStrLn $ show $ tarai 12 6 0

tarai x y z
    | x <= y    = y
    | otherwise = tarai (tarai (x - 1) y z) (tarai (y - 1) z x) (tarai (z - 1) x y)
