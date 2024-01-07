#!/bin/bash

################################################################################
# Description: Real-time Kernel Installation Script
#
# This script is used to install the real-time (RT) kernel on an Ubuntu-based
# system. The RT kernel is designed for low-latency and real-time performance,
# making it suitable for audio processing, multimedia, and other time-sensitive
# applications.
#
# Please make sure to run this script with root privileges, as it requires
# administrative access to update and upgrade the system, add the Ubuntu kernel
# PPA, install the RT kernel, and update GRUB.
#
# After running this script, your system will be equipped with the real-time
# kernel. It is recommended to reboot your system to activate the new kernel.
#
# Note: Use caution when modifying your system's kernel, and ensure that it is
# compatible with your hardware and software requirements.
#
# Author: Erik Sikich
# Date: 2023-1-7
################################################################################


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
