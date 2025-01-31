-- Where clause is an awesome construct in Haskell

popDensity :: (Float, Float) -> Float

popDensity (population, area) = density
    where density = population / area

main = do
    print(popDensity(81638.00, 850.78))

