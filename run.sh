#!/bin/bash
# This file will download and setup ngrok and php
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
sudo apt install php
php -S 127.0.0.1:7797 -t ./ && ngrok http 7797
