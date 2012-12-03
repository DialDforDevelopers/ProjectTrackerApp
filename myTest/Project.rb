class Project
	attr_accessor :projectName, :developers
	
	def initialize(projectName)
		@projectName = projectName
		@developers = []
	end
	def addDeveloper(developerName)
		if (@developers.size()<=2)
		 	@developers.push(developerName.name)
		else
			puts "The maximum of 3 developers are only allowed in this project: "+@projectName
		end
	end
	def showDevelopers
		@developers.sort!
		@developers.each do |developer| 
			puts developer
		end
	end

	def info
		puts "Project Name: "+ @projectName + "\n Developers Involved: "
		self.showDevelopers
	end
end

