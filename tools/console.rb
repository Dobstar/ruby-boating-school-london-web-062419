require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kelly = Student.new(first_name: "Kelly")
ted = Student.new(first_name: "Ted")

mani = Instructor.new(name: "Mani")
sergio = Instructor.new(name: "Sergio")

test1 = BoatingTest.new(name: "Test", status: "pending?",student: kelly, instructor: mani)
test2 = BoatingTest.new(name: "Test2", status: "pending?",student: ted, instructor: sergio)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

