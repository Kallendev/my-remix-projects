// SPDX-License-Identifier: MIT
pragma solidity^0.8.7;
contract StorangeExample {
    uint storedData;
    function set(uint x)public {
        storedData= x;
    }
    function get() public view returns (uint){
        return storedData;
    }

}