title: vagrant - 安装 一
date:
tags: vagrant
---
**VirtualBox**
下载：https://www.virtualbox.org/

**Vagrant**
下载：https://www.vagrantup.com/

**Box**
http://www.vagrantbox.es/

**安装Box**
```
vagrant box add hefeng centeros.box
```

**切换至对应初始目录**
```
vagrant init hefeng
```
OK 的话当前-目录会生成Vagrantfile文件，并进行网络配置

**启动**
```
vagrant up
```
登录的帐号密码均为 vagrant ，登录之后如果需要 su root ，密码也是 vagrant
注：使用 vagrant ssh 时，会提示可以使用密钥进行登录，如果需要使用putty进行密钥登录的话，需要下载 puttygen 将 ssh 的密钥转换为 ppk 文件才能使用。
```
vagrant ssh
```

```
Host: 127.0.0.1
Port: 2222
Username: vagrant
Private key: E:/dev/.vagrant/machines/default/virtualbox/private_key
```

下载SSH 工具（windows)
http://mobaxterm.mobatek.net/MobaXterm_v8.4.zip

链接时选择上方 Private key


**设置端口转发**

服务器：192.168.0.236 : 22
  vagrant1:127.0.0.1(192.168.0.115) 2222
本机：127.0.0.1:8080
