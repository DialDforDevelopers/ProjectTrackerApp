class Project
	attr_accessor :projectName, :developers
	

	def initialize(projectName)
		@projectName = projectName
		@developers = []
	end
	def addDeveloper(developerName)
		 @developers.push(developerName.name)
	end
	def showDevelopers
		@developers.each do |developer| 
			puts developer
		end
	end

	def info
		puts "Project Name: "+ @projectName + "\n Developers Involved: "
		self.showDevelopers
	end
end

