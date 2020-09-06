class AddShopIdToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :shop_id, :integer
  end
end
