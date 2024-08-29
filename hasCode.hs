--this program inverts the colors of the images

import System.Environment --allows haskell to interact with the environment(command line arguments in terminal) 
main :: IO() --defining  main function
main = do

-- command line args are collected as a string 
    args <- getArgs

    -- converting strings to integers
    let numbers = map read args :: [Int]

        --call your subtract function and store in result
        result = subtract1 numbers

        --convert the results back to a string
        resultStrings = map show result
        outputString = unwords resultStrings

    -- print the outputs of the string
    putStrLn outputString

subtract1 :: [Int] -> [Int] --defining header of function takes in an integer and returns an integer

--handling the base case to see if an empty array is inputted
subtract1 [] = []
--accessing the head and tail of array and taking the head of the array and minusing the head from 255 then adding it to a list and recalling the function with just the tail of the array
--this repeats throughout the entire list until an empty array is resulted
subtract1 (x:xs) = (255 - x) : subtract1 xs
