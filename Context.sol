// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract Callee{
    uint public x;

    address public caller;

    address public eoaAddress;

    function setX(uint _x) public{
        caller = msg.sender;
        eoaAddress = tx.origin;
        x = _x;
    }
}

contract Caller{
    address calleeAddress;

    address public caller;

    address public eoaAddress;

    constructor(address _calleeAddress){
        calleeAddress = _calleeAddress;
    }

    function setCalleeX(uint _x)public {
        caller = msg.sender;
        eoaAddress = tx.origin;
        Callee callee = Callee(calleeAddress );
        callee.setX(_x);
    }
}
