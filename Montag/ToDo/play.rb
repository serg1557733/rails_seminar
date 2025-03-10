require_relative 'engine'

user_input = ""
load_csv

until user_input == 'quit' || user_input == "x"
  puts "You can | list  | add | delete | mark | quit"
  puts "What do you want to do?"
  user_input = gets.chomp.downcase
  user_events(user_input)
end

