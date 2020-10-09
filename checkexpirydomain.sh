#!/bin/bash
DOMAINS="yourdomain1.com yourdomain2.com"
for domain in $DOMAINS

do

# get connect to domain and get expiry date in string
getEXPIRY=$(echo | openssl s_client -connect ${domain}:443 2>/dev/null | openssl x509 -noout -dates | grep notAfter)

# substring and get expiry date
expirydate=${getEXPIRY:9}

#get current date
currentdate=$(date) 
d1=$(date -d "$currentdate" +%s)
d2=$(date -d "$expirydate" +%s)
getnoofdays=$(( (d2 - d1) / 86400 ))

#echo $getnoofdays
if [ $getnoofdays -lt 24 ]; then
	echo "Expiry date: $expirydate" 
	echo "Domain $domain will expire in $getnoofdays days"
	echo "-----------------------------------------------"
	echo " "
	#curl -X POST --data-urlencode "payload={'text':'Expiry date: $expirydate \n Domain $domain will expire in $getnoofdays days \n -----------------------------------------------'}" ${SLACK_WEB_URL}

fi
		
done
