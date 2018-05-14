echo "Connecting to EWeb Servers..."

ssh -fN -4 -p 13 wmalyk@99.252.137.208 -L 8045:localhost:8045

echo "Deploying Module..."

echo 2

sleep 10s

echo "Initializing Scenario..."

sleep 2s

echo "Removing Firewall for Katacoda Use..."

sleep 1s

ufw disable

echo "Completing Initialization..."

sleep 1s

echo "Application Manager ready on port 8045, and at: http://99.252.137.208:8045"
