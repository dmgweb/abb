#!/bin/bash

# Get public IP address
public_ip=$(curl -s http://ifconfig.me)

# Resolve hostname
hostname=$(hostname)

# Check connectivity with router
ping -c 1 8.8.8.8 
if [ $? -eq 0 ]; then
  echo "Public IP address: $public_ip"
  echo "Hostname: $hostname"
else
  echo "No connectivity with internet"
fi
