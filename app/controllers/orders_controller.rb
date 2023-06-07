class OrdersController < ApplicationController
  def index
    @orders = Order.today
  end
end
