wget https://github.com/admb-project/admb/releases/download/admb-13.1/admb-13.1-linux.zip
sudo unzip admb-13.1-linux.zip -d /usr/local/bin
sudo chmod 755 /usr/local/bin/admb-13.1/bin/admb
export PATH=$PATH:/usr/local/bin/admb-13.1/bin


wget https://github.com/nmfs-stock-synthesis/stock-synthesis/refs/tags/v3.30.21.zip
sudo unzip v3.30.21.zip -d /usr/local/bin
sudo chmod 755 /usr/local/bin/stock-synthesis-3.30.21
/bin/bash ./Make_SS_330_new.sh -b