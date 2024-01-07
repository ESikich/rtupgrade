#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Ensure the script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Update and upgrade the system
echo "Updating and upgrading your system..."
apt update && apt upgrade -y

# Add the Ubuntu kernel PPA
echo "Adding the Ubuntu kernel PPA..."
add-apt-repository ppa:canonical-kernel-team/ppa -y
apt update

# Install the RT kernel
echo "Installing the RT kernel..."
apt install linux-lowlatency-hwe-22.04 -y

# Update GRUB and clean up
echo "Updating GRUB..."
update-grub

echo "Real-time kernel installation is complete. Please reboot your system."
