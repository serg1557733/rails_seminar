class SessionsView
  def display(sessions)
    sessions.each_with_index do |user, index|
      puts "#{index + 1}. #{user.name} : #{user.role}"
    end
  end

  def ask_for(input)
    print "Please enter the #{input}: "
    gets.chomp.to_s
  end

  def print_wrong_credentials
    puts "Wrong credentials. Please try again."
  end
end