cd plugins
git clone https://github.com/etherj/ethergit.solidity.language.git
git clone https://github.com/etherj/ethergit.solidity.compiler.git

git clone https://github.com/etherj/ethergit.ethereum.sandbox.git
cd ethergit.ethereum.sandbox
git fetch origin
git checkout -b feature/local origin/feature/local
cd ..

git clone https://github.com/etherj/ethergit.guests.count.git
git clone https://github.com/etherj/ether.camp.server.git
git clone https://github.com/etherj/ethergit.libs.git
cd ..
