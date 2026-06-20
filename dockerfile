FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server curl nano

RUN mkdir -p /run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]