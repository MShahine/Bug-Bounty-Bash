cat $1 | anew | httpx -silent -threads 300 | tee -a alive.txt
cat alive.txt | qscreenshot -timeout 15--009****_
cat alive.txt | getJS -complete | anew | tee -a jsfiles.txt
cat jsfiles.txt | linkJS -m links | anew | tee -a linkjs.txt 
cat jsfiles.txt | linkJS -m endpoints | anew | tee -a linksendpoints.txt 
