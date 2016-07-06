program to install with apt-get:
git
zsh
ohmyzsh
vim
feh
lxappearance
compton
rofi
i3
i3blocks
tmux

git:
ohmyzsh
vundle
font awesome
.font folder

misc:

firefox theme
https://addons.mozilla.org/en-US/firefox/collections/horst3180/a/
vimperator

install dotfiles

gtk theme
arc-theme:
wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
sudo apt-get update
sudo apt-get install arc-theme

icons theme:
https://snwh.org/moka
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme
