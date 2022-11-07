## Set for a fresh Fedora Workstation installation.
## Title is because I still can't believe there is a linux distribution with this name..

## PLEASE RUN AS SUDO



# TODO: create an if then to capture if the OS is using gnome or not
# maybe with 'systemctl | grep "Display Manager"' or 'echo $DESKTOP_SESSION'

# package installs, rust install, git clones
cd /tmp
wget https://raw.githubusercontent.com/RooneyMcNibNug/linux-scripts/master/dnf_installer.sh
chmod +x dnf_installer.sh
./dnf_installer.sh || exit

# setup cpm for perl and download some useful modules
wget https://raw.githubusercontent.com/RooneyMcNibNug/perl-admin/main/perl_setup.sh
chmod +x perl_setup.sh
./perl_setup.sh || exit

# setup aliases
wget https://raw.githubusercontent.com/RooneyMcNibNug/dotfiles/main/.bash_aliases
~/.bash_aliases
mv .bash_aliases ~/.bash_aliases
source ~/.bash_aliases
