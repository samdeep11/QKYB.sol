// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract QKYB is ERC20, Ownable {
    constructor() ERC20("QKYB", "QKYB") Ownable(msg.sender) {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }

    function rewardUser(address user, uint256 amount) public onlyOwner {
        _transfer(owner(), user, amount);
    }

    function redeem(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}