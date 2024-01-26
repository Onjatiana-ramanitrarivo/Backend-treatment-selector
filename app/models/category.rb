class Category < ApplicationRecord
    validates :title, presence: true, uniqueness: true    

    has_many :treatments, dependent: :destroy
    
end
