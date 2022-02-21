#TODO: Figure out the docker-compose issue at the end of this script.
#!/bin/bash
# Check for update and upgrade to latest versions
apt-get update && apt-get upgrade -y
# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
# Run the Docker Installer
sudo sh get-docker.sh
# Start Docker
sudo systemctl start docker
# Enable Docker on boot
sudo systemctl enable docker
# Make a persistent directory for Docker Compose v2
mkdir -p ~/.docker/cli-plugins/
# Download Docker Compose v2
curl -SL https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
# Make Docker Compose v2 executable
chmod +x ~/.docker/cli-plugins/docker-compose
# Install Docker Compose v2
curl -fL https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh
# Enable unattended upgrades in Ubuntu.
apt-get install unattended-upgrades
# Confirms unattended upgrades in Ubuntu.
dpkg-reconfigure unattended-upgrades
# I dont know why Docker is doing this, post install, but it wants this specific version of docker-compose installed. Beats me. Will review later. 
apt install docker-compose
