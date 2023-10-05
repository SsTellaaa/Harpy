import std/strutils
import std/strformat
import std/os
var directory: string
var corresponds: string
let
    java: string = "//Here goes your code java dev, have fun debugging."
    python: string = "#Hss hss, im a snake"
    kotlin: string = "//Kotlin is, fun, right?"

if not dirExists(directory):
    os.createDir(directory)
else:
    echo "Directory already exists"

echo "Welcome user to harpy, a custom tool for all your automatic project creation!"
echo "-----------"
echo "The following languages are supported: "
echo "1. Java \t 2. Python \t 3. Kotlin"
echo "Enter the number that corresponds to the language you would like to generate for..."

let selectedLang: int = parseInt(readLine(stdin))

case selectedLang:
    of 1:
        corresponds = "java"
    of 2:
        corresponds = "py"
    of 3:
        corresponds = "kt"
    else:
        echo "Invalid choice"

directory = fmt"{corresponds} project"
createDir(directory)

let fileName = directory & fmt"/main.{corresponds}"

var file: File

if corresponds == "java":
    if open(file, fileName, fmWrite):
        echo "File created successfully"
        write(file, fmt"{java}")
        close(file)
    else:
        echo "Failed to create file"
elif corresponds == "py":
    if open(file, fileName, fmWrite):
        echo "File created successfully"
        write(file, fmt"{python}")
        close(file)
    else:
        echo "Failed to create file"
elif corresponds == "kt":
    if open(file, fileName, fmWrite):
        echo "File created successfully"
        write(file, fmt"{kotlin}")
        close(file)
    else:
        echo "Failed to create file"
else:
    echo "You made a typo somewhere, whoopsies"