class Treatment < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  
  has_many :treatment_lines, dependent: :destroy
  
end
