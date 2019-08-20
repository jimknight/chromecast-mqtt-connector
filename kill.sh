kill $(ps -efw | grep connector.py | grep -v grep | awk '{print $2}')
