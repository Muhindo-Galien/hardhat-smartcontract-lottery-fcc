// SPDX-Lisence-Identifier: MIT

pragma solidity ^0.8.7;

error Raffle__NotEngouhETH()

contract Raffle{
    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee){
        i_entranceFee = entranceFee;
    }

    function enterRaffle(){
        // require(msg.value > i_entranceFee, "Not engouh ETH")
        if(msg.value > i_entranceFee){revert Raffle__NotEngouhETH()}
    }

    function getEntranceFee () public view returns(uint256){
        returns i_entranceFee;
    }
}