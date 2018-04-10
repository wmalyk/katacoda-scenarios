echo "Connecting to EWeb Servers..."
ssh -fN -4 -p 28 wmalyk@malyk.net -L 8078:localhost:8078
echo "Downloading..."
sleep 4s
echo "Deploying..."
sleep 2s
echo "Removing Firewall for Katacoda Use..."
sleep 1s
ufw disable
echo "Completing Deployment..."
sleep 1s
echo "Service Manager ready on port 8078"