#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Installing Termux Welcome UI..."

pkg update -y
pkg install figlet toilet -y

mkdir -p ~/.termux-welcome
cp welcome.sh ~/.termux-welcome/

grep -q "welcome.sh" ~/.bashrc || echo "bash ~/.termux-welcome/welcome.sh" >> ~/.bashrc

chmod +x ~/.termux-welcome/welcome.sh

echo "[✓] Installation complete. Restart Termux."
