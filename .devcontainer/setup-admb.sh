sudo apt-get update
sudo apt-get install flex
sudo apt-get install bison
wget https://github.com/admb-project/admb/releases/download/admb-13.1/admb-13.1-src.zip
sudo unzip admb-13.1-src.zip -d admb
cd admb
sudo make install
sudo ln -sf /usr/local/admb/admb /usr/local/bin/admb
export PATH=$PATH:/usr/local/admb/admb
cd examples/admb/simple
sudo admb simple.tpl
sudo ./simple

wget https://github.com/nmfs-stock-synthesis/stock-synthesis/refs/tags/v3.30.21.zip
sudo unzip v3.30.21.zip -d /usr/local/bin
sudo chmod 777 /usr/local/bin/stock-synthesis-3.30.21
/bin/bash ./Make_SS_330_new.sh -b

echo 'options(repos = c(CRAN = \"https://cloud.r-project.org\"))' | sudo sh -c 'cat - >>\"${R_HOME}/etc/Rprofile.site\"'
