# nginx-test
nginx-test
webサーバを手軽に動かす

# 今度
https://shiro-secret-base.com/?p=449
https://shiro-secret-base.com/?p=458

# 使い方
## Mac

```
git clone https://github.com/moritoki-study/nginx-test.git
docker image build -t nginx-test:latest .
docker run -d --name nginx-test -p 80:80 nginx-test:latest
docker-compose up 
# docker-compose up -d
```

このあと、http://127.0.0.1/　にアクセスすると表示される
コンテナに入るときは
```
docker exec -it nginx-test /bin/sh
```

## Linux

```
git clone https://github.com/moritoki-study/nginx-test.git
docker image build -t nginx-test:latest .
docker run -d --name nginx-test -p 80:80 nginx-test:latest
docker-compose up
# docker-compose up -d
```
port　８０解放
http://ec2-54-95-121-113.ap-northeast-1.compute.amazonaws.com:80/

### linux上で直に動かす時
```
sudo amazon-linux-extras install nginx1
sudo service nginx start
```
port　８０解放
http://ec2-54-95-121-113.ap-northeast-1.compute.amazonaws.com:80/
