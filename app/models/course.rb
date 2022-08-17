class Course < ApplicationRecord
  belongs_to :training_plan
  belongs_to :region
  
  has_many :students

end
