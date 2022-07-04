class Signup < ApplicationRecord
  belongs_to :activity
  belongs_to :camper

  validates :time, presence: true, numericality: { only_integer: true}, inclusion: 0..23 
end
