from cryptos import *

with open('words.txt', 'r') as file:
    words = file.read()

coin = Bitcoin(testnet=True)
wallet = coin.wallet(words)
# dir. de recepcion 1
addr1 = wallet.new_receiving_address()
# dir. de recepcion 2
addr2 = wallet.new_receiving_address()
# clave privada
priv = wallet.keystore.xprv
# dir. de cambio 1
addr1_change = wallet.new_change_address()
# 20 satoshis para enviar de addr1 a addr2
value = 20

priv1 = wallet.privkey(addr1)
tx = coin.preparesignedtx(priv1, addr1, addr2, value, change_addr=addr1_change)
txid = coin.pushtx(tx)
print(txid)
