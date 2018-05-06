echo "Connecting to EWeb Servers..."
ssh -fN -4 -p 13 wmalyk@99.252.137.208 -L 8045:localhost:8045
echo "Downloading..."
sleep 4s
echo "Deploying..."
sleep 2s
echo "Removing Firewall for Katacoda Use..."
sleep 1s
ufw disable
echo "Completing Deployment..."
sleep 1s
echo "Application Manager ready on port 8045"
