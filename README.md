# Self-Hosted Server Configuration Script

This script is what I consider a "base" Ubuntu/Debian install configuration.

- It checks for updates and upgrades and uses the `-f` flag to just install them. (Since this script should only be run
  on a new VM/VPS instance.)
- Installs Docker
- Install Docker-Compose v2

To use this script:

1. Connect to your VM/VPS as `root` via ssh: `root@1.2.3.4`
2. Copy and paste the below command into your shell:`git clone https://github.com/0xtaj/server-setup`
3. cd into the `server-setup` directory: `cd server-setup`
4. Make the `setup.sh` executable by running chmod against it:`chmod +x setup.sh`
5. Run setup.sh:`./setup.sh`