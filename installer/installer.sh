export GITHOME=$HOME/Git
export CONFHOME=$GITHOME/ConFiles
export INSTALLERHOME=$CONFHOME/INSTALLER
export EMACSCONFHOME=$HOME/Git/ConFiles/emac

printf "Do you want to use only c/c++?\n"
read input

if [ $input = "y" ]; then
    cd $EMACSCONFHOME
    mkdir backup
    cp elisp/{autopair-autoindent-setup.el,common-setup.el,cua-mode.el,emacs-company-setup.el,emacs-cpp-setup.el,flycheck-c.el,shortcut-key-setup.el,undo-tree.el} backup
    rm -rf elisp
    mv backup elisp
fi

sudo sed -i 's/archive.ubuntu.com/ftp.neowiz.com/g' /etc/apt/sources.list
sudo apt-get update

sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt-get install -y clang
sudo apt-get install -y emacs
sudo apt-get install -y guake
sudo apt-get install -y xfce4
sudo apt-get install -y zsh
sudo apt-get install -y fonts-powerline
cp $EMACSCONFHOME/.emacs $HOME
curl -L https://git.io/epre | sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

printf "Are you using Windows Subsystem for Linux?\n"
read input

if [ $input = "y" ]; then
    echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.bashrc
    echo "source $HOME/Git/ConFiles/sh/boot.sh" >> $HOME/.zshrc
fi

echo "export DISPLAY=:0.0" >> $HOME/.bashrc
echo "export DISPLAY=:0.0" >> $HOME/.zshrc

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' $HOME/.zshrc
