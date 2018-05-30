echo "Connecting to EWeb Servers..."

ssh -fN -4 wmalyk@99.252.137.208 -L 8073:localhost:8073

echo "Deploying Module..."

#curl -H "Accept: application/json" -H "Content-Type: application/json" http://99.252.137.208:8045/api/initScenario1

sleep 10s

echo "Removing Firewall for Katacoda Use..."

sleep 1s

ufw disable

echo "Completing Initialization..."

sleep 2s

echo "VNFD Validator ready on port 8073, and at: http://35.188.242.221:8073"
