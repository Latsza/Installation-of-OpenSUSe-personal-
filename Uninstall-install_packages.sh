
#!/bin/bash
echo "you must run this script as Super User"

hostnamectl set-hostname Lumina_K1

# Remove unecesary packages 
zypper rm yast2 yast2-alternatives xscreensaver xterm
# Remove gtk-gnome apps
zypper rm gnome-logs gnome-chess gnome-mahjongg gnome-music gnome-sudoku gnome-contacts gnome-weather gnome-mines gnome-maps gnome-characters transmission transmission-gtk quadrapassel swell-foop lightsoff totem cheese yelp
# Remove utilities
zypper rm firefox polari evolution passwd iagno kgx vinagre dconf-editor gpk-prefs gpk-update-viewer seahorse

# Bluetooth
zypper in bluez bluez-tools

# Sakura Terminal
#git clone https://github.com/dabisu/sakura.git
#cmake .
#make 
#sudo make install

#cd ..

#install scrcpy
zypper addrepo https://download.opensuse.org/repositories/hardware/openSUSE_Tumbleweed/hardware.repo
zypper refresh
zypper install scrcpy
#scrcpy --video-codec=h264 --max-size=1920 --max-fps=60  --keyboard =uhid --stay-awake

# Install utilities 
zypper in htop cmake gstreamer-plugin-openh264 vim git moc plymouth firewalld firewall-config

# Install termusic
git clone http://github.com/tramahao/termusic.git
cd termusic
make full
make install
# run with ~/.local/share/cargo/bin/termusic

# Addlock packages
zypper addlock gnome-logs gnome-chess gnome-mahjongg gnome-music gnome-sudoku gnome-contacts gnome-weather gnome-mines gnome-maps gnome-characters transmission transmission-gtk quadrapassel swell-foop lightsoff totem cheese yelp yast2 yast2-alternatives xscreensaver xterm firefox polari evolution passwd iagno kgx vinagre dconf-editor gpk-prefs gpk-update-viewer seahorse

# Install aplications 
zypper in  alacarte inkscape  lollypop

# Install Mesa packages
zypper in Mesa Mesa-32bit Mesa-devel Mesa-demo dxvk

#Install nvidia drivers (i dont have plans to add them as i dont have a nvidia)

# Install wine-staging packages
zypper in wine-staging wine-staging-32bit

# Install Gaming
echo "Installing Gaming..."
zypper in steam lutris 

# Install gamemoded packages
zypper in gamemoded libgamemoded libgamemode0 libgamemode0-32bit 

# Install flatpak programs
echo "Installing flatpak programs..."
flatpak install  flathub com.github.tchx84.Flatseal
flatpak install  flathub org.gnome.Calendar
flatpak install  io.gitlab.librewolf-community
flatpak install  flathub org.mozilla.firefox
flatpak install  org.gtk.Gtk3theme.adw-gtk3
flatpak install  flathub net.nokyan.Resources
flatpak install  org.gtk.Gtk3theme.adw-gtk3-dark
flatpak install  flathub net.nokyan.Resources
flatpak install  org.gnome.World.Secrets
flatpak install  com.jwestall.Forecast
flatpak install  it.mijorus.gearlever
#change the torrent administrator varia for fragments
flatpak install  io.github.giantpinkrobots.varia
flatpak install  flathub io.gitlab.theevilskeleton.Upscaler
flatpak install  com.rtosta.zapzap
flatpak install  re.sonny.Junction
flatpak install  flathub io.frama.tractor.carburetor
flatpak install  flathub com.jeffser.Alpaca
# System installation
flatpak install flathub com.jeffser.Alpaca.Plugins.AMD
# User installation
flatpak install --user flathub com.jeffser.Alpaca.Plugins.AMD

# Gaming flatpack
flatpak install --noninteractive com.heroicgameslauncher.hgl
flatpak install --noninteractive com.vysp3r.ProtonPlus

# Configure flatpak to access .themes and .icons directories
echo "Configuring flatpak to access .themes and .icons directories..."
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --filesystem=$HOME/.icons
echo "```"

