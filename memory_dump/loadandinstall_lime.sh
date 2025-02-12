# Install LiME
sudo apt-get install linux-headers-$(uname -r)
git clone https://github.com/504ensicsLabs/LiME.git
cd LiME
make

# Load the LiME kernel module to capture memory
sudo insmod lime-6.11.2-amd64.ko "path=/mnt/usb/memdump.lime format=lime"

echo "Memory dump captured to /mnt/usb/memory_dump.lime"
