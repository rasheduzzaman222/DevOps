LOG="./samples/log_sample.log"

echo "Showing first 5 line"
head -n 5 $LOG

echo "Showing last 5 lines"
tail -n 5 $LOG

echo "Find ERROR lines"
grep "ERROR" $LOG

echo "Extract first and second column"
awk '{print $1, $2}' $LOG

echo "Sorting components"
awk '{print $4}' $LOG | sort | uniq -c
