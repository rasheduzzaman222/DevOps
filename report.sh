OUT="./samples/final_report.text"
mkdir -p "$(dirname "$OUT")"

echo "System Report" > $OUT
echo "Generated: $(date)" >> $OUT
echo "" >> $OUT

echo "-----Health----" >> $OUT
./health.sh >> $OUT
echo "" >> $OUT

echo "----Process----" >> $OUT
ps aux | head -n 10 >>$OUT
echo"" >> $OUT

echo "____Log Analysis----" >> $OUT
./logs.sh >> $OUT

echo "Report saved to $OUT"
