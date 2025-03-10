require 'csv'
require_relative '../models/employee'

class EmployeeRepository
  def initialize(csv_path)
    @csv_path = csv_path
    @employee = []
    @next_id = 0
    load_csv if File.exist?(@csv_path)
  end

  def find_by_username(username)
    puts "#{@employee} << @employee"
    @employee.find { |employee| employee.username == username }
  end

  private

  def load_csv
    CSV.foreach(@csv_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      @employee << Employee.new(row)
    end
    puts "Loaded #{@employee} employees"
    @next_id = @employee.last.id + 1 unless @employee.empty?
  end
end
