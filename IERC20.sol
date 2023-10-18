// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

interface IERC20 {
    function name() external view returns(string memory);
    function symbol() external view returns(string memory);
    function decimals() external view returns(uint8);
}