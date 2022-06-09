#### Instalation of window manager display manager and xorg server ####  

mkdir instalation
sudo pacman -S xorg-server i3-gaps xorg-apps xorg-xinit i3blocks i3lock alacritty
git clone --recurse-submodules https://github.com/nullgemm/ly
cd ly
make
sudo make install
sudo systemctl enable ly.service
cd ..

