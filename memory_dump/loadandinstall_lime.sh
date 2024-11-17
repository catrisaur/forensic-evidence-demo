# Install LiME
sudo apt-get install linux-headers-$(uname -r)
git clone https://github.com/504ensicsLabs/LiME.git
cd LiME
make

# Load the LiME kernel module to capture memory
sudo insmod lime.ko "path=/tmp/memory_dump.lime format=lime"

echo "Memory dump captured to /tmp/memory_dump.lime"
