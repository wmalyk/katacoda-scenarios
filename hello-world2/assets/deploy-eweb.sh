echo "Connecting to EWeb Servers..."
ssh -fN -4 -p 13 wmalyk@99.252.137.208 -L 8048:localhost:8048
echo "Downloading..."
sleep 4s
echo "Deploying..."
sleep 2s
echo "Removing Firewall for Katacoda Use..."
sleep 1s
ufw disable
echo "Completing Deployment..."
sleep 1s
echo "Service Manager ready on port 8048"
