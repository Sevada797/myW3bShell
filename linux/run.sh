#!/bin/bash
# This 3 lines will download and setup ngrok and php
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
sudo apt install php
ngrok config add-authtoken 26p3rvZocfT7VzraejQNoCjPNN6_6UqEGG1izGcbE8ewtBchT
# This will run php localhost server at port 7797
php -S 127.0.0.1:7797 -t ./ && ngrok http 7797
