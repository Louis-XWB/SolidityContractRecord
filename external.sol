// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract ExternalDemo{
    address public caller;

    function first() public {
        this.second();
    }

    function second()public  {
        caller = msg.sender;
    }
}