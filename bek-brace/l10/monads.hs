-- MONADS

-- Monads are defined in Haskell
-- through a type class that
-- includes several operations

class Monad m where
    return :: a -> m a
    -- Bind
    (>>=) :: m a -> (a -> m b) -> m b
    -- Then
    (>>) :: m a -> m b -> m b
    x >> y = x >>= \_ -> y
    -- Fail
    fail :: String => m a
    fail msg = error msg

-- Three Laws of Monads:
-- 1. Left identity:
return a >>= f
-- the same as : f a

-- 2. Right identity
x >>= return
-- the same as: x {Value not changed}

-- 3. Associativity:
(m >>= f) >>= g
m >>= (\x -> f x >>= g)
