gospider -a -d 0 -S $1 -c 5 -t 100 -d 4 --blacklist black | egrep -o '(http|https)://[^/"]+"' | anew | tee -a httpspider.txt
