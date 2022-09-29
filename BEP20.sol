// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token//ERC20/ERC20.sol";
contract Token is ERC20 {
 string public token_name = "Rusli Wu Coin";
 string public token_ticker = "RWC";
 constructor () ERC20(token_name, token_ticker) {
 _mint(msg.sender, 100000000000 * (10 ** uint256(decimals())));
 }
}
