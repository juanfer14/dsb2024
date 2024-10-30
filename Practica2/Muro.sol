// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "./Registro.sol";

contract Muro {
    string [] private mensajes;
    Registro private registro;

    constructor(address _address_contrato){
        registro = Registro(_address_contrato);
    }

    modifier chequear(address _address){
        require(registro.estaRegistrado(_address), "Solo los usuarios registrados pueden dejar mensajes");
        _;
    }

    function comentar(address _address, string memory mensaje) public chequear(_address) {
        mensajes.push(mensaje);
    }

    function ver(uint idx) public view returns(string memory){
        if(idx >= 0 && idx < mensajes.length)
            return mensajes[idx];
        else
            return "Indice invalido o no hay mensajes";
    }
}