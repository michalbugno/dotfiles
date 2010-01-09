URL=$1
if [ $# -eq 0 ]
then
  echo 'Usage: wrzuta.sh <adres na wrzucie z mp3>'
  exit
fi
URL=${URL//\/audio\//\/sr\/f\/}
wget -c $URL
