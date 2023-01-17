// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.7;

contract KingHashOracle {
    address public owner;
    mapping(bytes32 => bytes32) public requests;
    event NewRequest(bytes32 indexed id, bytes32 data);
    event NewAnswer(bytes32 indexed id, bytes32 data);

    constructor() public {
        owner = msg.sender;
    }

    function requestData(bytes32 _id, bytes32 _data) public {
        require(msg.sender == owner, "Only owner can request data.");
        requests[_id] = _data;
        emit NewRequest(_id, _data);
    }

    function fulfillData(bytes32 _id, bytes32 _data) public {
        require(msg.sender != address(0), "Data cannot be fulfilled by address 0.");
        require(requests[_id] != "", "No request exists with that ID.");
        emit NewAnswer(_id, _data);
    }
 }