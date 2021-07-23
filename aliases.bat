@echo off

:: Add key with name AutoRun to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor
:: Containing the full path

DOSKEY pydir=cd "C:\Users\flori\Desktop\Programming\Python"
DOSKEY neuraldir=cd "C:\Users\flori\Desktop\Programming\Python\NeuralNine"
DOSKEY desk=cd "C:\Users\flori\Desktop"
DOSKEY videodir=cd "C:\Users\flori\Desktop\Programming\Python\NeuralNine\videos"
DOSKEY ls=dir /D $*
DOSKEY l=dir /B $*
DOSKEY ll=dir /A $*
DOSKEY cat=type $*
DOSKEY grep=$1 $B findstr $2 :: has to be used like this -> grep dir ".txt"
