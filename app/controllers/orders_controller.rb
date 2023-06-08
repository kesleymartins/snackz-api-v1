class OrdersController < ApplicationController
  before_action :set_order, only: %i[ destroy ]

  def index
    @orders = Order.today
  end

  def destroy
    @order.destroy
    redirect_to root_path
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
