class Treatment < ApplicationRecord
  belongs_to :category

  validates :name, presence: true
  validates :translation, presence: true
  validates :state, presence: true

  has_many :treatment_lines, dependent: :destroy
  
end
