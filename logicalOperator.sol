// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Operators {
    bool ageOfPerson;
    bool prof;
    function getDetails(bool isAbove18,bool isStudent) public {
        ageOfPerson = isAbove18;
        prof = isStudent;
    }

    function andOp() public view returns (string memory) {
        if(ageOfPerson && prof){
            return "You can take admission";
        }else {
            return "You cannot take admission";
        }
    }

    function orOp() public view returns (string memory) {
        if(ageOfPerson || prof){
            return "You can take part in extra curricular activities";
        }else {
            return "You cannot take part";
        }
    }

    function notOp() public view returns (string memory) {
        if(!prof){
            return "You cannot enter College";
        }else {
            return "You can enter College";
        }
    }
}