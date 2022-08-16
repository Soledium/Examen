class TutorialModuleCourse < ApplicationRecord
  belongs_to :moduule
  belongs_to :tutor
  belongs_to :course
end
