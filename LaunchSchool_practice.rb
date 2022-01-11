module HornOk
  def horn_ok_please
    puts 'HORN OK PLEASE!!!'
  end
end

class Vehicles
  def self.milage(dis, fuel)
    puts "milage is : #{dis / fuel}"
  end
  @@created = 0
  def self.get_created
    @@created
  end

  attr_accessor :color
  attr_reader :year, :model

  def initialize(yr, clr, mdl)
    @year = yr
    @color = clr
    @model = mdl
    @speed = 0
    @@created += 1
  end

  def speed_up(num)
    @speed += num
    puts "speed up by #{num}"
  end

  def brake(num)
    @speed -= num
    puts "speed down by #{num}"
  end

  def shut_off
    @speed = 0
    puts 'power off'
  end

  def spray_paint(col)
    self.color = col
    puts "new color is #{color}"
  end

  def age
    "age of model #{model} is #{years_old}"
  end

  private

  def years_old
    Time.now.year - year
  end
end

class MyTruck < Vehicles
  include HornOk
  DOORS = 2
end

class MyCar < Vehicles
  DOORS = 4

  def to_s
    "This car was made in year: #{year} it is #{color} in color and model is #{@model}"
  end
end

car = MyCar.new(1990, 'red', 'ferrari')
truck = MyTruck.new(2000, 'blue', 'volvo')

class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student2)
    grade > student2.grade ? 's1 is better' : 's2 is better'
  end

  protected # had to change it to protected frm private

  attr_reader :grade
end

a = Student.new('shrey', 90)
b = Student.new('bob', 88)

p b.better_grade_than?(a)
