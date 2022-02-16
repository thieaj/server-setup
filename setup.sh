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
apt-get install unattended-upgrades
apt install docker-compose
dpkg-reconfigure unattended-upgrades
