
# Real-Time Kernel Installation for Ubuntu 22.04

This repository contains a script to install a real-time (low latency) kernel on Ubuntu 22.04, specifically tailored for applications requiring reduced audio recording latency.

## Overview

The provided script automates the process of adding the necessary Ubuntu kernel PPA and installing the real-time (RT) kernel. This kernel is optimized for low-latency operations, making it ideal for audio production and other real-time applications.

## Prerequisites

- Ubuntu 22.04 Desktop
- Internet connection
- Sufficient permissions (root)

## Usage

1. **Download the Script**: Clone this repository or download the script `install_rt_kernel.sh`.

2. **Make the Script Executable**:
   ```bash
   chmod +x install_rt_kernel.sh
   ```

3. **Run the Script**:
   ```bash
   sudo ./install_rt_kernel.sh
   ```

The script will perform the following actions:
- Update and upgrade the system packages.
- Add the Canonical Kernel Team's PPA.
- Install the `linux-lowlatency-hwe-22.04` kernel package.
- Update the GRUB configuration.

## Post-Installation

After the installation is complete, you need to reboot your system. During the boot process, the newly installed real-time kernel will be loaded.

## Caution

- This script alters your system's kernel. It is recommended to back up important data before proceeding.
- Kernel updates can affect system stability and compatibility with some hardware and drivers. Ensure to test the system thoroughly after installation.

## License

This script is provided "as is", without warranty of any kind, express or implied. Use it at your own risk.

## Contributions

Contributions to this script are welcome. Please ensure to test any changes thoroughly before submitting a pull request.

## Support

For support and queries, please open an issue in this repository.
