// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Election {
    string[] candidatesList =["Abhishek", "Raju", "Raj", "Nitesh"];
    uint256[][] candidatesData = [
        [27, 4, 15],
        [26, 10, 0],
        [28, 5, 0],
        [26, 0, 12]
    ];
    uint256[] candidateResult;
    string[] candidateStatus;

    function calculateResult() public {
        for (uint256 i= 0; i < candidatesData.length; i++) {
            for (uint256 j = 0; j < 1; j++) {
                if (candidatesData[i][2] == 0) {
                    andData(candidatesData[i][0], candidatesData[i][1]);
                }else {
                    andData(
                        candidatesData[i][0],
                        candidatesData[i][1],
                        candidatesData[i][2]              
                    );
                }
            }
        }
        for (uint256 i =0; i < candidateResult.length; i++) 
        {
            if (candidateResult[i] > 0) {
                candidateStatus.push(
                    string.concat(
                        "Candidate : ",
                        candidatesList[i],
                        "with result : ",
                        Strings.toString(candidateResult[i]),
                        " : is selected."
                    )
                );
            }
            else {
                candidateStatus.push(
                    string.concat(
                        "Candidate : ",
                        candidatesList[i],
                        "with result : ",
                        Strings.toString(candidateResult[i]),
                        " : is not selected."
                    )
                );
            }
        }
    }

    function andData(uint256 age, uint256 criminalCase) private  {
        candidateResult.push(age & criminalCase);
    }

    function andData(
        uint256 age,
        uint256 criminalCase,
        uint256 qualification
    ) private {
        candidateResult.push(age & criminalCase & qualification);
    }

    function candidateNames() public view returns (string[] memory) {
        return candidatesList;
    }
     
    function candidatesDatas() public view returns (uint256[][] memory){
        return candidatesData;
    }
    function printStatus() public view returns (string[] memory){
        return  candidateStatus;
    }
}