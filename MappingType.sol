// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

contract MappingType{
    mapping(string=>uint256) public ages;

    string name1;

    function setAge(string memory name,uint256 age)public{
        ages[name] = age;
        name1 = name;
        name1 = "caca";
    }

    function getAge(string memory name) public view returns(uint256){
        return ages[name];
    }
}