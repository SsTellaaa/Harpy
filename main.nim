import osproc
import std/strutils
import std/strformat
var scriptPath = "/home/stella/Documents/projects/nim/harpy/makeProj.bash"

proc runBash(path: string, lang: int): int =
    var
        result: int
    let
        cmd = fmt"bash {path} {lang}"
    
    result = execCmd(cmd)
    if result != 0:
        echo "Error executing bash script"
    return result

echo "Welcome user to harpy, a custom tool for all your automatic project creation!"
echo "-----------"
echo "The following languages are supported: "
echo "1. Java \t 2. Python \t 3. Kotlin"
echo "Enter the number that corresponds to the language you would like to generate for..."

let selectedLang: int = parseInt(readLine(stdin))

var exitCode = runBash(scriptPath, selectedLang)