require "faker"

module Test

  def result
    average = @nota1 + @nota2 / 2
    average >= 4 ? 'Approved' : 'Reprobated'
  end

end

module Attendance

  def student_quantity
   quantity
  end

end

class Student
  include Test
  include Attendance
  attr_accessor :nombre, :nota1, :nota2
  @@quantity = 0

  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity += 1
  end

  def quantity
    @@quantity
  end
end


def ten_students
  r = Random.new
  10.times do
    student = Student.new(Faker::Zelda.character, r.rand(1..7), r.rand(1..7))
    puts "name: #{student.nombre}  result: #{student.result}"
  end
end

ten_students
Student.student_quantity
Student.new('Daniel', 7, 7)
Student.student_quantity
