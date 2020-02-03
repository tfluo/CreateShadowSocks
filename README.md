# CreateShadowSocks

## 01. download python
sh 01.init_software.sh

## 02. install python
modify ssl in $python/Modules/Setup.dist
configure
make
make install

## 03. install setuptools/pip
- unzip setuptools-45.1.0.zip
- cd setuptools-45.1.0
- python(3) setup.py install

- tar zxf pip-20.0.2.tar.gz
- cd pip-20.0.2
- python(3) setup.py install

## 04. install shadowsocks
pip(3) install shadowsocks

## 05. start shadowsocks
sh startss.sh
