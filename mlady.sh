## Set for a fresh Fedora Workstation installation.
## Title is because I still can't believe there is a linux distribution with this name..

## PLEASE RUN AS SUDO

# TODO: create an if then to capture if the OS is using gnome or not
# maybe with > systemctl | grep qDisplay Managerq or > echo $DESKTOP_SESSION

user=user # put your username here!

# package installs, rust install, git clones
cd /home/"$user"/Documents
git clone https://github.com/RooneyMcNibNug/linux-scripts 
cd linux-scripts
chmod +x dnf_installer.sh # https://github.com/RooneyMcNibNug/linux-scripts/blob/master/dnf_installer.sh
./dnf_installer.sh || exit

# setup cpm for perl and download some useful modules
# for now, just clone my repo - but un-comment to change this
cd ..
git clone https://github.com/RooneyMcNibNug/perl-admin
chown -R $user perl-admin
#cd  perl-admin
#chmod +x perl_setup.sh
#./perl_setup.sh || exit

# setup aliases
git clone https://github.com/RooneyMcNibNug/dotfiles
chown -R $user dotfiles
cd dotfiles
mv .bash_aliases ~/.bash_aliases
source ~/.bash_aliases

# populate app dotfiles
# the '\' in `\cp` forces overwrite of existing files with the same name
mkdir /home/"$user"/.config/audacious && \cp audacious/config /home/"$user"/.config/audacious/config
chown -R $user /home/"$user"/.config/audacious
mkdir /home/"$user"/.config/mpv && \cp mpv/mpv.conf /home/"$user"/.config/mpv/mpv.conf
chown -R $user /home/"$user"/.config/mpv
\cp mpv/input.conf /home/"$user"/.config/mpv/input.conf
mkdir /home/"$user"/.vscode && \cp .vscode/argv.json /home/"$user"/.vscode/argv.json
chown -R $user /home/"$user"/.vscode
mkdir /home/"$user"/.var/app/org.duckstation.DuckStation/config/duckstation && \cp duckstation/settings.ini /home/"$user"/.var/app/org.duckstation.DuckStation/config/duckstation/settings.ini
chown -R $user /home/"$user"/.var/app/org.duckstation.DuckStation/config/duckstation

# OPTIONAL: Install NVIDIA drivers
# sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda -y
