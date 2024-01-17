//SPDX-License-Identifier: MIT


/**
gas eqaution for gas payment: gas spent * gas price
1) gas is a unit of computation.
2) gas spent is the total amount of gas used in a txn
3) gas price is how much ether you are willing to pay per gas 

gas with higher price have a higher priority over those in lower gas price blocks
gas limit(max amount of gas you are willing to use for your txn set by you)
block gas limit(max amount of gas allowed in a block set by the network)
 */

pragma solidity ^0.8.20;

contract Gas{
    uint public i = 0;

    //using up all of the gas that you send causes your txn to fail
    //state changes are undone during this
    //gas spent here is not refunded
    function forever() public{
        //here, we run a loop until all the gas is spent
        //until the txn just fails
        while (true){
            i += 1;
        }
    }

}