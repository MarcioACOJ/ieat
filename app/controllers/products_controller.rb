class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]
  
  def index
  @products = Product.all
  end
  
  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end
  
  # GET /products/new
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: 'Produto criado' }
      else
        format.html {render :new }
      end
    end
  end

  def update 
    respond_to do |format|
      if @product.update(product_params)
        format.html {redirect_to @product, notice: "Product was successfully update." }
        format.json {render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end  

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  private
  # usado para lista de parameters 
  def set_product
    @product = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :value, :restaurant_id)
  end
end
  

