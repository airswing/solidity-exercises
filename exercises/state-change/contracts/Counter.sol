pragma solidity 0.4.23;

contract Counter {
    // define public count variable (uint) to store number of ticks
    uint counter = 0;

    function count() public view returns (uint) {
      return counter;
    }

    // implement tick() to increment counter
    function tick() public {
      counter++;
    }
    // implement reset() to reset counter back to 0
    function reset() public {
      counter = 0;
    }
}
