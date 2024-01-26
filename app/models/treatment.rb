class Treatment < ApplicationRecord
  belongs_to :category

  has_many :treatment_lines, dependent: :destroy
  
end
