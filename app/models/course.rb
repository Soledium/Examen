class Course < ApplicationRecord
  belongs_to :training_plan
  belongs_to :state
end
