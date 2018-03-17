echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.bashrc
echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.zshrc

printf "Do you want to use only c/c++?\n"
read input

export EMACSCONFHOME=$HOME/Git/ConFiles/emacs

if [ $input = "y" ]; then
    cd $EMACSCONFHOME
    mkdir backup
    cp elisp/{autopair-autoindent-setup.el,common-setup.el,cua-mode.el,emacs-company-setup.el,emacs-cpp-setup.el,flycheck-c.el,shortcut-key-setup.el,undo-tree.el} backup
    rm -rf elisp
    mv backup elisp
fi

sudo sed -i 's/kr.archive.ubuntu.com/ftp.neowiz.com/g' /etc/apt/sources.list
sudo sed -i 's/archive.ubuntu.com/ftp.neowiz.com/g' /etc/apt/sources.list
sudo apt-get update

sudo apt-get install -y gcc g++ clang build-essential emacs guake xfce4

sudo sed -i 's/ftp.neowiz.com/archive.ubuntu.com/g' /etc/apt/sources.list
sudo apt-get update

echo "export DISPLAY=:0.0" >> $HOME/.bashrc
echo "export DISPLAY=:0.0" >> $HOME/.zshrc
cp $EMACSCONFHOME/.emacs $HOME
