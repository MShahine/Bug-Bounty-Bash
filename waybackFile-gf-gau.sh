cat alive.txt | gau | grep -v '\.\(jpg\|jpeg\|gif\|css\|tif\|tiff\|png\|ttf\|woff\|woff2\|ico\|pdf\|svg\|txt)$' |qsreplace "FUZZ" | anew tee -a wayend.txt
cat wayend.txt | gf rce | tee -a way-rce.txt
cat wayend.txt | gf ssrf | tee -a way-ssrf.txt
cat wayend.txt | gf xss | tee -a way-xss.txt
cat wayend.txt | gf sqli | tee -a way-sqli.txt
cat wayend.txt | gf redirect | tee -a way-redirect.txt
cat wayend.txt | gf idor | tee -a way-idor.txt
cat wayend.txt | grep 'cgi-bin\|cgi' | tee -a way-cgi.txt 
cat wayend.txt | grep '.js' | tee -a way-jsFiles.txt
