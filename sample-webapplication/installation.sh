#!/bin/bash

# Update system
sudo apt update -y

# Install nginx
sudo apt install nginx -y

# Start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Clone the repository
git clone https://github.com/yt-devops-projects/devops-projects.git

# Go to the sample web application directory
cd devops-projects/sample-webapplication || exit

# Copy index.html to nginx web root
sudo cp index.html /var/www/html/

# Restart nginx to apply changes
sudo systemctl restart nginx

echo "Nginx setup complete. Open your server IP in a browser."
