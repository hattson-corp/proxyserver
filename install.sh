echo "[*] Updating the system .... "
echo "[*] Please until the process is runnig ..."
apt update > /dev/null
echo "[*] Installing firewall ....."
apt install ufw -y
echo "[*] Installing screen ....."
apt install screen -y
echo "[*] Oppening port 33080-33090 ...."
ufw allow 33081
ufw allow 33080
ufw allow 33082
ufw allow 33083
ufw allow 33084
ufw allow 33085
ufw allow 33086
ufw allow 33087
ufw allow 33088
ufw allow 33089
ufw allow 33090
echo "[+] Ports are opened."
echo "[*] Installing the proxy program ...."
apt install git -y
git clone https://github.com/snail007/goproxy
goproxy/./install_auto.s
echo "[+] Proxy program has been installed ."
echo "[*] Running the proxy on opened ports ...."
screen -S 000 -d -m -- sh -c "proxy http -p :33080"
screen -S 001 -d -m -- sh -c "proxy http -p :33081"
screen -S 002 -d -m -- sh -c "proxy http -p :33082"
screen -S 003 -d -m -- sh -c "proxy http -p :33083"
screen -S 004 -d -m -- sh -c "proxy http -p :33084"
screen -S 005 -d -m -- sh -c "proxy http -p :33085"
screen -S 006 -d -m -- sh -c "proxy http -p :33086"
screen -S 007 -d -m -- sh -c "proxy http -p :33087"
screen -S 008 -d -m -- sh -c "proxy http -p :33088"
screen -S 009 -d -m -- sh -c "proxy http -p :33089"
screen -S 010 -d -m -- sh -c "proxy http -p :33090"
echo "[+] All done go take a nap (;"
