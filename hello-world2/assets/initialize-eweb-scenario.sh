echo "Connecting to EWeb Servers..."

ssh -fN -4 -p 13 wmalyk@99.234.141.68 -L 8048:localhost:8048

echo "Deploying Module..."

curl -H "Accept: application/json" -H "Content-Type: application/json" http://99.234.141.68:8048/api/initScenario2

sleep 10s

echo "Removing Firewall for Katacoda Use..."

sleep 1s

ufw disable

echo "Completing Initialization..."

sleep 2s

echo "Service Manager ready on port 8048, and at: http://99.234.141.68:8048"
