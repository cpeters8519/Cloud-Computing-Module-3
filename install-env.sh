#!/bin/bash

# Install dependencies here:

##############################################################################
# Installing Nginx
##############################################################################
sudo apt update -y
sudo apt install nginx unzip -y

##############################################################################
# Enable and start Nginx service
##############################################################################
sudo systemctl enable nginx
sudo systemctl start nginx
sleep 10

# Create a simple default page so HTTP requests return 200
echo "<html>
<head><title>Module 03</title></head>
<body>
<h1>Module 03 EC2 Instance</h1>
<p>This page is served from $(hostname)</p>
</body>
</html>" | sudo tee /var/www/html/index.html
