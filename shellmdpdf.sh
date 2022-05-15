#!/bin/bash

# Take the markdown file's path as an argument and define it as a variable
FILE=$1

# Check that it was entered
if [ -z "$FILE" ]; then
  echo "Please enter a file path"
  exit 1
fi

# Get the output pdf file as an argument and define it as a variable
PDF=$2

# Get the file's directory path and define it as a variable
DIR=$(dirname "$FILE")

# Save the current directory as a variable
CURRENT_DIR=$(pwd)

# Get the markdown file's name as a variable
FILE_NAME=$(basename "$FILE")

# If the pdf file is not defined, use the markdown file's name with .pdf as the extension
if [ -z "$PDF" ]; then
  PDF=${FILE_NAME%.*}.pdf
fi

# Check if the PDF isn't an absolute path
if [ "${PDF:0:1}" != "/" ]; then
  PDF="$CURRENT_DIR/$PDF"
fi

# Go to the directory of the markdown file
cd $DIR

# Export the markdown file to a PDF using pandoc
pandoc -o $PDF $FILE --pdf-engine=xelatex --variable sansfont=Arial

# Return to the original directory
cd $CURRENT_DIR