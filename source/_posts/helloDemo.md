title: 安装Nginx - CentOS
date: 2015-10-20 23:50:54
tags: Nginx CentOS Linux
---
>　http://www.centoscn.com/image-text/install/2014/0812/3480.html

#安装准备#

首先由于nginx的一些模块依赖一些lib库，所以在安装nginx之前，必须先安装这些lib库，这些依赖库主要有g++、gcc、openssl-devel、pcre-devel和zlib-devel 所以执行如下命令安装

```
$   yum install gcc-c++  
02. $   yum install pcre pcre-devel  
03. $   yum install zlib zlib-devel  
04. $   yum install openssl openssl--devel  

```

#安装Nginx#
安装之前，最好检查一下是否已经安装有nginx

```
01. $   find -name nginx  
```

#如果系统已经安装了nginx，那么就先卸载#
```
01. $   yum remove nginx  
```
#首先进入/usr/local目录


```
cd /usr/local  
```

从官网下载最新版的 `nginx`



```
01. $   wget http://nginx.org/download/nginx-1.7.4.tar.gz  
```
解压nginx压缩包



```
01. $   tar -zxvf nginx-1.7.4.tar.gz  
```
会产生一个nginx-1.7.4 目录，这时进入nginx-1.7.4目录



```
01. $   cd  nginx-1.7.4  
```
接下来安装，使用--prefix参数指定nginx安装的目录,make、make install安装


``` shell
01. $   ./configure  $默认安装在/usr/local/nginx   
02. $   make  
03. $   make install      
```

如果没有报错，顺利完成后，最好看一下nginx的安装目录


```
01. $   whereis nginx  
```
