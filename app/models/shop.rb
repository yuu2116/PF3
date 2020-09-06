class Shop < ApplicationRecord
	attachment :shop_image, destroy: false
	has_many :favorites, dependent: :destroy
	has_many :shop_comments, dependent: :destroy
	has_many :tags, dependent: :destroy
	belongs_to :user
	def favorited_by?(user)
    	favorites.where(user_id: user.id).exists?
  	end
  validates :shop_name, presence: true
  validates :body, presence: true, length: {maximum: 200}
end

