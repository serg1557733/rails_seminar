class OrdersController
  def initialize(orders_repository)
    @orders_repository = orders_repository
  end

  def list_my_orders
    @orders_repository
  end

end