#基于alpine镜像制作
FROM alpine
WORKDIR /root
COPY init.sh /root
RUN sh init.sh
CMD /usr/bin/brook -f :9999 -t DIP:DPORT