-- SET

import qualified Data.Set as Set

t1 = "Hey Jude!"
t2 = "Smooth Criminal"

main = do
    let set1 = Set.fromList t1
    let set2 = Set.fromList t2

    print(set1)
    print(set2)

