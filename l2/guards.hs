-- Guards
bookCategory :: Int -> String
-- Guard clause is used for different page ranges
bookCategory pages | pages < 100 = "Short Story"
                   | pages < 300 = "Novel"
                   | pages < 1000 = "SK Book!"
                   | otherwise = "We don't know!"

main = do
    putStrLn "The category of your book is: "
    print(bookCategory 99)
    print(bookCategory 250)
    print(bookCategory 980)
    print(bookCategory 1001)
