# Create a 30GB swap file
sudo fallocate -l 30G /swapfile

# If fallocate is not supported:
# sudo dd if=/dev/zero of=/swapfile bs=1G count=30 status=progress

# Secure permissions
sudo chmod 600 /swapfile

# Format as swap
sudo mkswap /swapfile

# Enable swap
sudo swapon /swapfile

# Verify
swapon --show
free -h
