//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Events{
    // mapping(uint => uint) public priceByProduct;

    // function addProduct(uint _productID, uint _price) public {
    //     priceByProduct[_productID] = _price;
    // }
    //this function allows us to add product detail in the mapping priceByProduct
    event ProductAdded(uint productID, uint price);
    function addProduct(uint _productID, uint _price) public {
        emit ProductAdded(_productID, _price);
    }
}
//Storing data in the txn logs through events is cheaper, but you cannot access the data within the smart contract
//the only way to access this data through events is through an external UI or a script. 
// if you don't need to access the data from inside the smart contract, you can use events as shown above: 