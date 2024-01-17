//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Arrays{
    //initializing an array
    uint[] public array;
    uint[] public array2 = [1, 2, 3];

    //creating a fixed array size of only 10 indicies
    uint[10] public fixedArray;


    function get(uint i) public view returns (uint){
        return array[i];
    }


    //returning a whole array
    function getArray() public view returns(uint[] memory){
        return array2;
    }
    //for putting elements into an array, this pushes the array length by 1
    function push(uint i) public {
        array.push(i);
    }
    //removes the last elements of the array, decrementing it by 1
    function pop()public{
        array.pop();
    }
    function getLength()public view returns(uint){
        return array.length;
    }
    function remove(uint index) public{
        //delete does not change the size of the array length
        //it resets the value at the index to its default value
        //int this case, since array has nothing within its index, it will be 0
        delete array[index];
    }
    function examples()external{
        //creates an array in memory only fixed sizes maybe created using this method
        uint[] memory a = new uint[](5);
    }

}