myvar=$(ps -efw | grep connector.py | grep -v grep | awk '{print $2}')
if test -z "$myvar"
then
  echo "empty"
  /usr/bin/python3 /home/pi/LavaTiles/chromecast-mqtt-connector/connector.py &
else
  echo "not empty"
  kill $(ps -efw | grep connector.py | grep -v grep | awk '{print $2}')
  rm /home/pi/LavaTiles/chromecast-mqtt-connector//chromecast.log
  /usr/bin/python3 /home/pi/LavaTiles/chromecast-mqtt-connector/connector.py &
fi
