-- Exceptions
import Control.Exception

main = do
    result <- try (evaluate(10 `div` 2)) :: IO (Either SomeException Int)
    case result of
      Left exc  -> putStrLn $ "Error caught: " ++ show exc
      Right val -> putStrLn $ "The correct answer is: " ++ show val

