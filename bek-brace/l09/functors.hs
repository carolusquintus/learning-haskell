-- FUNCTORS

class Functor f where
    fmap :: (a -> b) -> f a -> f b

-- What is fmap?
-- fmap lets you take a function and
-- apply it to a container of type f.
-- [1, 2, 3, 4, 5, 6]

main = do
    -- fmap and map work / behave the same on the list
    print(fmap (substract 1) [2, 4, 6, 8, 10])
    print(map (substract 1) [2, 4, 6, 8, 10])

-- Applicative functors
class (Functor f) => Applicative f where
    -- Pure
    pure :: a -> f a
    -- <*>
    (<*>) :: f (a -> b) -> f a -> f b

