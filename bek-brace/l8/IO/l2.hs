main = do
    let file = "games.txt"
    writeFile file "Uncharted 4, God Fo war and\n LOU 1 are my favorite games"
    contents <- readFile file
    putStrLn contents

