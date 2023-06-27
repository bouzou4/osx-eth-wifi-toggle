#!/bin/bash

# Determine the current user
shelluser=$(whoami)

# Modify the contents of the .plist file before moving it
sed -i '' "s|<string>com.mine.toggleairport</string>|<string>com.$shelluser.toggleairport</string>|g" ./com.mine.toggleairport.plist

# Copy the script to the appropriate location
sudo cp ./toggleAirport.sh /Library/Scripts/

# Change the permissions of the script
sudo chmod 755 /Library/Scripts/toggleAirport.sh

# Copy the .plist to the appropriate location, modifying the filename
sudo cp ./com.mine.toggleairport.plist /Library/LaunchAgents/com.$shelluser.toggleairport.plist

# Change the permissions of the .plist file
sudo chmod 644 /Library/LaunchAgents/com.$shelluser.toggleairport.plist

# Load the .plist file to start the watcher
launchctl load /Library/LaunchAgents/com.$shelluser.toggleairport.plist
