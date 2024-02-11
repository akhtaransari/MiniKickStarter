// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./Request.sol";

contract Campaign {
    
    address public manager;
    uint public  minimumContribuition;
    Request[] public  requestsArray; 
    mapping(address => bool) public  approvers;
    

    constructor(uint minimum){
        manager = msg.sender;
        minimumContribuition = minimum;

    }
    
    function contribute() public payable {
        require(msg.value >= minimumContribuition);
        approvers[msg.sender] = true;
    }
    // function createRequest(string memory description, uint value, address recipient) public restricted {
    //     Request memory newRequest = Request({
    //         description: description,
    //         value: value,
    //         recipient: recipient,
    //         completed: false,
    //         approvalCount: 0
    //     });
    //     requests.push(newRequest);
    // }

    function approvelRequest(uint index) public {

    }

    function finalizeRequest(uint index) public {
        // Request storage requestData = requestsArray[index];

        // require(!requestsArray[index].completed);
        // requestData[index].completed = true;
    }

    modifier restricted (){
        require(msg.sender == manager);
        _;
    }

}