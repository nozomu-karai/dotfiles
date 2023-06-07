#!bin/sh

FILE_ID=$1
OUTPUT=$2
wget "https://drive.google.com/uc?export=download&id=${FILE_ID}" -O ${OUTPUT}
