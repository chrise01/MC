RUN apt-get update && \
    apt-get install -y \
    unzip \
    curl \
    vim \
    && apt-get clean

EXPOSE 19132/udp

WORKDIR /minecraft-server-data

ADD https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.2.03.zip /minecraft-server-data

RUN unzip bedrock-server-1.18.2.03.zip && \
    rm bedrock-server-1.18.2.03.zip && \
    chmod +x bedrock_server

CMD LD_LIBRARY_PATH=. ./bedrock_server

VOLUME ["/minecraft-server-data"]

# - Dropped the --tag??
docker build -t bedrock-1.18 .
docker volume create bedrock-server-1.18-data
#
docker run -d -it -p 192.168.10.29:19132:19132/udp --mount source=bedrock-server-1.18-data,target=/minecraft-server-data bedrock-1.18
#
docker run -d -it -p 192.168.10.49:19132:19132/udp --mount source=bedrock-server-1.18-data,target=/minecraft-server-data bedrock-1.18

https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.2.03.zip


https://blog.ycshao.com/2020/05/17/how-to-set-up-minecraft-bedrock-server-in-docker/

Run

#List running containers - need Container ID
docker ps
#Attach container?
docker attach 81ca26163d14

192.168.10.29
192.168.10.49
