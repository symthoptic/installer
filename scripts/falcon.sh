#!/bin/bash

# Script to install Node.js and clone the Falcon repository

# Exit immediately if a command exits with a non-zero status
set -e

# Variables
REPO_URL="https://github.com/Symthoptic/falcon"
REPO_DIR="falcon"

# Step 1: Update and install Node.js
echo "Updating system and installing Node.js..."
sudo apt update && sudo apt install -y nodejs npm

# Step 2: Clone the repository
echo "Cloning the repository from $REPO_URL..."
if [ -d "$REPO_DIR" ]; then
    echo "Repository already exists. Pulling the latest changes..."
    cd $REPO_DIR && git pull && cd ..
else
    git clone $REPO_URL
fi

# Step 3: Completion message
echo "Falcon repository and Node.js have been installed successfully!"

# End of script
