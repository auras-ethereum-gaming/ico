const ADXtoken = artifacts.require("./ADXtoken.sol")

module.exports = (deployer) => {
  const _supply = 1000000000
  const _name   = "ADXtoken"
  const _symbol = "ADX"
  const _decimals = 0

  deployer.deploy(ADXtoken, _supply, _name, _symbol, _decimals)
}
