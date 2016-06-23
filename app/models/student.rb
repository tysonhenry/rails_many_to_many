class Student < ActiveRecord::Base

  has_many :courses, through: :enrollments

  validates :name, presence: true

end
