#!/bin/bash
# install-tools.sh - Run from Git Bash on Windows

chmod +x "$0"

echo "Installing development tools..."

# Install Docker Desktop
winget install -e --id Docker.DockerDesktop --accept-package-agreements --accept-source-agreements

# Install Git
winget install -e --id Git.Git --accept-package-agreements --accept-source-agreements

# Install Python
winget install -e --id Python.Python.3.12 --accept-package-agreements --accept-source-agreements

# Install Node.js (LTS)
winget install -e --id OpenJS.NodeJS.LTS --accept-package-agreements --accept-source-agreements

echo ""
echo "Installation complete. Restart your terminal, then verify with:"
echo "  docker --version"
echo "  docker-compose --version"
echo "  git --version"
echo "  python --version"
echo "  node --version"
echo "  npm --version"
