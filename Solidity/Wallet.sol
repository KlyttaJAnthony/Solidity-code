//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Wallet{

    address public owner;
    mapping(address => User) public users;

    struct User{
        address userAddress;
        uint allowance;
        uint validity;
    }
    event AllowanceRenewed(address user, uint allowance, uint timeLimit);
    event coinsSpent(address indexed receiver, uint amount);

    modifier onlyOwner(){
        msg.sender == owner;
        _;
    }
    constructor (){
        owner = msg.sender;
    }
    receive() external payable onlyOwner{}

    function getWalletBalance() public view returns (uint){
        return address(this).balance;
    }
    function renewAllowance(address _user, uint _allowance, uint _timeLimit) public onlyOwner{
        uint validity = block.timestamp + _timeLimit;
        users[_user] = User(_user, _allowance, validity);
        emit AllowanceRenewed(_user, _allowance, _timeLimit);
    }
    function myAllowance() public view returns(uint){
        return users[msg.sender].allowance;
    }
    function spendCoins(address payable _receiver, uint _amount) public {
        User storage user = users[msg.sender];
    require(block.timestamp < user.validity, "Validity Expired!!");
    require(_amount <= user.allowance, "Allowance not sufficient!!");

        user.allowance -= _amount;
        _receiver.transfer(_amount);
        emit CoinsSpent(_receiver, _amount);
    }
}

/**What is going on in this contract?

1) First we declare the variable called owner, this variable is for storing the address of the admin of the contract(the owner)
2) We then create a mapping called users that maps user addresses to a struct named User, where User is a struct type that stores a user's address, 
users allowance, and the validity till when the user can spend his allowance. Every time the admin renews the allowance of a user, 
this mapping gets updates for that particular user's address
3) We also create two events: AllowanceRenewed, and CoinsSpent to log whenever a user's allowance is renewed by the admin and whenever
a user spends coins respectively
4) We then create a modifer called onlyOwner that we use for functions that only the admin of the contract may call
5) the constructor of the contract assigns the deployer of the contract (msg.sender) as the owner or the admin of the contract

Functions:

1) the receive() function can only be called by the owner, this is because the function is denoted by the payable Owner keywords. Further, 
when the contract is deployed, the admin can send some ETH to the contract to fund it. This ETH can then be spent by the user as per their allowance.
2) the getWalletBalance() function returns the current total balance of the wallet.
3) the renewBalance() function is called by the admin to update the allowance of a user, and it takes three parameters: address, allowance, and time limit.
 it must first be initialized from the event  abstraction at the top, and we must map the stated variables to their attributes in the event.
 3A) _timeLimit is a parameter that is done in seconds. This value is then used to calculate the variable: validity till when the allowance can be sent.
 So for example, if the admin of the contract sets a particular time, lets say 100,000 seconds for a user, the user can spend his allowance before the 
 "current time + _timeLimit". block.timestamp is used to take the current time and then the _timeLimit is added to this to calculate the validity
 variable. Finally, the "users" mapping is updated against the user's address with the user's allowance details.
4) the myAllowance() function is used to return the pending allowance of a user. 
5) the spendCoins() function is called by a user to spend his/her coins. 
 5A) this takes two parameters: the receivers address and the amount to be spent. 
 5B) it has TWO require statements. The first checks the if the current time is less than the validity time, and the second require statement checks
 if the amount to be spent is less than or equal to the allowance of the user.
 Once these conditions are met, the function then updates the allowance of the user by subtracting the amount spent from the initial allowance.
 And then, it finally transfers the amount to the receivers address.

//it is important to update the state first before making the transfers i.e. updating the user's allowance in this case before transitioning the money.
this is useful to prevent attacks like reentrancy.
 */