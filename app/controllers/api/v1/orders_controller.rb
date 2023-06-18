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

      def results
        @response = {
          food: Order.today.results_for(:food),
          accompaniment: Order.today.results_for(:accompaniment)
        }

        render json: @response, status: :ok
      end

      def descriptions
        @response = Order.today.descriptions

        render json: @response, status: :ok
      end

      private

      def order_params
        params.require(:order).permit(:food, :accompaniment, :description, :name)
      end
    end
  end
end
