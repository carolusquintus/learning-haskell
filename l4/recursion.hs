-- RECURSION

-- Function calls itself
-- FACTORIAL
-- factorial(5) = 5 * 4 * 3 * 2 * 1 = 120

factorial :: Int -> Int
-- base case
factorial 0 = 1
-- recursive case
factorial n = n * factorial(n - 1)

main = do
    putStrLn "Factorial of your number is: "
    print(factorial(5))
    putStrLn "Factorial of 0 is:"
    print(factorial(0))

