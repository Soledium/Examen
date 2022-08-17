class State < ApplicationRecord
  belongs_to :region
  has_many :students
  
end
