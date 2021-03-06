# 无需 root 运行
curl -O https://openresty.org/download/openresty-1.15.8.1rc2.tar.gz
tar zxvf openresty-*
cd openresty-*

export PATH=$PATH:/sbin

./configure \
  --with-http_v2_module \
  --with-http_ssl_module \
  --with-pcre-jit \
  --prefix=/home/jsproxy/openresty

make
make install

cd ..
rm -rf openresty-*