type Coordinate = (Char, Int)
type Ship = [Coordinate]
type Field = [[Bool]]

validX = ['A' .. 'J']
validY = [1 .. 10]
-- Probably also want a player type

-- Initialize the play field
initField :: Field

-- Extract the coordinate from the string
convertInputToCoords :: String -> Coordinate

convertInputToCoords h:t = (h,t) -- need to convert t to Int somehow

-- Split a string containing coordinates separated by semi-colons into a list of coordinates
splitCoordsInString :: String -> [String]

-- Check if a coordinate lies inside the field
validateCoords :: Coordinate -> Bool

validateCoords (x,y) = (elem x validX) && (elem y validY)

-- Make sure that the ship is given valid coordinates (in a row/col, no overlap with existing ships)
-- ie for a ship 3 long, make sure it receives 3 coords that are in the same "row"
-- might want to have data about "rows" when we initialize the field
-- input: already placed ships, current ship (coords), length of current ship
validateShipCoordinates :: [Ship] -> Ship -> Int -> Bool

validateShipCoordinates h:t ship len = (validShip h ship len) && (validateShipCoordinates t ship len)

-- validShip is a helper function for validateShipCoordinates that makes sure the 2 given ships do not 
-- inhabit the same coordinates and ensures the second ship is given valid coordinates
-- input: already placed ship, current ship, length of current ship
validShip :: Ship -> Ship -> Int -> Bool

validShip = 

-- Output the field in the terminal (as some printable String)
printField :: Field -> [Ship] -> IO ()

-- Mark a cell on the field as hit
markHit :: Field -> Coordinate -> Field

-- Mark a cell on the field as miss
markMiss :: Field -> Coordinate -> Field

-- Remove the ships from list of ships on field when they are destroyed
removeDestroyedShips :: [Ship] -> [Ship]

-- Check if the ship has been destroyed and remove it from the game if it is
checkShipDestroyed :: Field -> Ship -> Coordinate -> Bool

-- Fire a shot at a given coordinate
-- input: opponent field, list of ships, position to shoot at
-- output: updated field, list of ships, hit or miss
fire :: (Field, [Ship]) -> Coordinate -> (Field, [Ship], Bool)

-- Input a ship with a given length
-- already placed ships, length of ship to place, IO output
inputShip :: [Ship] -> Int -> IO Ship

-- Input all the ships for a player
inputShips :: Int -> [Ship] -> IO [Ship]

-- Input the names of the player (computer will always be "Computer")
inputNames :: IO [String]



-- The entry point of the program
main :: IO ()

main =
	do 
		putStrLn("Welcome to battleship in haskell, let's get started... ")
        putStrLn("Would you like to start a new game or load a pre-existing file?")
        putStrLn("[1] - New Game, [2] - Load Game")
        newOrLoad <- getLine

        if (newOrLoad == "1") -- new game
        	then do
        		putStrLn("Ok, lets start a new game.")
        		putStrLn("First off lets set up your board")

        else do -- load game
      		putStrLn("What is your file's name?")
      		fileName <- getLine
      		file <- readFile fileName










