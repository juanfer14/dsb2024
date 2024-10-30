// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Ejercicio2 {
    address private owner;

    constructor() payable {
        owner = msg.sender;
    }

    modifier checkOwner(){
        require(msg.sender == owner, "Solo el propietario puede ejecutar esto");
        _;
    }

    receive() external payable {}

    function retirar(uint256 monto) public checkOwner {     
        require(address(this).balance >= monto, "Fondos insuficientes");
        payable(owner).transfer(monto);
    }

    function getBalance() external view returns(uint256){
        return address(this).balance;
    }
}