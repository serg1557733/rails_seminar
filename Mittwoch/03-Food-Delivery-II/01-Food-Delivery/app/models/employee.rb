class Employee
  attr_accessor :id
  attr_reader :username, :password, :role

  def initialize(attr = {})
    @id = 0
    @role = attr[:role]
    @username = attr[:username]
    @password = attr[:password]
  end

  def manager?
   @role == "manager"
  end

  def rider?
    @role == "rider"
  end
end