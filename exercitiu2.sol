// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Allowance {
    address public owner;e

    constructor() {
        owner = msg.sender;
    }

    // TODO: Declară un mapping care stochează ce sold (allowance) are fiecare adresă
    // Sugestie: mapping(address => ???) public allowance;

    modifier onlyOwner() {
        require(msg.sender == owner, "Nu esti proprietarul!");
        _;
    }

    // TODO: Implementează această funcție astfel încât proprietarul să poată seta limita pentru orice adresă
    function setAllowance(address _who, uint _amount) external onlyOwner {
        // Codul tău aici:
    }

    // TODO: Implementează această funcție astfel încât oricine să își poată verifica propria limită
    function myAllowance() external view returns (uint) {
        // Codul tău aici:
        // Hint: return allowance[???];
    }
}
