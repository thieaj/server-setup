# Self-Host Server Configuration Install Script

This script is what I consider a "base" Ubuntu/Debian install configuration.

- It checks for updates and upgrades and uses the `-f` flag to just install them. (Since this script should only be run
  on a new VM/VPS instance.)
- Installs Docker
- Install Docker-Compose v2