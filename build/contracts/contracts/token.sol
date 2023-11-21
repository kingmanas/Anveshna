//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";
 contract Saksham is ERC20{

address public owner;


    constructor() ERC20("Saksham","SSC"){
        _mint(msg.sender,100*10**18);
        owner = msg.sender;
    }
   
    

    function mintToken(address transferTo, uint256 amountTransfer) external {
        require(msg.sender == owner , "Not Owner");
        _mint(transferTo,amountTransfer);
}

    

    function burn(uint256 amountBurned) external {
        _burn(msg.sender,amountBurned);
    }
 }