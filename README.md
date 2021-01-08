# brook-relay
基于brook relay进行端口转发，打包为Docker镜像。



## 自行构建

```bash
#克隆代码
git clone https://github.com/helloxz/brook-relay.git
#进入代码目录
cd brook-relay
#构建Docker镜像
docker build -t brook-relay .
#运行容器
docker run -itd -e DIP="192.168.1.222" -e DPORT="22" -p 2293:9999 brook-relay
```

* DIP:为目标IP
* DPORT:目标端口
* 2293:本地主机端口（可自行修改）



## Docker hub

如果不想自行构建镜像的同学，也可以直接运行xiaoz已经构建好的镜像，命令为：

```
docker run -itd -e DIP="192.168.1.222" -e DPORT="22" -p 2293:9999 helloz/brook-relay
```

