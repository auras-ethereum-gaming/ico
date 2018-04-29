

const ADXtoknenCrowdSales = artifacts.require("./ADXtoknenCrowdSales.sol")

module.exports = function(deployer, network, accounts) {
  const _openingTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1 // one second in the future
  const _closingTime = _openingTime + (60 * 10) // 10 minutes
  const _rate = new web3.BigNumber(1000)
  const _wallet = accounts[0]
  const _cap =  1000000000
  const _goal = 1000000000
  const _token = "0x345ca3e014aaf5dca488057592ee47305d9b3e10"


  deployer.deploy(ADXtoknenCrowdSales, _openingTime, _closingTime, _rate, _wallet, _cap, _token ,_goal)
};

/*
TODO トークンアドレス直書きはやばいかもしれないので、以下のやり方を試してみる
https://ethereum.stackexchange.com/questions/41841/latest-zeppelin-samplecrowdsale-sol-token-moved-outside-of-contract
*/
