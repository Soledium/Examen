class Student < ApplicationRecord
  belongs_to :region
  belongs_to :course

end
