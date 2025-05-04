#!/bin/bash

# Function to install Ollama
install_ollama() {
    echo "Downloading and installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
}

# Function to uninstall Ollama
uninstall_ollama() {
    echo "Uninstalling Ollama..."
    sudo systemctl stop ollama
    sudo systemctl disable ollama
    sudo rm /etc/systemd/system/ollama.service
    sudo rm $(which ollama)
    sudo rm -r /usr/share/ollama
    sudo userdel ollama
    sudo groupdel ollama
    sudo rm -rf /usr/local/lib/ollama
}

# Install Ollama
install_ollama

# Ask for the model
echo "What model would you like to run?"
read -p "Enter the model you want to use: " model_name

# Run the selected model
echo "Running $model_name"
ollama run "$model_name"

# Uninstall Ollama
echo "Uninstalling Ollama"
uninstall_ollama
