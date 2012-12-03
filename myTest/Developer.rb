class Developer
	attr_accessor :name, :email_id, :projectInvolved
	def initialize(name, email_id)
		@name = name
		@email_id = email_id
		@projectInvolved = []
	end
	def addInvolvedProjects(projects)
		@projectInvolved.push(projects.projectName)
	end
	def showInvolvedProjects
		@projectInvolved.each do |project|
			puts project
		end
	end         
	def info
		puts "Developer Name: "+ @name +"\n Email ID: " + @email_id
		showInvolvedProjects
	end
end