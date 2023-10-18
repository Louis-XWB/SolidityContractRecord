// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract Callee{
    uint public x;

    function setX(uint _x) public{
        x = _x;
    }
}

contract Caller{
    address calleeAddress;

    constructor(address _calleeAddress){
        calleeAddress = _calleeAddress;
    }

    function setCalleeX(uint _x)public {
        Callee callee = Callee(calleeAddress );
        callee.setX(_x);
    }
}
//0xf8e81D47203A594245E36C48e151709F0C19fBe8