wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "1vMG8QNG96XLiYdRXceMzqDV4ih_4qv3MFAU3vUNQCcVXNcsd" CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o lite10.qcow2 https://dw.uptodown.com/dwn/p334Md1MJIl4Q0hWY7zdf2UxGOGkFKwTx0uIiseWFQCs0L_zIKrDv2COoEfmwTFsPK5AeL47tm9ZzdgEa14USDc3t3UVnoV8Jx-yBrz66nJ8_V0wRgtAj9amO0CK4XOF/KB3jjIj74V8SAMRxf0sfGFiUpQPQW7GhyvBK0KJx9ypFTvOSFNi_LPfbW8_EDtmmuH9FOVPuoPA71C8_85ZEzeWyDbq6DvUgset-2mgzo2DyTOdklO1AmeZ6DUW7rjqI/3TufMa3PESsSIfJXWbazqPsc8edZ-vAIosOUP7UCXqkGUoziHrtuhh9h7yyZGcpBjaP0h-kVP8z5mmnyppkXV8bOzB9g9E6oFkAd4nVcTTo=/
echo "Windows 10 x64 Lite On Google Colab"
echo Your VNC IP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1

