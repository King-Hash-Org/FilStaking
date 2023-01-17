// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract KFil { 
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;

    event Transfer(address indexed from, address indexed to, uint value);
    event Approval(address indexed owner, address indexed spender, uint value);


    constructor() public {
    }

    function totalSupply() public view returns (uint) {
        return 1000000000;
    }

    function transfer(address _to, uint _value) public {
        require(balanceOf[msg.sender] >= _value, "Not enough balance.");
        require(_to != address(0), "Cannot transfer to address 0.");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
    }

    function approve(address _spender, uint _value) public {
        require(_spender != address(0), "Cannot approve address 0.");

        allowance[msg.sender][_spender] = _value;

        emit Approval(msg.sender, _spender, _value);
    }

    function transferFrom(address _from, address _to, uint _value) public {
        require(balanceOf[_from] >= _value, "Not enough balance.");
        require(_to != address(0), "Cannot transfer to address 0.");
        require(allowance[_from][msg.sender] >= _value, "Not enough allowance.");

        balanceOf[_from] -= _value;
        allowance[_from][msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(_from, _to, _value);
    }

    function balanceOf(address _owner) public view returns (uint) {
        return balanceOf[_owner];
    }

    function allowance(address _owner, address _spender) public view returns (uint) {
        return allowance[_owner][_spender];
    }
}