sudo sed -e 's/\(us.\)\?archive.ubuntu.com/ftp.daumkakao.com/g' -e 's/security.ubuntu.com/ftp.daumkakao.com/g' < ${SL}.org > ${SL}
sudo apt-get update
sudo apt-get install gcc g++ build-essential emacs xfce4 -y
cp ~/Git/ConFiles/bash/.bash_aliases ~/
