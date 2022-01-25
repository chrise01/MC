RUN apt-get update && \
    apt-get install -y \
    unzip \
    curl \
    vim \
    && apt-get clean

EXPOSE 19132/udp

WORKDIR /minecraft-server-data-2

ADD https://minecraft.azureedge.net/bin-linux/bedrock-server-1.18.2.03.zip /minecraft-server-data-2

RUN unzip bedrock-server-1.18.2.03.zip && \
    rm bedrock-server-1.18.2.03.zip && \
    chmod +x bedrock_server

CMD LD_LIBRARY_PATH=. ./bedrock_server

VOLUME ["/minecraft-server-data-2"]
