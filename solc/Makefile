
build:
	docker run -e PUID=1000 -e PGID=1000 -v $(shell pwd)/sources:/sources ethereum/solc:stable -o /sources/output --abi --bin /sources/contract.sol --overwrite

json:
	docker run -e PUID=1000 -e PGID=1000  ethereum/solc:stable --standard-json < input.json > output.json

