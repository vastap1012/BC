// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    uint256 number;
    uint256[] evenNos= new uint256[](0);

    function getNumber(uint256 num) public {
        number = num;
        while (number>0) 
        {
            if (number%2==0){
                evenNos.push(number);
            }
            number--;
        }
    }

    function printEvenList() public view returns (uint256[] memory){
        return evenNos;
    }

}