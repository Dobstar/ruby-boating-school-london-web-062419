class Student

	attr_reader :first_name

	@@all = []
	
    def initialize(first_name:)
        @first_name = first_name
	    @@all << self
	end 

	def self.all
	    @@all
    end 
    
    def add_boating_test(name:, status:, student:, instructor:)
        BoatingTest.new(name: name, status: status, student: self, instructor: instructor)
    end 

    def self.find_student(first_name)
        self.all.find{|student| student.first_name == first_name}
    end 

    def grade_percentage
        #find all the tests for this student
        #find all the tests that passed for this 
        #then use all tests for this student / by the tests that they passed.to_f
        #then times by 100 to make into a percentage

         #denominator
        total_tests = BoatingTest.all.select{|test| test.student.first_name == self.first_name}
        num_total_tests = total_tests.count
        #below is num of successful tests(enumerator)
        successful_tests = total_tests.select {|test| test.status == "passed"}
        num_successful_tests = successful_tests.count 

        percentage = (num_successful_tests / num_total_tests.to_f)*100

   
        
 

    end 
end


# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)