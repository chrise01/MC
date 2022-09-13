

#!/bin/sh
#cd /MC-1
snap install docker
docker build  -t bedrock-1.19 .
docker volume create bedrock-server-1.18-data-1
docker run -it -p 192.168.10.29:19132:19132/udp --mount source=bedrock-server-1.19-data-1,target=/minecraft-server-data-1 bedrock-1.19
