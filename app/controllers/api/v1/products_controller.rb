class Api::V1::ProductsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_product, only: [:show, :update, :destroy, :buy]

  def index
    @products = policy_scope(Product)
  end


  def show
  end

  def update
    if @product.update(product_params)
      ProductMailer.update_confirmation(@product.user).deliver_now
      render :show
    else
      ProductMailer.error(@product.user).deliver_now
      render_error
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product

    if @product.save
      ProductMailer.create_confirmation(@product.user).deliver_now
      render :show, status: :created
    else
      ProductMailer.error(@product.user).deliver_now
      render_error
    end
  end

  def destroy
    @product.destroy
    ProductMailer.delete_confirmation(@product.user).deliver_now
    head :no_content
  end

  def buy
    Stripe.api_key = ENV['STRIPE_KEY']

    @charge = Stripe::Charge.create({
        amount: @product.price*100,
        currency: 'BRL',
        source: 'tok_visa',
        receipt_email: current_user.email
    })

    render :buy
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
