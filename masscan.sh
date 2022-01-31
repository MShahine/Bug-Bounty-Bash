cat alive.txt | xargs dig {} +short | grep -Po ([0-9]){2,3}(\\.[0-9]{1.3}){3} > ips.txt 
masscan -p0-79, 81-442,444-65535 -iL ips.txt --rate=10000 -oB masscan.txt
masscan --readscan masscan.txt | awk '{print $NF":"$4}' | cut -d/ -f1 > open-ports.txt
cat open-ports.txt | httpx
