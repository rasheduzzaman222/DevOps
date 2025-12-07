echo "Creating folder"
mkdir -p samples logs temp
echo "Creating files"
touch samples/health_sample.text
touch samples/log_sample.log
echo "Coping example log into logs"
cp samples/log_sample.log logs/
echo"Moving a file to tmp"
mv samples/health_sample.text tmp/

