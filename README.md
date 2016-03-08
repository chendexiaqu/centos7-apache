# centos7-apache

centos7-apache コンテナの使用方法

## 1.git clone

```sh
$ git clone git@github.com:hidetarou2013/centos7-apache.git
```

## 2.docker build

```sh
$ cd centos7-apache
$ docker build -t hidetarou2013/centos7-apache .
$ docker build -t hidetarou2013/centos7-apache:Apache2.4.6 .
$ docker build -t hidetarou2013/centos7-apache:SSL .
$ docker build -t hidetarou2013/centos7-apache:PHP5.3.3 .

```

## 3.docker run

■WEBコンテンツ（in DockerHost）
/home/vagrant/web-contents/

```sh
$ docker run --name apache7 -i -t --rm -v "$PWD/"web-contents:/var/www/html -p 80:80 -p 443:443 hidetarou2013/centos7-apache
$ docker run --name apache7 -i -t --rm -v "$PWD/"web-contents:/var/www/html -p 80:80 -p 443:443 hidetarou2013/centos7-apache:Apache2.4.6
$ docker run --name apache7 -i -t --rm -v "$PWD/"web-contents:/var/www/html -p 80:80 -p 443:443 hidetarou2013/centos7-apache:SSL
$ docker run --name apache7 -i -t --rm -v "$PWD/"web-contents:/var/www/html -p 80:80 -p 443:443 hidetarou2013/centos7-apache:PHP5.3.3
```