# Smart Contract Example: Handling Assertions, Requires, and Reverts

This repository provides a simple example of a smart contract implemented in Solidity that demonstrates the usage of assertions, requires, and reverts for handling errors and exceptional conditions.

## Code Overview

The `AssertionExample` contract in this project showcases the usage of assertions, requires, and reverts. Let's look at the functions within the contract:

### `divide(uint256 _a, uint256 _b)`

This function performs division between two numbers `_a` and `_b`. Here's how it works:

- `require(_b > 0, "Divisor should be greater than 0.");` - This statement ensures that the divisor `_b` is greater than 0. If the condition evaluates to false, the execution of the function is immediately stopped, and the specified error message is reverted.

- The function then returns the result of `_a` divided by `_b`.

### `assertExample(uint256 _a, uint256 _b)`

This function showcases the usage of the `assert()` statement. It compares two numbers `_a` and `_b` and asserts that `_a` is greater than `_b`. Here's how it works:

- `assert(_a > _b);` - This statement verifies that `_a` is greater than `_b`. If the condition evaluates to false, it indicates an unexpected condition, and the execution of the contract is immediately reverted, causing the transaction to fail.

- The function then returns the result of `_a` minus `_b`.

### `revertExample(uint256 _a)`

This function demonstrates the usage of the `revert()` statement to revert the execution of the contract with a custom error message. Here's how it works:

- `if (_a == 0) { revert("Input value cannot be zero."); }` - This statement checks if the input value `_a` is zero. If the condition evaluates to true, the execution of the contract is immediately reverted, and the specified error message is returned.

- The function then returns the result of dividing 100 by `_a`.

## Usage

To use this smart contract, you need to deploy it on a blockchain platform that supports Solidity contracts, such as Ethereum. Here are the general steps:

1. Set up the development environment by installing the necessary tools, such as the Solidity compiler and a blockchain client.

2. Compile the smart contract using the Solidity compiler. Make sure to choose the appropriate compiler version specified in the contract.

3. Deploy the compiled contract on the desired blockchain network using a compatible wallet or development environment.

4. Interact with the deployed contract by calling its functions, such as `divide`, `assertExample`, and `revertExample`, with the required parameters.

## Notes

- It's important to handle errors and exceptional conditions properly in smart contracts to ensure the desired behavior and avoid vulnerabilities. The `require()`, `assert()`, and `revert()` statements are useful tools for handling errors, enforcing conditions, and reverting execution in Solidity.

- Make sure to thoroughly test and verify the behavior of smart contracts, including error scenarios, before deploying them on the blockchain to ensure their correctness and robustness.

## Authore

Amit Kumar

## License

This project is licensed under the [MIT License](LICENSE).
