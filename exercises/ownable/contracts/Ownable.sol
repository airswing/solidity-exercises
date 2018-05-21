pragma solidity 0.4.23;

contract Ownable {
    address public owner;

    constructor() public {
        // set owner using deployer address (use msg.sender)
        owner = msg.sender;
    }

    // implement onlyOwner modifier that requires sender to be an owner
    modifier onlyOwner() {
      require(owner == msg.sender);
      _;
    }
    // implement transferOwnership that accepts and sets address of the new owner
    // only owner should be able to use transferOwnership (use onlyOwner modifier)
    function transferOwnership(address _newOwner) onlyOwner public {
      owner = _newOwner;
    }
}
