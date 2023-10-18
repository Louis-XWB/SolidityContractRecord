// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

import "ICallee.sol";

contract Caller{
    address calleeAddress;

    uint public xx;

    constructor(address _calleeAddress){
        calleeAddress = _calleeAddress;
    }

    function setCalleeX(uint _x)public {
        // ICallee callee = ICallee(calleeAddress );
        // callee.setX(_x);

        bytes memory callData = abi.encodeWithSignature("setY(uint256)", _x);
        (bool succuess,bytes memory result) = calleeAddress.call(callData);
        if(!succuess){
            revert("call failed");
        }

        // (uint x) = abi.decode(result, (uint));
        // xx = x;
    }
}