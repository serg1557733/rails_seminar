class OrderRepository
  def initialize(csv_path)
    @csv_path = csv_path
    @orders = []
    load_orders
  end


  def all
    @orders.all
  end


  def load_orders
    CSV.foreach(@csv_path, headers: true) do |row|
      @orders << Order.new(row[])
    end
  end
end