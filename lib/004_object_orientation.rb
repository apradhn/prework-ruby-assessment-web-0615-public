class School
	@@schools = []

	def initialize(name, location, ranking)
		@name = name
		@location = location
		@ranking = ranking
		@@schools << self
	end

	# keeps track of all instances of school created
	def School.all
		@@schools
	end

	# can count how many schools have been created
	def School.count
		@@schools.size
	end

	# can reset the schools that have been created
	def School.reset_all
		@@schools = []
	end

	# initializes with a name
	def name 
		@name
	end

	# initializes with a location
	def location
		@location
	end

	# initializes with a ranking
	def ranking
		@ranking
	end

	# has an array of students
	def students
		@students ||= []
	end

	# has an array of instructors
	def instructors
		@instructors ||= []
	end

	# adds a student, given a name, grade, and semester
	def add_student(name, grade, semester)
		self.students << {:name => name, :grade => grade, :semester => semester}
	end

	# removes a student, given a name
	def remove_student(name)
		student = self.students.select {|student| student[:name] == name}
		self.students.delete(student)
	end
end