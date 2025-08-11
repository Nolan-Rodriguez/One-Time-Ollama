#!/bin/bash

# Install Ollama
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh

# Select model
echo "Find models at https://ollama.com/search"
read -p "Select model (Model:Tag): " model_name

# Run model
echo "Running $model_name"
ollama run "$model_name"

# Uninstall Ollama
    echo "Uninstalling Ollama..."
    sudo systemctl stop ollama
    sudo systemctl disable ollama
    sudo rm /etc/systemd/system/ollama.service
    sudo rm $(which ollama)
    sudo rm -r /usr/share/ollama
    sudo userdel ollama
    sudo groupdel ollama
    sudo rm -rf /usr/local/lib/ollama
