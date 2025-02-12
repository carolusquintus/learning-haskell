fooEven :: Int -> Bool
fooDesc :: Bool -> String

fooEven x = if x `rem` 2 == 0
               then True
               else False

fooDesc x = if x == True
                   then "This is an even number"
                   else "This is an odd number"

main = do
    putStrLn "Examples of Haskell Function Composition: "
    print((fooDesc.fooEven)(4))

