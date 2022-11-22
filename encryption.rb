require 'digest'

puts 'Введите слово или фразу для шифрования:'
word = $stdin.gets.chomp

puts <<~CHOICE
  Каким способом зашифровать:
  1. MD5
  2. SHA1
CHOICE
choice = $stdin.gets.to_i

encrypt_word =
  case choice
  when 1
    Digest::MD5.hexdigest(word)
  when 2
    Digest::SHA1.hexdigest(word)
  end

puts 'Вот что получилось:'
puts encrypt_word
