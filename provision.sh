
sudo apt-get update
sudo apt-get install libpcre3-dev zlib1g-dev libssl-dev -y
sudo apt-get install curl  -y
sudo apt-get install git -y
sudo apt-get install make -y
wget http://nginx.org/download/nginx-1.13.4.tar.gz 
tar zxf nginx-1.13.4.tar.gz
cd nginx-1.13.4 
git clone https://github.com/arut/nginx-rtmp-module.git
./configure --add-module=$(pwd)/nginx-rtmp-module
make
sudo make install
NGINX_PATH="/usr/local/nginx/sbin/"
export PATH=$PATH:$NGINX_PATH
sudo cp /vagrant_data/nginx.conf  /usr/local/nginx/conf/ && sudo nginx -s reload
sudo nginx

