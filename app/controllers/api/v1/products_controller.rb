class Api::V1::ProductsController < Api::V1::BaseController
  before_action :set_product, only: [:show]

  def index
    @products = policy_scope(Product)
  end


  def show
  end

  private

  def set_product
    @product = Product.find(params[:id])
    authorize @product  # For Pundit
  end
end
