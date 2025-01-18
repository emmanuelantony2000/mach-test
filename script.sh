PRIVATE=$(cast wallet private-key --mnemonic-path "$MNEMONIC")
PUBLIC=$(cast wallet address --private-key "$PRIVATE")

ETH_FROM=$PUBLIC \
  forge script \
    --rpc-url=$BUILDBEAR_RPC_URL \
    --broadcast \
    --slow \
    --private-key=$PRIVATE \
    script/ServiceManagerTest.s.sol
