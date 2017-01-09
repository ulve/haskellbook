module ChapterThree where

print1 :: IO ()
print1 = putStrLn "Hello world"

print2 :: IO ()
print2 = do
    putStrLn "Count to four for me:"
    putStr "one, two"
    putStr ", three, and"
    putStrLn " four!"

myGreeting :: String
myGreeting = "Hello" ++ " world½"

hello :: String
hello = "hello"

world :: String
world = "world!!2"

print3 :: IO ()
print3 = do
    putStrLn myGreeting
    putStrLn secondGreeting
    where secondGreeting = concat [hello, " ", world]

-- global vs local declarations

topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
    where woot :: Integer
          woot = 7

topLevelValue :: Integer
topLevelValue = 10

area d = pi * r *r
    where r = d / 2

-- Concatenation functions
myGreeting2 :: String
myGreeting2 = (++) "Hello" " world½"

concat1 :: IO ()
concat1 = do
    putStrLn myGreeting2
    putStrLn mySecondGreeting2
    where mySecondGreeting2 =
            (++) hello ((++) " " world)

-- Exercises
exclamate :: [Char] -> [Char]
exclamate s = s ++ "!"

one x s = s !! x

after x s = drop x s

