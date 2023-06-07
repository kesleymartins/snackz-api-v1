module Api
  module V1
    class OrdersController < ActionController::API
      def create
        @order = Order.new(order_params)

        if @order.save
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end

      private

      def order_params
        params.require(:order).permit(:food, :accompaniment, :description)
      end
    end
  end
end
