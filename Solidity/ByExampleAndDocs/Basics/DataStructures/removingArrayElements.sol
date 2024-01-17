//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
removing elements from an array and shifting elements from left to right
*/

contract removeArrayElements{
    uint[] public array;

    function remove(uint _index) public{
        require(_index < array.length, "Index out of bounds");

        for (uint i = _index; i < array.length -1; i++){
            array[i] = array[i + 1];
        }
        array.pop();
    }
    function test() external{
        array = [1, 2, 3, 4, 5];
        remove(2);
        assert(array[0] == 1);
        assert(array[1] == 2);
        assert(array[2] == 4);
        assert(array[3] == 5);
        assert(array.length == 4);

        array = [1];
        remove(0);
        assert(array.length == 0);
        
    }
}