//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**Constants are variables that cannot be modified. 
Their values are hard coeded.
A perk of these constants is that they can save gas fees */

contract Constants{

    //when writing constants, always uppercase them and use snake case

    address public constant MY_ADDRESS = 0x870037Cf5Bad86ec2559524a6496D30d16CD4cDB;
    uint public constant MY_UINT = 123;

}