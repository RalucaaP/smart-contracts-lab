// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    mapping(address => uint) public balances;

    // TODO: Declară un eveniment numit Transfer care jurnalizează (logs):
    // - de la (from - adresa)
    // - către (to - adresa)
    // - suma (amount - uint)

    constructor() {
        // Oferă celui care depliază contractul câteva jetoane
        balances[msg.sender] = 1000;
    }

    function transfer(address _to, uint _amount) external {
        // Verificare de securitate: cel care trimite trebuie să aibă destule jetoane
        require(balances[msg.sender] >= _amount, "Sold insuficient!");

        // Actualizarea balanțelor
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        // TODO: Emite evenimentul Transfer aici
        // Hint: ??? ???(msg.sender, _to, _amount);
    }
}
