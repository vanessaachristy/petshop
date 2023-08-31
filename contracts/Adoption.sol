pragma solidity ^0.5.0;

contract Adoption {
    // Array of 16 Ethereum addresses for each adopters
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, "Pet-ID out of range");
        adopters[petId] = msg.sender; // address of account/smart contract that calls this function
        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}
