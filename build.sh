#!/bin/bash

outputDir="bin"
prefix="git-"

if [ ! -d "${outputDir}" ]
then
  mkdir "${outputDir}"
  echo "Making output folder"
fi

for command in commands/* ; do
    IFS='/' read -r -a array <<< "${command}"
    echo "Building Command: ${prefix}${array[1]}"
    go build -o "bin/${prefix}${array[1]}" "${command}/main.go"
done