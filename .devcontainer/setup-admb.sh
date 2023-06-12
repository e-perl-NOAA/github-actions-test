sudo apt-get update
sudo apt-get -y install flex
sudo apt-get -y install bison
wget https://github.com/admb-project/admb/releases/download/admb-13.1/admb-13.1-src.zip
sudo unzip admb-13.1-src.zip && mv admb-13.1 admb
sudo rm admb-13.1-src.zip
sudo chmod 777 admb
cd admb
sudo make
sudo cp -Rvf build/admb /usr/local/admb
sudo ln -sf /usr/local/admb/admb /usr/local/bin/admb
export PATH=$PATH:/usr/local/admb/admb
cd examples/admb/simple
sudo admb simple.tpl
sudo ./simple
cd /workflows/github-actions-test
wget https://github.com/nmfs-stock-synthesis/stock-synthesis/archive/main.zip
sudo unzip main.zip -d /usr/local/bin
sudo chmod 777 /usr/local/bin/stock-synthesis-main
cd /usr/local/bin/stock-synthesis-main
sudo make
mv /usr/local/bin/stock-synthesis-main/ss /workspaces/github-actions-test/ss
echo 'options(repos = c(CRAN = \"https://cloud.r-project.org\"))' | sudo sh -c 'cat - >>\"${R_HOME}/etc/Rprofile.site\"'