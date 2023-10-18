// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ContractStructure{
    uint256 public  balance;

    uint256  balance2;

    event BalanceAdded(uint256 oladValue,uint256 incre);

    constructor(uint256 defaultBalance) {
        balance = defaultBalance;
    }

    modifier IncrementRange(uint256 _incre){
        require(_incre>100,"too small");
        _;
    }

    function addBalance(uint256 _incre)public IncrementRange(_incre){
        uint256 oldValue = balance;
        balance += _incre;
        emit BalanceAdded(oldValue, _incre);
    }

    function testInt()public pure returns(uint){
        return type(uint256).max;
    }

    enum OrderState{layorder,payment}
    function enumTest()public pure returns(OrderState){
        OrderState state = OrderState.layorder;
        return  state;
    }
}


//0xd9145CCE52D386f254917e481eB44e9943F39138