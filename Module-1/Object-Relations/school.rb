class School
  @@all = []
  attr_reader :name, :location, :students
  def initialize(name, location)
    @name = name
    @location = location
    @students = []
    @@all << self
  end
  def self.all
    @@all
  end
  def enroll_student student
    @students << student
  end

end

class Student
  attr_accessor :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  def school
    School.all.each do |school|
      if school.students.find { |student| self == student}
        return school
      end
    end
  end
end
