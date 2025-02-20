-- Monoids
newtype MyString = MyString String deriving (Show, Eq)

instance Semigroup MyString where
    MyString x <> MyString y = MyString(x ++ y)

instance Monoid MyString where
    mempty = MyString " "

main :: IO()
main = do
    let s1 = MyString "Hello,"
    let s2 = MyString "world!"
    let s3 = MyString "-"

    -- mappend (<>)
    print(s1 <> s2)

    -- Test the identity property
    print(s1 <> mempty)
    print(mempty <> s2)

    -- Test associativity
    print((s1 <> s2) <> s3)
    print(s1 <> (s2 <> s3))

