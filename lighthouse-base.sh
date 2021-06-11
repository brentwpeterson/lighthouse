INPUT=test.csv
OLDIFS=$IFS
MYPATH=/tmp/lighthouse/
IFS=','
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }
while read filename url
do
#echo $MYPATH$filename

	lighthouse $url --output-path=$MYPATH$filename.html --output html --chrome-flags='--headless'

done < $INPUT
IFS=$OLDIFS
