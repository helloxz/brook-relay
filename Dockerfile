#基于alpine镜像制作
FROM alpine
WORKDIR /root
COPY *.sh /root/
RUN sh init.sh
CMD /root/run.sh