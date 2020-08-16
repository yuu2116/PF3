class ShopsController < ApplicationController
  def new

  end

  def index
  end

  def edit
  end

  def update
  end

  def create
    shop = Shop.new(shop_params)
    shop.save
    redirect_to shops_index_path
  end

  def destroy
  end
   def list_params
    params.require(:shop).permit(:name, :body)
  end
end
