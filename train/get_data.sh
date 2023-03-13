#!/bin/bash
# Author: Tomas Goldsack

mkdir data

fileid="1qgt0dOPzMHPVV9WQl1TGhthruXuIgvmA"
filename="data/formatted_data.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

