// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract FilStaking {

address public owner;
    mapping(address => uint) public stakes;
    mapping(address => bool) public locked;

    event Staked(address indexed staker, uint amount);
    event Unstaked(address indexed staker, uint amount);
    event TokenTransfer(address indexed from, address indexed to, uint amount);

    constructor() public {
        owner = msg.sender;
    }

    function stake(uint _amount) public {
        require(msg.sender != address(0), "Cannot stake from address 0.");
        require(!locked[msg.sender], "Staker's tokens are locked.");
        require(_amount > 0, "Must stake a positive amount.");

        stakes[msg.sender] += _amount;
        emit Staked(msg.sender, _amount);
    }

    function unstake(uint _amount) public {
        require(msg.sender != address(0), "Cannot unstake from address 0.");
        require(!locked[msg.sender], "Staker's tokens are locked.");
        require(_amount > 0, "Must unstake a positive amount.");
        require(_amount <= stakes[msg.sender], "Cannot unstake more than staked amount.");

        stakes[msg.sender] -= _amount;
        emit Unstaked(msg.sender, _amount);
    }

    function transfer(address _to, uint _amount) public {
        require(msg.sender != address(0), "Cannot transfer from address 0.");
        require(_to != address(0), "Cannot transfer to address 0.");
        require(_amount > 0, "Must transfer a positive amount.");
        require(_amount <= stakes[msg.sender], "Cannot transfer more than staked amount.");

        stakes[msg.sender] -= _amount;
        stakes[_to] += _amount;
        emit TokenTransfer(msg.sender, _to, _amount);
    }

    function lock() public {
        require(msg.sender == owner, "Only owner can lock tokens.");
        locked[msg.sender] = true;
    }

    function unlock() public {
        require(msg.sender == owner, "Only owner can unlock tokens.");
        locked[msg.sender] = false;
    }
}
