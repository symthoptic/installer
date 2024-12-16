#!/bin/bash

set -e

######################################################################################
#                                                                                    #
# Project 'installer'                                                    #
#                                                                                    #
# Copyright (C) 2024, Symthoptic, <support@symthoptic.com>                    #
#                                                                                    #
#   This program is free software: you can redistribute it and/or modify             #
#   it under the terms of the GNU General Public License as published by             #
#   the Free Software Foundation, either version 3 of the License, or                #
#   (at your option) any later version.                                              #
#                                                                                    #
#   This program is distributed in the hope that it will be useful,                  #
#   but WITHOUT ANY WARRANTY; without even the implied warranty of                   #
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                    #
#   GNU General Public License for more details.                                     #
#                                                                                    #
#   You should have received a copy of the GNU General Public License                #
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.           #
#                                                                                    #






# GitHub repository URL
REPO_URL="https://github.com/Symthoptic/installer.git"
REPO_DIR="installer"
SCRIPTS_DIR="$REPO_DIR/scripts"

# Clone the repo if it doesn't exist
if [ ! -d "$REPO_DIR" ]; then
    echo "Cloning the repository..."
    git clone "$REPO_URL"
else
    echo "Repository already exists. Pulling latest changes..."
    cd "$REPO_DIR" && git pull && cd ..
fi

# Menu options
echo "Select a script to run:"
echo "1. Falcon (EOL)"
echo "2. Spaceport"
echo "3. Script Three"
echo "4. Exit"

read -p "Enter your choice: " choice

case $choice in
    1)
        echo "Running Falcon (EOL)..."
        bash "$REPO_DIR/scripts/falcon.sh"
        ;;
    2)
        echo "Running Spaceport"
        bash "$REPO_DIR/scripts/spaceport.sh"
        ;;
    3)
        echo "Running Script Three..."
        bash "$REPO_DIR/script_three.sh"
        ;;
    4)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

