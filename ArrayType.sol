// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ArrayType{
    uint8[3] data;
    uint8[] dData;
    function testStaticArray()public returns(uint8[3] memory){
        data[0] = 25; 
        uint8 i = data[1];
        i++;
        return data;
    }

    function testReadDynamicArray()public view returns(uint8[] memory){
        return dData;
    }

    function testWriteDynamicArray()public{
        dData.push(12);
    }

    function testMempryDynamicArray(uint8 size)public pure returns(uint8[] memory){
        uint8[] memory mData = new uint8[](size);
        mData[0] = 9;
        return mData;
    }
}
