del ./build/DancingLine.love
"C:\Program Files\7-Zip\7z.exe" -x!./build,./.idea/,./.git/ a ./build/DancingLine.zip  ./
cd ./build
move DancingLine.zip DancingLine.love
"F:\Program Files (x86)\WinSCP\WinSCP.exe" /script=../upload /log=./log_file.txt