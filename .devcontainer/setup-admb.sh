wget https://github.com/admb-project/admb/releases/download/admb-13.1/admb-13.1-linux.zip
sudo unzip admb-13.1-linux.zip -d /usr/local/bin
sudo chmod 755 /usr/local/bin/admb-13.1/bin/admb
export PATH=$PATH:/usr/local/bin/admb-13.1/bin

rm -rf SS330
rm -rf ss_osx.tar
mkdir SS330
/bin/bash ./Make_SS_330_new.sh -b SS330 -p
/bin/bash ./Make_SS_330_new.sh -b SS330 -o -p
