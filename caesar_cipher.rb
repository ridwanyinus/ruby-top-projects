def caesar_cipher(text, shift)
  alphabet = ("a".."z").to_a
  cipher_text = ""

  text.each_char do |char|
    idx = alphabet.index(char.downcase)
    new_char = alphabet[(idx + shift) % 26]
    cipher_text << char =~ /[A-Z]/ ? new_char.upcase : new_char
  end

  cipher_text
end

# Example usage
puts caesar_cipher("What a string!", 5)
