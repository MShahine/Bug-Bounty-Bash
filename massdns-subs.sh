echo '[+] Adding First Block'
for host in $(cat $1)
do
	awk -V host=$host '{print $0","host"}' massdns.txt
done
echo '[+] Starting Massdns'
massdns massdns.txt -r resolvers.txt -o S -t A -q | awk -F". " '{print $1}'| sort | uniq 
