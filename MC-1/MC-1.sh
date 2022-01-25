

#!/bin/sh
#cd /MC-1
docker build  -t bedrock-1.18 .
docker volume create bedrock-server-1.18-data-1
docker run -d -it -p 192.168.10.29:19132:19132/udp --mount source=bedrock-server-1.18-data-1,target=/minecraft-server-data-1 bedrock-1.18
