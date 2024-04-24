# Start Ganache CLI in the background
echo "Starting Ganache CLI"
ganache-cli &

# Wait for Ganache to start
echo "Waiting for Ganache to start"
sleep 5
echo "No longer waiting"

migrate_output=$(truffle migrate --verbose-rpc)
echo "truffle migrate command output retrieved"

# Retrieve the contract address
echo "Retrieving Contract Address"
contract_address=$(echo "$migrate_output" | awk '/> contract address:/{print $NF}')

# Output the contract address
echo "Contract Address: $contract_address"

# Update the configuration file with the contract address
echo "Updated the config file with Contract Address"
sed -i "s/\"contractAddress\": \".*\"/\"contractAddress\": \"$contract_address\"/" config.json
