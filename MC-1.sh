

#!/bin/sh

cd ~/Desktop
md MC-1
cd MC-1
docker build  -t bedrock-1.18 .
docker volume create bedrock-server-1.18-data-1
docker run -d -it -p 192.168.10.29:19132:19132/udp --mount source=bedrock-server-1.18-data-1,target=/minecraft-server-data bedrock-1.18


#https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.2.03.zip

#https://blog.ycshao.com/2020/05/17/how-to-set-up-minecraft-bedrock-server-in-docker/

#
#List running containers - need Container ID
docker ps
#Attach container?
docker attach 81ca26163d14

192.168.10.29
192.168.10.49
