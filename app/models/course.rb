class Course < ActiveRecord::Base

  has_many :students, through: :enrollments
  has_many :enrollments, dependent: :destroy

  def students_not_enrolled

    # self.students is an array of all the students already in this course
    # Student.all is all students
    # the difference (array subtraction) is students NOT already in course
    student_array = Student.all - self.students

    # return an array of this format
    # [ [name, id], [name, id], ...]
    student_array.map {|student| [student.name, student.id]} 

  end

end
