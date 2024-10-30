# Practica 2

1. Contador simple

Implemente un contrato que tenga una variable de estado que actúe como contador. Se debe poder incrementar, decrementar y obtener el valor del contador. Las operaciones tanto de lectura como de escritura del contador deben hacerla un conjunto determinado de addresses, es decir una whitelist. La administración del esta whitelist la hace el owner del contrato que se setea al momento de realizar el deploy del mismo. 

Cuando se modifica el contador debe disparar un evento con la información de quien fue que modificó el valor y cual es el nuevo valor.

[Ejercicio1.sol](Ejercicio1.sol)

2. Wallet personal

Implemente un contrato que permita al propietario depositar y retirar ether.
Asegúrese de que solo el propietario puede retirar fondos, pero cualquiera puede depositar.

[Ejercicio2.sol](Ejercicio2.sol)
   
3. Votacion

Implemente un contrato de votación donde los participantes pueden votar por diferentes candidatos.
Asegúrese de que un participante solo pueda votar una vez. Defina una función para declarar un ganador basado en quién tenga más votos.

[Ejercicio3.sol](Ejercicio3.sol)
 
4. Registro de usuarios

Implemente un contrato principal que actúe como un registro de usuarios.
Permita que los usuarios se registren con su dirección y un nombre de usuario.

[Registro.sol](Registro.sol)

Luego implemente un contrato secundario que actúe como un muro de mensajes, donde los usuarios registrados en el contrato principal puedan dejar mensajes.
Asegúrese de que solo los usuarios registrados puedan dejar mensajes en el muro.

[Muro.sol](Muro.sol)
