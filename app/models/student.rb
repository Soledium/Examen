class Student < ApplicationRecord
  belongs_to :state
  belongs_to :course
end
