class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def index
    @shops = Shop.all
    @shop = Shop.new
    @user = current_user
  end

  def edit
  end

  def update
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user_id = current_user.id
    @shop.save
    redirect_to shops_path
  end

  def destroy

  end
   def shop_params
    params.require(:shop).permit(:name, :body)
  end
end
