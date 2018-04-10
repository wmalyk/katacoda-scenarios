echo "Connecting to EWeb Servers..."
ssh -fN -4 -p 28 wmalyk@malyk.net -L 8076:localhost:8076
echo "Deploying..."
sleep 2s
echo "Application Manager ready on port 8075"
