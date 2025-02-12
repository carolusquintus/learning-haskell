-- CUSTOM

module Custom (
    showEven,
    showBoolean
) where
    showEven :: Int -> Bool
    showEven x =
        if x `rem` 2 == 0
           then True
           else False

    showBoolean :: Bool -> Int
    showBoolean y =
        if y == True
           then 1
           else 0

