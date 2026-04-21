// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    address public owner;

    struct Candidate {
        string name;
        uint votes;
    }

    Candidate[] public candidates;
    mapping(address => bool) public hasVoted;

    event Voted(address indexed voter, uint indexed candidateId);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Nu esti proprietarul!");
        _;
    }

    // TODO: Adaugă o funcție pentru a adăuga un candidat. Doar proprietarul poate face asta.
    function addCandidate(string memory _name) external onlyOwner {
        //codul tau aici
    }

    // TODO: Adaugă o funcție pentru a vota un candidat după index
    function vote(uint _candidateId) external {
        // 1. Asigură-te că votantul nu a votat deja
        //hint: require(!hasVoted[???], "Ai votat deja!");

        // Asigură-te că indexul candidatului este valid
        //hint: require(??? < ???.length, "Candidat invalid!");

        // 2. Incrementează voturile candidatului
        //hint: ???[_candidateId].votes++;

        // 3. Marchează votantul ca fiind 'votat'
        hasVoted[???] = ???;

        // 4. Emite evenimentul Voted
        emit Voted(???, ???);
    }

    // TODO: Adaugă o funcție pentru a obține numele câștigătorului
    function getWinner() external view returns (string memory winnerName) {
        uint highestVotes = 0;
        for (uint i = 0; i < ???.length; i++) {
            if (candidates[i].votes > ???) {
                highestVotes = ???[i].votes;
                ??? = candidates[i].name;
            }
        }
    }
}
