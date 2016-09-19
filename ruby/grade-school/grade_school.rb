module BookKeeping
  VERSION = 3
end

class School
  def initialize
    @students = []
    7.times { @students.push [] }
  end
  def add(person, grade)
    @students[grade - 1].push(person)
  end
  def students(grade)
    @students[grade - 1].sort
  end
  def students_by_grade
    grades = []
    @students.count.times do |i|
      g = i + 1
      grades.push(grade: g, students: students(g)) if @students[i].any?
    end
    grades
  end
end
