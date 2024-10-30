// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Ejercicio3 {
    string [] candidatos;
    uint8 [] votos;
    mapping(address => bool) participantes;

    constructor() {
        candidatos = ["Ana", "Pedro", "Leticia", "Nulo"];
        votos = [0,0,0,0];
    }

    modifier yaVoto(){
        require(participantes[msg.sender] == false, "El participante ya voto");
        _;
    }

    function votar(uint candidato) public yaVoto {
        participantes[msg.sender] = true;
        if(candidato >= 0  && candidato < 3)
            votos[candidato] += 1;
        else
            votos[3] += 1;
    }

    function indexMasVotos() internal view returns(int){
        uint max = 0;
        int idx = -1;
        bool empate = false;
        for(uint i = 0; i < candidatos.length-1; i++)
            if(votos[i] != 0 && max == votos[i])
                empate = true;
            else if(max < votos[i]){
                max = votos[i];
                idx = int(i);
            }
        if(idx != -1 && empate)
            return -2;
        return idx;

    }

    function ganador() public view returns(string memory){
        int masVotado = indexMasVotos();
        if(masVotado == -1)
            return "No se voto a nadie";
        else if(masVotado == -2)
            return "Hay empate";
        else
            return string.concat("El candidato mas votado es ", candidatos[uint(masVotado)]);
    }

    function nulos() public view returns(uint8){
        return votos[3];
    }
}