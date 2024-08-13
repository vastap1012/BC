// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Operators {
    uint age;
    function entryYourAge(uint256 ageOfPerson) public {
        age = ageOfPerson;
    }

    function ternaryCondition() public view returns (string memory) {
        return (age>=23)?"You are allowed in the club.":"You are not allowed in the club.";
    }
}