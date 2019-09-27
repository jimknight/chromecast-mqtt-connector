myvar=$(ps -efw | grep connector.py | grep -v grep | awk '{print $2}')
if test -z "$myvar"
then
  echo "empty"
else
  echo "not empty"
  kill $(ps -efw | grep connector.py | grep -v grep | awk '{print $2}')
fi
