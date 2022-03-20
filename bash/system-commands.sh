# Install packages on ubuntu
sudo apt install cowsay fortune htop
echo hello | cowsay
fortune
fortune | cowsay

# Remove packages on ubuntu
sudo apt remove --purge fortune cowsay

# Show running processes
ps aux
htop
top

# Show free memory
free -h

# Show available disk space
df -h

# GPU stuff (nvidia)
nvidia-smi

# Change permissions of files
echo "echo Hello\ World" > script.sh
chmod +x script.sh
./script.sh
