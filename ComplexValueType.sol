// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ComplexValueType{
    function testAddress() public view returns(address){
        address addr = msg.sender;
        return addr;
    }
//0xDA0bab807633f07f013f94DD0E6A4F96F8742B53
    function testCurrentContractAddress() public view returns(address){
        address addr = address(this);
        return addr;
    }
    //0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3

    function testContract() public view returns(address){
        ComplexValueType complexValueType = this;
        return address(complexValueType);
    }

    function testFixedByteArray() public pure returns(bytes3){
        bytes3 data = 0x111111;
        bytes1 first = data[0];
        return data;
    }

    
}