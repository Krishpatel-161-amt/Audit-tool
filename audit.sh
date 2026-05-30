mkdir -p reports
echo "--- report file ---" > reports/report.log
date >> reports/report.log
echo "--- all user accounts ---" >> reports/report.log
cat /etc/passwd >> reports/report.log
echo "--- all login accounts ---" >> reports/report.log
grep "/bin/bash" /etc/passwd >> reports/report.log
echo "--- Sensitive Files world-writable ---" >> reports/report.log
find ~ -perm -o+w >> reports/report.log 2> reports/error.log



