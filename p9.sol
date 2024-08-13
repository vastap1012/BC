// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.2;

contract allowDenyStudent {
    uint256[] public arr = [1,2,3,4,5,6,7,8,9,10];
    uint256 public rollNumber;
    uint256 public DD;

    function setRollNumber(uint256 _rollNumber) public {
        rollNumber = arr[_rollNumber];
    }

    function setDD(uint256 _DD) public {
        DD = _DD;
    }

    function arrayChecker() public view returns (string memory) {
        string memory finalOutput;

        uint256 operation = rollNumber & DD;

        if (operation % 2 == 0) {
            finalOutput = 'student is allowed.';
        } else {
            finalOutput = 'student is denied.';
        }

        return finalOutput;
    }
}
