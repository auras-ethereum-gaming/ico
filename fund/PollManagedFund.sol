pragma solidity ^0.4.21;

/**
 * @title PollManagedFund
 * @dev Fund callbacks used by polling contracts
 */
interface PollManagedFund {
    /**
     * @dev TapPoll callback
     * @param agree True if new tap value is accepted by majority of contributors
     * @param _tap New tap value
     */
    function onTapPollFinish(bool agree, uint256 _tap) external;

    /**
     * @dev RefundPoll callback
     * @param agree True if contributors decided to allow refunding
     */
    function onRefundPollFinish(bool agree) external;
}
