require_relative 'caesar_cipher'

print "Enter the string to be decrypted: "
puts "The decrypted message is: " + CaesarCipher.decrypt(gets)

print "Enter the message to be encrypted: "
puts "The encrypted message is: " + CaesarCipher.encrypt(gets)
