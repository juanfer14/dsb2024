// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Registro {
    mapping(address => string) private usuarios;

    constructor() {

    }

    function estaRegistrado(address _address) public view returns(bool){
        return bytes(usuarios[_address]).length > 0;
    }

    function registrar(address _address, string memory nombre) external returns(bool) {
        bool ok = estaRegistrado(_address);
        if(ok)
            return false;
        else {
            usuarios[msg.sender] = nombre;
            return true;
        }
        
    }

}