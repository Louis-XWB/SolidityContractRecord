// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract CrossContactCall{
    address calleeAddress;

    constructor(address _calleeAddress){
        calleeAddress = _calleeAddress;
    }

    function setCalleeX(uint newAddress)public {
        // ICallee callee = ICallee(calleeAddress );
        // callee.setX(_x);

        bytes memory callData = abi.encodeWithSignature("changeOwner(address)", newAddress);
        (bool succuess,bytes memory result) = calleeAddress.call(callData);
        if(!succuess){
            revert("call failed");
        }
    }
}