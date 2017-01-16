#!/bin/bash

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    --ethergit-ethereum-sandbox-branch)
    ETHERGIT_ETHEREUM_SANDBOX_BRANCH="$2"
    shift # past argument
    ;;
    --ethergit-solidity-compiler-branch)
    ETHERGIT_SOLIDITY_COMPILER_BRANCH="$2"
    shift # past argument
    ;;
    --ethergit-libs-branch)
    ETHERGIT_LIBS_BRANCH="$2"
    shift # past argument
    ;;
    *)
    # unknown option
    ;;
esac
shift # past argument or value
done

echo $ETHERGIT_SOLIDITY_COMPILER_BRANCH
echo $ETHERGIT_ETHEREUM_SANDBOX_BRANCH

cd ./plugins
git clone ssh://git@github.com/etherj/ethergit.solidity.language.git

git clone ssh://git@github.com/etherj/ethergit.solidity.compiler.git
cd ethergit.solidity.compiler
git checkout $ETHERGIT_SOLIDITY_COMPILER_BRANCH
cd ..

git clone ssh://git@github.com/etherj/ethergit.ethereum.sandbox.git
cd ethergit.ethereum.sandbox
git checkout $ETHERGIT_ETHEREUM_SANDBOX_BRANCH
cd ..

git clone ssh://git@github.com/etherj/ethergit.guests.count.git
git clone ssh://git@github.com/etherj/ether.camp.server.git

git clone ssh://git@github.com/etherj/ethergit.libs.git
cd ethergit.libs
git checkout $ETHERGIT_LIBS_BRANCH
cd ..

# plugins
git clone ssh://git@github.com/oraclize/ethereum-studio-ide-plugin.git ethereum.studio.oraclize
cd ../
