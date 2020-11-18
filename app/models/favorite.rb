class Favorite < ApplicationRecord
    
    belongs_to :user, dependent: :destroy
    belongs_to :, dependent: :destroy
    
end
