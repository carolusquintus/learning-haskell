-- Zippers
-- Define the list zipper type
type ListZipper a = ([a], [a])

-- Function to view the current focus of the zipper
focus :: ListZipper a -> Maybe a
focus (_, []) = Nothing
focus (_, x:_) = Just x

-- Move the zipper to the right
goRight :: ListZipper a -> Maybe (ListZipper a)

goRight(left, x:right) = Just (x:left, right)

goRight(_, []) = Nothing

-- Move the zipper to the left
goLeft :: ListZipper a -> Maybe (ListZipper a)

goLeft(x:left, right) = Just (left, x:right)

goLeft(_, []) = Nothing

-- Main function
main :: IO()
main = do
    let zipper = ([], [1, 2, 3, 4, 5, 6])

    putStrLn "Original focus:"
    print $ focus zipper

    putStrLn "After moving to Right:"
    print $ fmap focus (goRight zipper)

    putStrLn "After moving to Left:"
    print $ fmap focus (goRight zipper >>= goLeft)

