// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertionExample {

    function divide(uint256 _a, uint256 _b) external pure returns (uint256) {
        require(_b > 0, "Divisor should be greater than 0."); // Check if the divisor is greater than 0

        return _a / _b;
    }

    function assertExample(uint256 _a, uint256 _b) external pure returns (uint256) {
        assert(_a > _b); // Assert that `_a` is greater than `_b`

        return _a - _b;
    }

    function revertExample(uint256 _a) external pure returns (uint256) {
        if (_a == 0) {
            revert("Input value cannot be zero."); // Revert with a custom error message
        }

        return 100 / _a;
    }
}