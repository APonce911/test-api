class Api::V1::ProductsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_product, only: [:show, :update]

  def index
    @products = policy_scope(Product)
  end


  def show
  end

  def update
    if @product.update(product_params)
      render :show
    else
      render_error
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      render :show, status: :created
    else
      render_error
    end

  end

  private

  def product_params
    params.require(:product).permit(:description, :price, :quantity)
  end

  def set_product
    @product = Product.find(params[:id])
    authorize @product # For Pundit
  end

  def render_error
    render json: { errors: @product.errors.full_messages },
      status: :unprocessable_entity
  end

end
