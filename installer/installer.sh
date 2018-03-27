echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.bashrc
echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.zshrc

printf "Do you want to use only c/c++?\n"
read input

export EMACSCONFHOME=$HOME/Git/ConFiles/emacs
cp $EMACSCONFHOME/.emacs $HOME

if [ $input = "y" ]; then
    cd $EMACSCONFHOME
    mkdir backup
    cp elisp/{autopair-autoindent-setup.el,common-setup.el,cua-mode.el,emacs-company-setup.el,emacs-cpp-setup.el,flycheck-c.el,shortcut-key-setup.el,undo-tree.el} backup
    rm -rf elisp
    mv backup elisp
fi

echo "export DISPLAY=:0.0" >> $HOME/.bashrc
echo "export DISPLAY=:0.0" >> $HOME/.zshrc

source apt-default-neowiz.sh

sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt-get install -y clang
sudo apt-get install -y build-essential
sudo apt-get install -y emacs
sudo apt-get install -y guake
sudo apt-get install -y xfce4

