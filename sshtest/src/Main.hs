module Main where

import Network.SSH.Client.SimpleSSH

main :: IO ()
main = do
  val <- runSimpleSSH $
    withSessionPassword "127.0.0.1" 22 "/home/tomas/.ssh/known_hosts" "tomas" "password" $ flip execCommand "ls"
  putStrLn $ show val
  
  

