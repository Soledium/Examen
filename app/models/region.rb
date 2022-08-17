class Region < ApplicationRecord
    has_many :courses
    has_many :students

end
