// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Modulus {
    uint256 num1;
    uint256 num2;
    uint256 date;
    uint256 month;
    uint256 year1;
    uint256 year2;

    function getDetails(uint256 dd, uint256 mm, uint256 yy1, uint256 yy2) public {
        date = dd;
        month = mm;
        year1 = yy1;
        year1 = yy2;

        num1 = dd & mm;
        num2 = yy1 | yy2;
    }

    function addModulus() public view returns (uint256){
        return addmod(num1, num2, date);
    }
    function mulModulus() public view returns (uint256){
        return mulmod(num1, num2, month);
    }
}