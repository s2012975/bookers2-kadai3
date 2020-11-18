class Book < ApplicationRecord
	
	has_many :favorites, dependent: :destroy
	belongs_to :user, dependent: :destroy
	
	  def favorited_by?(user)
	    favorites.where(user_id: user.id).exists?
	  end
	
	validates :title, presence: true
	validates :body, presence: true, length: {maximum: 200}
	
end
