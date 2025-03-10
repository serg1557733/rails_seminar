require 'csv'

TASKS = []

def load_csv
  CSV.foreach("data.csv") do |row|
    TASKS << [{todo_name: row[0], difficult: row[1].to_i, done: row[2] == 'true'}]
  end
  puts TASKS
end

def save_csv
  file_path = File.join(__dir__, "data.csv")
  CSV.open(file_path, "wb") do |csv|
    TASKS.each do |task|
      csv << [task[:todo_name], task[:difficult], task[:done] ]
    end
  end
end

def user_events(event)
  case event
  when "add"
     puts "Enter your ToDo:"
     todo_name = gets.chomp
     puts "Enter difficulty level (number):"
     difficult = gets.chomp.to_i
     puts "Done with the task, 'yes' or 'no'?"
     done = gets.chomp.downcase == 'yes' || false
     task = {todo_name: todo_name, difficult: difficult.to_i, done: done}
     TASKS << task
     save_csv
     puts "Event added.."
  when "list"
    puts "Listing all events"
    if TASKS.length == 0
     puts "No ToDos cool!"
   else
     puts "Else"
   end
  when "delete"
    puts "What you want to delete (provide the index):"
    index_todo = gets.chomp.strip.to_i
    puts ">>>>>>>> Deleting: #{TASKS[index_todo]}"
    TASKS.delete(index_todo)
    puts ">>>>>>>> Deleting: #{TASKS[index_todo]}"
    puts TASKS
    save_csv
    puts "Event deleted"
  when "quit"
    puts "Quitting the application"
  when "mark"
    puts "What you want to delete (provide the index):"
    index_todo = puts.chomp.to_i
    puts "Event marked as completed"
  else
    puts "Unknown event"
  end
end

def write_todo(todo, file_path)
  CSV.open(file_path, "a") do |csv|
    csv << [todo]
  end
end