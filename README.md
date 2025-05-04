# One-Time-Ollama
This is a simple script I made that does the following:
1. Installs Ollama
2. Asks what model you want to run
3. Runs the model of your choice
4. Once you exit the model, it uninstalls Ollama and covers its tracks, removing all traces of Ollama from your system

# Usage
run the following command:
`curl -O https://raw.githubusercontent.com/Nolan-Rodriguez/One-Time-Ollama/refs/heads/main/One-Time-Ollama.sh && chmod +x One-Time-Ollama.sh && ./One-Time-Ollama.sh`

# Notes
- After you finish chatting with the AI. The script will uninstall Ollama. Part of the uninstallation is removing the ollama user and group. For some reason, when doing so userdel will give the message, "userdel: group ollama not removed because it has other members.", i'm not sure why, but this is a false alarm, as it actually does remove the ollama group, at least in my testing.
