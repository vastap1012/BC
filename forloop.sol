// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Storage {
    uint256 number;
    uint256[] tables= new uint256[](0);

    function getNumber(uint256 num) public {
        number = num;
        for (uint256 i=0; i<=10; i++) 
        {
            tables.push(number*i);
        }
    }

    function printTable() public view returns (uint256[] memory){
        return tables;
    }

}