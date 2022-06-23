// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract addFunc{
    function add(uint num_1, uint num_2)external pure returns(uint){
        return num_1 + num_2;
    }
}

contract myContract {
    function add(uint num_1, uint num_2)public pure returns(uint){
        return num_1 + num_2;
    }

    addFunc instance = new addFunc();
    uint public ans = instance.add(2,3);

    uint public internalAns = add(20, 10);
}

contract privateContract{
    function newAdd(uint num_1, uint num_2)private pure returns(uint){
        return num_1 + num_2;
    }
}

// this is not gonna work coz the function newAdd() is private

// contract newContract is privateContract{
//     uint ans = newAdd(2,4);
// }
