class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def index
    @shops = Shop.page(params[:page]).reverse_order
    @user = current_user
  end
  def show
    @shop = Shop.find(params[:id])
    @user = @shop.user
    @users = current_user
    @shop_comment = ShopComment.new
  end

  def edit
     @shop = Shop.find(params[:id])
    if @shop.user == current_user
            render "edit"
    else
       redirect_to shops_path
    end
  end

  def update
     @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to shop_path(@shop)
    else
      render "edit"
    end
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.user_id = current_user.id
    @shop.save
    tags = Vision.get_image_data(@shop.shop_image)
     tags.each do |tag|
       @shop.tags.create(name: tag)
     end
    redirect_to shops_path
  end

  def destroy
    shop = Shop.find(params[:id])
    shop.destroy
    redirect_to shops_path

  end
   def shop_params
    params.require(:shop).permit(:shop_name, :body, :shop_image)
  end
end
