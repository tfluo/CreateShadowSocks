# CreateShadowSocks

## 01. download python
sh 01.init_software.sh

## 02. install python
modify ssl in $python/Modules/Setup.dist  
configure  
make  
make install

## 03. install setuptools/pip

### install setuptools
 unzip setuptools-45.1.0.zip  
 cd setuptools-45.1.0  
 python(3) setup.py install  
 
---
### install pip
 tar zxf pip-20.0.2.tar.gz  
 cd pip-20.0.2  
 python(3) setup.py install

## 04. install shadowsocks
pip(3) install shadowsocks-2.8.2.tar.gz  
pip(3) install 2.9.1[1].zip

## 05. start shadowsocks
mkdir /opt/ssserver/
sh startss.sh

## 06. check iptables/firewalld service
iptables -A INPUT -p tcp -m state --state NEW -m tcp --dport 63832 -j ACCEPT<br>
== OR ==<br>
/etc/firewalld/zones/public.xml<br>
```xml
  <port protocol="tcp" port="xxxx"/>
```
