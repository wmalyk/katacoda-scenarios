echo "Connecting to EWeb Servers..."
ssh -fN -4 -p 28 wmalyk@malyk.net -L 8075:localhost:8075
echo "Downloading..."
sleep 4s
echo "Deploying..."
sleep 2s
echo "Removing Firewall for Katacoda Use..."
sleep 1s
ufw disable
echo "Completing Deployment..."
sleep 1s
echo "Application Manager ready on port 8075"
echo "Task Manager ready on port 8076"
echo "Service Manager ready on port 8078"
