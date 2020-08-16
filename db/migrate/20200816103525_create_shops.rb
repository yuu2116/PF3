class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.text :shop_name
      t.string :shop_image_id
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
