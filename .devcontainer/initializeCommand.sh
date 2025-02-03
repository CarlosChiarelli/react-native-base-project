#!/bin/bash
echo "Gathering IP for dev container"

# Extrai o endereço IP que aparece após a palavra 'src'
ip=$(ip route get 8.8.8.8 | grep -oP 'src \K[\d.]+')

echo "Determined IP: $ip"
echo "REACT_NATIVE_PACKAGER_HOSTNAME=$ip" > .devcontainer/.env
