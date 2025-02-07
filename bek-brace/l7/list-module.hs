-- LIST

import Data.List

main = do
    print(intersperse '|' "IloveHaskell!")
    print(intercalate " " ["Haskell", "is", "great!"])
    print(splitAt 3 "Apple")
    print(sort [65, 456546, 6546, 654, 11, 186, 915])

