# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

# returns the grade of a student, given that student's name
def get_grade(school, name)
	school[:students].select{|student| student[:name] == name}[0][:grade]
end

# udpates an instructor's subject given the instructor and the new subject
def update_subject(school, name, subject)
	instructor = school[:instructors].select{|instructor| instructor[:name] == name}[0]
	instructor[:subject] = subject
end

# adds a new student to the schools student array
def add_new_student(school, name)
	school[:students] << {:name => name}
end

# adds a new key at the top level of the school hash, given a key and a value
def add_new_key(school, key, value)
	school[key] = value
end