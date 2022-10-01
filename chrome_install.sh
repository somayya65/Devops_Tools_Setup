#!/bin/bash
# Automatically installs Google Chrome for Debian and/or Kali
# https://yayprogramming.com
wget -O ~/Downloads/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
apt-get install -f -y
echo "[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Google Chrome
GenericName=Google Chrome
Exec=/usr/bin/google-chrome-stable --no-sandbox --user-data-dir
Terminal=false                                  
Icon=google-chrome
Type=Application
TargetEnvironment=Unity" > ~/Desktop/chrome.desktop
chmod +x ~/Desktop/chrome.desktop
rm -rf ~/Downloads/google-chrome-stable_current_amd64.deb
echo " === Google Chrome Shortcut is now on desktop! Enjoy. ==="
