pragma solidity ^0.4.21;

import './token/TransferLimitedToken.sol';


contract ARX is TransferLimitedTokens {
    uint256 public constant SALE_END_TIME = 1526479200; //  UTC time now, tempolaly

    function ADX(address _listener, address[] _owners, address manager) public
        TransferLimitedTokens(SALE_END_TIME, _listener, _owners, manager)
    {
        name = "ARX";
        symbol = "ARX";
        decimals = 18;
    }
}
