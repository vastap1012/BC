// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Operators {
    uint num;
    function numberOperation(uint256 number) public {
        num = number;
    }
    function addAndAssign() public view returns (uint256){
        uint256 add = 1;
        add += num;
        return add;
    }
    function subAndAssign() public view returns (uint256){
        uint256 sub = 10;
        sub -= num;
        return sub;
    }
    function mulAndAssign() public view returns (uint256){
        uint256 mul = 2;
        mul *= num;
        return mul;
    }
    function divAndAssign() public view returns (uint256){
        uint256 div = 20;
        div /= num;
        return div;
    }
}