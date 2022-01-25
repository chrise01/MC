

#!/bin/sh
#cd /MC/MC-2
docker build  -t bedrock-1.18-2 .
docker volume create bedrock-server-1.18-data-2
docker run -d -it -p 192.168.10.39:19132:19132/udp --mount source=bedrock-server-1.18-data-2,target=/minecraft-server-data-2 bedrock-1.18-2
