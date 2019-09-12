rm -rf ./build/
mkdir ./build
zip -r ./build/DancingLine.zip ./ -x@excludelist
mv ./build/DancingLine.zip ./build/DancingLine.love
scp ./build/DancingLine.love cpi@192.168.31.101:/home/cpi/launcher/Menu/GameShell/04_DANCING/