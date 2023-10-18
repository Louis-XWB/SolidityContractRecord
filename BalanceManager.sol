// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract BalanceManager{
    mapping(address=>uint256) public balanceOf;

    string public name = "BBDOLLAR";
    string public symbol = "BBDL";
    uint8 public decimals = 4;

    constructor(uint256 totalBalance){
        balanceOf[msg.sender] = totalBalance;
    }

    function transfer(address to,uint256 amount) public{
        uint256 fb = balanceOf[msg.sender];
        uint256 tb = balanceOf[to];

        require(amount <= fb,"from account do not have enough money!");

        fb -= amount;
        tb += amount;

        balanceOf[msg.sender] = fb;
        balanceOf[to] = tb;


    }
}