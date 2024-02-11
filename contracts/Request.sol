// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

 struct Request {
        string description;
        uint value;
        address recipient;
        bool completed;
        uint approvelCount;
        mapping(address => bool) approvels ;
}

