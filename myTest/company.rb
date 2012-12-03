class Company
	attr_accessor :company_name, :projects , :developers, :members

	def initialize(company_name)
		@company_name=company_name
		@projects=[]
		@developers=[]
		@members = []
	end

	def addProjects(projName)
		@projects.push(projName)
	end

	def showProjects
		@projects.each do |project| 
			puts project.projectName
		end
	end

	

	def showDeveloper
		@projects.each do |developer|
			 @members = @members + developer.developers
			#developer.developers
		end
		@members.uniq!
		
	end

	def info
		puts "Company Name: "+ @company_name + "\n Company Projects: "
		self.showProjects
		self.showDeveloper		
		puts 'There are currently ' +  @members.length.to_s + ' developers'
		puts "Developer Name"
		puts @members

	end
end