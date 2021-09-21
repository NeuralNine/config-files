import Graphics.X11.Xlib
import Graphics.X11.Xlib.Extras
import System.Environment
import System.IO
import Data.Char

main :: IO ()
main = parse True "XMONAD_COMMAND" =<< getArgs

parse :: Bool -> String -> [String] -> IO ()
parse input addr args = case args of
        ["--"] | input -> repl addr
               | otherwise -> return ()
        ("--":xs) -> sendAll addr xs
        ("-a":a:xs) -> parse input a xs
        ("-h":_) -> showHelp
        ("--help":_) -> showHelp
        ("-?":_) -> showHelp
        (a@('-':_):_) -> hPutStrLn stderr ("Unknown option " ++ a)

        (x:xs) -> sendCommand addr x >> parse False addr xs
        [] | input -> repl addr
           | otherwise -> return ()


repl :: String -> IO ()
repl addr = do e <- isEOF
               case e of
                True -> return ()
                False -> do l <- getLine
                            sendCommand addr l
                            repl addr

sendAll :: String -> [String] -> IO ()
sendAll addr ss = foldr (\a b -> sendCommand addr a >> b) (return ()) ss

sendCommand :: String -> String -> IO ()
sendCommand addr s = do
  d   <- openDisplay ""
  rw  <- rootWindow d $ defaultScreen d
  a <- internAtom d addr False
  m <- internAtom d s False
  allocaXEvent $ \e -> do
                  setEventType e clientMessage
                  setClientMessageEvent e rw a 32 m currentTime
                  sendEvent d rw False structureNotifyMask e
                  sync d False

showHelp :: IO ()
showHelp = do pn <- getProgName
              putStrLn ("Send commands to a running instance of xmonad. xmonad.hs must be configured with XMonad.Hooks.ServerMode to work.\n-a atomname can be used at any point in the command line arguments to change which atom it is sending on.\nIf sent with no arguments or only -a atom arguments, it will read commands from stdin.\nEx:\n" ++ pn ++ " cmd1 cmd2\n" ++ pn ++ " -a XMONAD_COMMAND cmd1 cmd2 cmd3 -a XMONAD_PRINT hello world\n" ++ pn ++ " -a XMONAD_PRINT # will read data from stdin.\nThe atom defaults to XMONAD_COMMAND.")
