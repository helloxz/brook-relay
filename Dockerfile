#基于alpine镜像制作
FROM alpine
WORKDIR /root
COPY *.sh /root/
RUN sh init.sh
EXPOSE 9999
EXPOSE 9999/udp
CMD /root/run.sh
