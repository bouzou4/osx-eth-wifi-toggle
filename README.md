# macOS Wi-Fi and Ethernet Network Multiplexer

This repository contains scripts and configurations to automate the switching between Wi-Fi and Ethernet connections on macOS based on the status of the Ethernet connection. The work is inspired by and builds upon a gist by GitHub user [albertbori](https://github.com/albertbori).

## Contents

1. `toggleAirport.sh`: A script that monitors the status of Ethernet and Wi-Fi connections, and switches between them as necessary.
2. `com.mine.toggleairport.plist`: A LaunchAgent plist file that macOS uses to execute the `toggleAirport.sh` script.
3. `setup.sh`: A script that automates the process of deploying the `toggleAirport.sh` script and `com.mine.toggleairport.plist` on your macOS system.

## Setup

1. Clone the repository to your local system.
2. Navigate into the repository directory.
3. Run `setup.sh` with `sudo` to set up the system:
    ```bash
    sudo ./setup.sh
    ```
    This script will modify the plist file to include the current user, move the necessary files to their appropriate locations, update permissions, and register the LaunchAgent with macOS.

## Usage

Once you've set up the scripts and configurations, your macOS system will automatically switch between Wi-Fi and Ethernet connections based on the status of the Ethernet connection.

If the Ethernet connection is active, the system will turn off Wi-Fi and use the Ethernet connection. If the Ethernet connection becomes inactive, the system will switch back to the Wi-Fi connection.

## Credit

This work is inspired by and builds upon a [gist](https://gist.github.com/albertbori/1798d88a93175b9da00b) by GitHub user [albertbori](https://github.com/albertbori).

## Disclaimer

Please use these scripts and configurations at your own risk. Always review and understand the scripts before executing them on your system.
