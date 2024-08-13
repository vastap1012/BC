// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.6 <0.9.0;
import "hardhat/console.sol";

contract allowDenyStudent {
    uint256[10] public rollNumbers;

    function setRollNumber(uint _index,uint _rollNumber) public {
        rollNumbers[_index] = (_rollNumber);
    }

    function seperatingEvenOdd() public {
        for (uint i=0;i<rollNumbers.length; i++) {
            if(rollNumbers[i] % 2 == 0) {
                evenPositioned.push(rollNumbers[i]);
            } else {
                oddPositioned.push(rollNumbers[i]);
            }
        }
    }

    uint[] public evenPositioned;
    uint[] public oddPositioned;

    function OR_AND_Operation() public {
        uint resultOfOR = evenPositioned[0];
        for (uint i=1;i<evenPositioned.length; i++) {
            resultOfOR = resultOfOR | evenPositioned[i];
        }

        uint resultOfAND = oddPositioned[0];
        for (uint i=1;i<oddPositioned.length; i++) {
            resultOfAND = resultOfAND & oddPositioned[i];
        }
        productofresults = resultOfOR = resultOfAND;
    }

    uint256 public productofresults;

    function checkProductOfResults() public view returns (bool) {
        bool result;
        for (uint i=0; i<rollNumbers.length; i++) {
            result = (productofresults == rollNumbers [i]) ? true : false;
        }
        return result;
    }
}
