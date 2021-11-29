// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract SimpleStorage {
    uint256 storedData;
    event onSetChange(uint256 value);

    function set(uint256 x) public {
        storedData = x;

        emit onSetChange(storedData);
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}
