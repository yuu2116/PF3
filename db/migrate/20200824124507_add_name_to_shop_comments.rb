class AddNameToShopComments < ActiveRecord::Migration[5.2]
  def change
    add_column :shop_comments, :comment, :text
  end
end
