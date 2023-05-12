// SPDX-License-Identifier: MIT
//Official Smart Contract for Kortana token
//Check our official website: https://www.kortanalegacy.com/
pragma solidity 0.8.19;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Kortana is ERC20 {
    constructor(
        string memory name_,
        string memory symbol_,
        uint256 supply_
    )
        ERC20(name_, symbol_)
    {
        uint256 amount = supply_ * 10**decimals();
        _mint(_msgSender(), amount);
    }
}
