// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

interface ICallee{
    function setX(uint _x) external returns(uint);
}