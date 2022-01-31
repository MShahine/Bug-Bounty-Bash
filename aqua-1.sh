aquatone-discover -d $1  
aquatone-scan -d $1 --ports huge  
aquatone-takeover -d $1 
aquatone-gather -d $1
#$./aqua.sh domain.com
