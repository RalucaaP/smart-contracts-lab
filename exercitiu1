// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PiggyBank {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() external payable {}

    // TODO: Modificați această funcție astfel încât doar owner-ul să o poată apela
    function withdraw() external {
        payable(msg.sender).transfer(address(this).balance);
    }
}
