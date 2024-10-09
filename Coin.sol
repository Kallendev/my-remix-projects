// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract Coin{
    address private minter;
    mapping(address=> uint)public balances;
    event Sent(address from,address to, uint amount);
    constructor(){
        minter = msg.sender;
    }
    function mint(address receiver,uint amount)public{
        require (msg.sender== minter);
        balances[receiver]+=amount;

    }
    error InsufficientBalance(uint required, uint available);
    function send(address receiver, uint amount) public{
    require (amount <=balances[msg.sender],"Insufficient balance");
    balances[msg.sender]-=amount;
    balances[receiver]+=amount;
    emit Sent(msg.sender,receiver,amount);
      
    }
}
