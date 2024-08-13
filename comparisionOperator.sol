// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Operator {
    uint256 number1;
    uint256 number2;
    
    function compareNumber(uint256 num1, uint256 num2) public  {
        number1 = num1;
        number2 = num2;
    }
    function comparisionOp() public view returns (string memory) {
        if(number1==number2){
            return "The numbers are equal.";
        }else if (number1!=number2){
            return "The numbers are not equal.";
        }else {
            return "The details are unavailable.";
        }
    }
}


