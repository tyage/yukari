#!/bin/zsh

cd `dirname $0`
cd queue
for inputFile in `ls *.m2ts`
do
    outputFile="../storage/${inputFile}.mp4"
    echo "convert ${inputFile} to ${outputFile}"
    HandBrakeCLI -e x264 --deinterlace fast --h264-profile main --modulus 2 -q 22 -i $inputFile -o $outputFile 
    mv $inputFile ../trash/
done


