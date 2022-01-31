echo $domain | waybackurl | tee $domain-waybak.txt
echo $domain | gau | tee $domain-gau.txt
cat $domain-waybak.txt $domain-gau.txt | sort | uniq | tee -a $domain-way-gau.txt
paramspider --domain $domain -o /dev/null | grep ^http | tee $domain-paramspider.txt
github-endpoints.py -t $token -d $domain | tee -a $domain-githubendpoints.txt
