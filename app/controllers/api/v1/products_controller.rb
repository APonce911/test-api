class Api::V1::ProductsController < Api::V1::BaseController
  # before_action :set_product, only: [:show]

  def index
    @products = policy_scope(Product)
  end


  def show
    @product = Product.find(params[:id])
    authorize @product # For Pundit
  end

  private

  def set_product
  end
end
