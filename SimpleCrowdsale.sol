pragma solidity ^0.4.21;


interface SimpleCrowdsale {
    function getSoftCap() external view returns(uint256);
    function isContributorInLists(address contributorAddress) external view returns(bool);
    function processReservationFundContribution(
        address contributor,
        uint256 tokenAmount,
        uint256 tokenBonusAmount
    ) external payable;
}
