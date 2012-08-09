class CaesarCipher
  def self.find_decrypted_letter(array, letter)
    array[array.find_index(letter) - 3] unless letter.nil?
  end

  def self.find_encrypted_letter(array, letter)
    array[array.find_index(letter) + 3] unless letter.nil?
  end

  def self.decrypt(encrypted_string)
    uppercase_letters = [*'A'..'Z']
    lowercase_letters = [*'a'..'z']
    message = String.new
    encrypted_string.each_char do |char|
      letter = char unless char =~ /[\s\d]/

      message += ' ' if letter.nil?
      next if letter.nil? 

      message += letter =~ /[a-z]/ ? find_decrypted_letter(lowercase_letters, letter) : 
                                     find_decrypted_letter(uppercase_letters, letter) 
    end
    message
  end

  def self.encrypt(string)
    uppercase_letters = [*'A'..'Z']
    lowercase_letters = [*'a'..'z']
    message = String.new
    string.each_char do |char|
      letter = char unless char =~ /[\s\d]/

      message += ' ' if letter.nil?
      next if letter.nil? 

      message += letter =~ /[a-z]/ ? find_encrypted_letter(lowercase_letters, letter) : 
                                     find_encrypted_letter(uppercase_letters, letter) 
    end
    message
  end
end