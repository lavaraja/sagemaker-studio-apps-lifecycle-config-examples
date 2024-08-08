mkdir app & cd app
sudo apt-get update
sudo apt-get install wget
sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --no-check-certificate
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
