
-- lyrics
-- Get the lyrics for a song from azlyrics

import Network.Curl
import System.Environment
import Text.Regex.Posix


main = do
  putStrLn "Type a band"
  bName <- getLine
  putStrLn "Type a song"
  cName <- getLine
  bloop <- curlGetString (songGet bName cName) []
  putStrLn $ (show $ fst bloop) ++ ", " ++
    (snd bloop =~ macheter)



-- Gets the full page
songGet artist song = "http://www.azlyrics.com/lyrics/"
                      ++ artist ++"/"++ song ++ ".html"

-- the regex
macheter = "(<!-- start of lyrics -->[a-zA-Z.\n\t\b\r<br /> ',(?!$%)]*<!-- end of lyrics -->)"

