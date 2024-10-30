// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Ejercicio1 {

    event cambio(address indexed by, int newValue);

    int8 private contador;
    mapping(address => bool) private whitelist;

    constructor(address [] memory _whitelist){
        for(uint i = 0; i < _whitelist.length; i++)
            whitelist[_whitelist[i]] = true;
    }

    modifier onlyWhitelist(address _addr){
        require(whitelist[_addr], "No esta dentro de la whitelist");
        _;
    }

    modifier notificar(){
        _;
        emit cambio(msg.sender, contador);
    }

    
    function incrementar(address _addr) public onlyWhitelist(_addr) notificar {
        contador += 1;
    }

    function decrementar(address _addr) public onlyWhitelist(_addr) {
        contador -= 1;
    }

    function getContador(address _addr) public onlyWhitelist(_addr) view returns(int8)  {
        return contador;
    }
}