#! /bin/bash
cd /etc/apt/
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free
" >> sources.list
cd /home/ggleconsole/
wget http://http.kali.org/pool/main/k/kali-archive-keyring/kali-archive-keyring_2022.1_all.deb 
apt install ./kali-archive-keyring_2022.1_all.deb 
apt update && apt upgrade
apt install sqlmap dirbuster set wpscan hydra john sherlock wfuzz nikto whatweb goldeneye hping3 recon-ng wordlists hash-identifier 
apt update && apt upgrade
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-386.tgz
tar xf ngrok*
./ngrok config add-authtoken 1xcuueDtkP2dXGMOIif4zY0sFg1_7hCkRxddJ3s5sDmP59TyD
mv ngrok /bin/
