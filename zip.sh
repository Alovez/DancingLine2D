rm -rf ./build/
mkdir ./build
zip -r ./build/DancingLine.zip ./ -x@excludelist
mv ./build/DancingLine.zip ./build/DancingLine.love