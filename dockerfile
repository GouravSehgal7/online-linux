FROM ubuntu:latest

RUN apt update && apt install -y curl

RUN curl -L \
https://github.com/tsl0922/ttyd/releases/latest/download/ttyd.x86_64 \
-o /usr/local/bin/ttyd

RUN chmod +x /usr/local/bin/ttyd

EXPOSE 7681

CMD ["ttyd","-W","bash"]