# Start Ganache CLI in the background
ganache-cli &

# Wait for Ganache to start
sleep 5

migrate_output=$(truffle migrate)

# Retrieve the contract address
contract_address=$(echo "$migrate_output" | awk '/> contract address:/{print $NF}')

# Output the contract address
echo "Contract Address: $contract_address"

# Update the configuration file with the contract address
sed -i "s/\"contractAddress\": \".*\"/\"contractAddress\": \"$contract_address\"/" config.json
