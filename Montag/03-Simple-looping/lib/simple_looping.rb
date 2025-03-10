def sum_with_for(min, max)
  return -1 if min > max
  sum = 0
  for i in min..max
    sum += i
  end
  sum
end

def sum_with_while(min, max)
  return -1 if min > max

  sum = 0
  i = min

  while i <= max
    sum += i
    i += 1
  end

  sum
end

 cities = ["Berlin", "Paris", "London"]

cities.each do |city|
  puts city
end


team_members = ["Alice", "Bob", "Charlie"]

team_members.select do |member|
  p
end



#
# for i in 0..cities.count
#   city = cities[i]
#   puts city
# end
#
# for city in cities
#   puts city
# end
#
# user_input = ""
#
# until user_input == "yes"
#   puts "is my dog back?"
#   user_input = gets.chomp
# end