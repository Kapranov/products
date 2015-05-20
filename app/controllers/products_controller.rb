class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products, :only => [:title, :bonus_codes, :status, :service]
  end

  private
  def product_params
    params.require(:product).permit(
      :title,
      :bonus_codes,
      :status,
      :service
    )
  end
end
