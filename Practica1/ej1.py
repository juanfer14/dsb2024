from cryptos import *

words = entropy_to_words(os.urandom(16))
print("palabras: ", words)
coin = Bitcoin(testnet=True)
wallet = coin.wallet(words)
print("clave privada extended: ",wallet.keystore.xprv)    
print("clave publica extended: ",wallet.keystore.xpub)     
addr1 = wallet.new_receiving_address()
print("1er address de recepcion: ", addr1)
addr2 = wallet.new_receiving_address()
print("2da address de recepcion: ", addr2)
