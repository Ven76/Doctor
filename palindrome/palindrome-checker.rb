def reverse_string(string)
  reversed_string = ''
  (string.length - 1).downto(0).each { |number|  reversed_string << string[number] }
  reversed_string
end

while true
  puts "Input what you want checked for a palindrome (type quit to exit):"
  user_input = gets.strip.downcase.gsub(' ', '')
  user_input.downcase == 'quit' ? (exit 0) : (puts user_input == reverse_string(user_input) ? "That IS a palindrome" : "That is NOT a palindrome")
end

#or as an alternate way

require 'colorize'

def get_input
  print "Input a Word --> "
  word = gets.strip
  word == 'quit' ? exit(0) : word.downcase
end

def check_palindrome(word)
  is_palindrome? = word == word.split('').map.with_index(1) { |_, index| word[word.length - index] }.join
  puts is_palindrome? ? "#{word} is a palindrome".colorize(:green) :
                       "#{word} is not a palindrome.".colorize(:red)
   check_palindrome(get_input)
end

puts "I can tell if any word is palindrome. Type 'quit' to exit.".colorize(:blue)
check_palindrome(get_input)
