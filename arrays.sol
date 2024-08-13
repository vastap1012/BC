// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract WorkingWithArrays {
    uint256[] numbers;
    string[] names;

    function storeNosAndNames(
        uint256[] memory numbersList,
        string[] memory namesList
    ) public  {
        numbers = numbersList;
        names = namesList;
    }

    function retrieveList() public view returns 
    (uint256[] memory, string[] memory)
    {
        return (numbers, names);
    }


}