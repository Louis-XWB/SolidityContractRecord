// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

import "ICallee.sol";

contract Callee is ICallee{
    uint public x;

    function setX(uint _x) external returns(uint){
        x = _x;
        return(x);
    }

    fallback() external {
        x = 999999;
     }
}