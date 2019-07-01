class BoatingTest

	attr_accessor :name, :status, :student, :instructor

	@@all = []
	
    def initialize(name:, status:,student:, instructor:)
        @name = name
        @status = status
        @student = student
        @instructor = instructor
	    @@all << self
	end 

	def self.all
	    @@all
	end 

end
