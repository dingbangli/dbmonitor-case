#!/bin/bash

#lamp-x86_64
#httpd-2.2.27
#php-5.5.16

yum -y install gcc gcc-c++  make cmake automake autoconf kernel-devel ncurses-devel libxml2-devel openssl-devel curl-devel libjpeg-devel libpng-devel  pcre-devel libtool libtool-libs freetype-devel gd zlib-devel file bison patch mlocate flex diffutils   readline-devel glibc-devel glib2-devel bzip2-devel gettext-devel libcap-devel openldap openldap-devel libxslt-devel sqlite-devel

tar xvzf httpd-2.2.27.kiwi.tar.gz -C /usr/local/src/
tar zxvf php-5.5.16.kiwi.tar.gz -C /usr/local/src/
tar zxvf libevent-2.0.21-stable.tar.gz -C /usr/local/src/
tar zxvf memcached-1.4.20.tar.gz -C /usr/local/src/
tar zxvf memcache-3.0.8.tgz -C /usr/local/src/
tar zxvf libmcrypt-2.5.8.tar.gz -C /usr/local/src/
tar zxvf mhash-0.9.9.9.tar.gz -C /usr/local/src/
tar zxvf mcrypt-2.6.8.tar.gz -C /usr/local/src/

cd /usr/local/src/httpd-2.2.27/
./configure --prefix=/usr/local/web/apache2 --enable-ssl --enable-so  --enable-vhost-alias  --with-mpm=prefork
make
make install
mkdir /home/null
mkdir /usr/local/web/apache2/conf/extra/vhost-list
\cp httpd.conf.kiwi             /usr/local/web/apache2/conf/httpd.conf
\cp httpd-mpm.conf.kiwi         /usr/local/web/apache2/conf/extra/httpd-mpm.conf
\cp httpd-vhosts.conf.kiwi      /usr/local/web/apache2/conf/extra/httpd-vhosts.conf
\cp httpd-default.conf.kiwi     /usr/local/web/apache2/conf/extra/httpd-default.conf
\cp index.php                   /home/null/

cd /usr/local/src/php-5.5.16/

'./configure' '--prefix=/usr/local/web/php' '--with-apxs2=/usr/local/web/apache2/bin/apxs' '--with-mysql' '--with-mysqli=/usr/bin/mysql_config' '--disable-cgi' '--with-iconv' '--disable-inline-optimization' '--enable-mbstring=tw' '--enable-sysvshm' '--enable-sysvsem' '--enable-sockets' '--with-jpeg-dir' '--with-png-dir' '--with-gd' '--with-zlib' '--with-curl' '--enable-zip' '--with-openssl-dir=/usr/lib/openssl' '--with-openssl' '--enable-opcache'

make
make install

cd /usr/local/src/libevent-2.0.21-stable/
./configure --prefix=/usr/
make && make install

cd /usr/local/src/memcached-1.4.20/
./configure --prefix=/usr/
make && make install

cd /usr/local/src/memcache-3.0.8/
/usr/local/web/php/bin/phpize
./configure --enable-memcache --with-php-config=/usr/local/web/php/bin/php-config --with-zlib-dir
make && make install

rm -rf /etc/php.ini
cd /usr/local/src/php-5.5.16/
\cp php.ini.kiwi         /usr/local/web/php/lib/php.ini
ln -s /usr/local/web/php/bin/php        /usr/local/bin/php
ln -s /usr/local/web/php/lib/php.ini     /etc/php.ini

cd /usr/local/src/libmcrypt-2.5.8/
./configure
make
make install

cd /usr/local/src/mhash-0.9.9.9/
./configure
make
make install

cd /usr/local/src/mcrypt-2.6.8/
LD_LIBRARY_PATH=/usr/local/lib ./configure
make
make install

cd /usr/local/src/php-5.5.16/ext/mcrypt/
/usr/local/web/php/bin/phpize
./configure --with-php-config=/usr/local/web/php/bin/php-config
make
make install

/usr/local/web/apache2/bin/apachectl -t
/usr/local/web/apache2/bin/apachectl restart
/usr/local/web/php/bin/php -m | grep mcrypt
mcrypt -v

