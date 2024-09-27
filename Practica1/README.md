# Practica 1

1. El script [ej1.py](ej1.py) genera una wallet y muestra las claves publicas y privadas extended, y dos direcciones de recepcion:
```
palabras:  intact curious pizza brisk fall apple since inspire version defy trick cable
clave privada extended:  tprv8gzCTJMUxtBSrHegWodP5nG17JAMuFzDdHAuNxQbgXqyuYh2w7aET2QVqAAKsvvK1D99mZ2nqP15oJCMxmZiu4oABEdUSWmGk1FC4XSXPrx
clave publica extended:  tpubDDgEbiPj7Fs7jkgUQTHyVBv7gKgJ4bB8CamgfUSu6oeNk2woZWPpdX2N1Hd8Zxw5VP3Y2Z41zwdAWLRYEoHiSwu6NGugV7xfVpN33v2v3FU
1er address de recepcion:  n2b1CgKGToEr63FiZxVPE3BSYFpGFYuKN1
2da address de recepcion:  mp4XCidihAXUYLCSdF9BPr8bpC3JTKsASL
```
- Luego lo que hice, es guardar las palabras generadas en el archivo "words.txt", para poder recuperar la wallet en el siguiente ejercicio.

2. El script "ej2.py"  recupera la wallet con el conjunto de palabras de "words.txt" y realiza una transaccion desde la primer direccion a la segunda (de recepcion), enviando 20 satoshis. Al final imprime el hash de la transaccion (txid), siempre y cuando tenga fondos la primer direccion, sino se levanta una excepcion por falta de fondos.

3. El script "ej3.py" recupera la wallet y devuelve el balance de la primer y segunda direccion de recepcion.
```
balance addr1:  {'confirmed': 40, 'unconfirmed': 0}
balance addr2:  {'confirmed': 60, 'unconfirmed': 0}
```
