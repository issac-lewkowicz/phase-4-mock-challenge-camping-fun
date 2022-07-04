class Camper < ApplicationRecord
  
  has_many :signups
  has_many :activities, through: :signups

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true}, inclusion: 8..18 
end
