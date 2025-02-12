main = do
    let file = "file.txt"
    contents <- readFile file
    putStrLn contents

