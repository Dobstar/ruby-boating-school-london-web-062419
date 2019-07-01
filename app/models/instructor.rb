class Instructor
	attr_reader :name

	@@all = []
	
    def initialize(name:)
        @name = name 
	    @@all << self
	end 

	def self.all
	    @@all
    end 
    
    def pass_student(first_name, name)
        #need to get both test name and student name to be correct
        #if else statement: passed else create a new test 
        testing = BoatingTest.all.find{|test| test.student.first_name == first_name && test.name == name}
        if testing 
            testing.status == "passed"
        else 
            BoatingTest.new(name: name, status: "passed", student: student, instructor: self)
        end 
    end  

    def fail_student(first_name, name)
        #same as before but just fail.
        testing = BoatingTest.all.find{|test| test.student.first_name == first_name && test.name == name}
        if testing 
            testing.status == "failed"
        else 
            BoatingTest.new(name: name, status: "failed", student: student, instructor: self)
        end 
    end 
end 
