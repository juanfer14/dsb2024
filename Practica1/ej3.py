from cryptos import *

with open('words.txt', 'r') as file:
    words = file.read().rstrip()

coin = Bitcoin(testnet=True)
wallet = coin.wallet(words)

addr1 = wallet.new_receiving_address()
addr2 = wallet.new_receiving_address()

print("balance addr1: ", coin.get_balance(addr1))
print("balance addr2: ", coin.get_balance(addr2))
