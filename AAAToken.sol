pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract AAAToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function AAAToken(address _owner)  UpgradeableToken(_owner) {
    name = "AAAToken";
    symbol = "AAA";
    totalSupply = 10000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}