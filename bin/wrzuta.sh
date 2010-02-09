URL=$1
if [ $# -eq 0 ]
then
  echo 'Usage: wrzuta.sh <adres na wrzucie z mp3>'
  exit
fi
URL=${URL//\/audio\//\/sr\/f\/}
FILENAME=`basename $URL`".mp3"
wget -c $URL -O $FILENAME
open $FILENAME
sleep 20
rm $FILENAME
