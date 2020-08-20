class Shop < ApplicationRecord
	attachment :shop_image, destroy: false
	belongs_to :user
end
