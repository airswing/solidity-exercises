pragma solidity 0.4.23;

contract Airdrop {
    address[] public addresses;

    mapping(address => bool) public isSet;
    mapping(address => uint) public balances;

    // implement addAddress(address) that adds address to the addresses array
    // make a precondition that address is not a duplicate
    function addAddress(address _address) public {
      require(isSet[_address] == false, "Address is already set");
      addresses.push(_address);
      isSet[_address] = true;
    }
    // implement removeAddress(address) that removes address from the addresses array
    // make a precondition that address is already set
    function removeAddress(address _address) public {
      require(isSet[_address] == true, "Address is not set");
      isSet[_address] = false;
      for(uint i = 0; i < addresses.length; i++) {
        if(addresses[i] == _address) {
          isSet[_address] = false;
          balances[_address] = 0;
          delete addresses[i];
          break;
        }
      }
    }

    // implement airdrop(uint value) that increase balance of each address by specified value
    function airdrop(uint _value) {
      for(uint i = 0; i < addresses.length; i++) {
        if(isSet[addresses[i]]) {
          balances[addresses[i]] += _value;
        }
      }
    }
}
